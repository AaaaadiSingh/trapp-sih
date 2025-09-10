import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

import '../../../../core/services/trip_detection_service.dart';

class TripMapScreen extends StatefulWidget {
  final DetectedTrip? trip;
  final Position? currentLocation;
  
  const TripMapScreen({
    super.key,
    this.trip,
    this.currentLocation,
  });

  @override
  State<TripMapScreen> createState() => _TripMapScreenState();
}

class _TripMapScreenState extends State<TripMapScreen> {
  final MapController _mapController = MapController();
  bool _isFollowingUser = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Trip Map'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              _isFollowingUser ? Icons.my_location : Icons.location_searching,
              color: _isFollowingUser ? Colors.white : Colors.white70,
            ),
            onPressed: () {
              setState(() {
                _isFollowingUser = !_isFollowingUser;
              });
              if (_isFollowingUser) {
                _centerOnCurrentLocation();
              }
            },
            tooltip: _isFollowingUser ? 'Stop following' : 'Follow location',
          ),
        ],
      ),
      body: Builder(
        builder: (context) {
          final currentTrip = widget.trip;
          
          if (currentTrip == null) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_off,
                    size: 64,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'No active trip',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            );
          }
          
          // Auto-center on current location if following
          if (_isFollowingUser && currentTrip.route.isNotEmpty) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _centerOnCurrentLocation();
            });
          }
          
          return Stack(
            children: [
              FlutterMap(
                mapController: _mapController,
                options: MapOptions(
                  initialCenter: _getInitialCenter(currentTrip),
                  initialZoom: 16.0,
                  minZoom: 3.0,
                  maxZoom: 18.0,
                  onTap: (_, __) {
                    // Stop following when user interacts with map
                    if (_isFollowingUser) {
                      setState(() {
                        _isFollowingUser = false;
                      });
                    }
                  },
                ),
                children: [
                  // OpenStreetMap tiles (free)
                  TileLayer(
                    urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.example.sih',
                    maxZoom: 18,
                  ),
                  
                  // Route polyline
                  if (currentTrip.route.length > 1)
                    PolylineLayer(
                      polylines: [
                        Polyline(
                          points: currentTrip.route
                              .map((pos) => LatLng(pos.latitude, pos.longitude))
                              .toList(),
                          strokeWidth: 4.0,
                          color: _getRouteColor(currentTrip.state),
                          borderStrokeWidth: 2.0,
                          borderColor: Colors.white,
                        ),
                      ],
                    ),
                  
                  // Markers
                  MarkerLayer(
                    markers: _buildMarkers(currentTrip),
                  ),
                ],
              ),
              
              // Trip info overlay
              Positioned(
                top: 16.h,
                left: 16.w,
                right: 16.w,
                child: _buildTripInfoCard(currentTrip),
              ),
            ],
          );
        },
      ),
    );
  }
  
  LatLng _getInitialCenter(DetectedTrip trip) {
    if (trip.route.isNotEmpty) {
      final lastPosition = trip.route.last;
      return LatLng(lastPosition.latitude, lastPosition.longitude);
    }
    return LatLng(trip.startPosition.latitude, trip.startPosition.longitude);
  }
  
  Color _getRouteColor(TripState state) {
    switch (state) {
      case TripState.moving:
        return Colors.blue;
      case TripState.stopped:
        return Colors.orange;
      case TripState.idle:
        return Colors.grey;
    }
  }
  
  List<Marker> _buildMarkers(DetectedTrip trip) {
    final markers = <Marker>[];
    
    // Start marker
    markers.add(
      Marker(
        point: LatLng(trip.startPosition.latitude, trip.startPosition.longitude),
        width: 40.w,
        height: 40.h,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
    
    // Current position marker (if trip is active)
    if (trip.route.isNotEmpty && trip.state != TripState.idle) {
      final currentPos = trip.route.last;
      markers.add(
        Marker(
          point: LatLng(currentPos.latitude, currentPos.longitude),
          width: 40.w,
          height: 40.h,
          child: Container(
            decoration: BoxDecoration(
              color: trip.state == TripState.moving ? Colors.blue : Colors.orange,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Icon(
              trip.state == TripState.moving ? Icons.navigation : Icons.pause,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      );
    }
    
    // End marker (if trip is completed)
    if (trip.endPosition != null) {
      markers.add(
        Marker(
          point: LatLng(trip.endPosition!.latitude, trip.endPosition!.longitude),
          width: 40.w,
          height: 40.h,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.stop,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      );
    }
    
    return markers;
  }
  
  Widget _buildTripInfoCard(DetectedTrip trip) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(
                  Icons.trip_origin,
                  color: _getRouteColor(trip.state),
                  size: 20.sp,
                ),
                SizedBox(width: 8.w),
                Text(
                  _getTripStateText(trip.state),
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: _getRouteColor(trip.state),
                  ),
                ),
                const Spacer(),
                Text(
                  _formatDuration(trip.duration),
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Expanded(
                  child: _buildInfoItem(
                    'Distance',
                    '${(trip.totalDistance / 1000).toStringAsFixed(2)} km',
                    Icons.straighten,
                  ),
                ),
                Expanded(
                  child: _buildInfoItem(
                    'Avg Speed',
                    '${(trip.averageSpeed * 3.6).toStringAsFixed(1)} km/h',
                    Icons.speed,
                  ),
                ),
                Expanded(
                  child: _buildInfoItem(
                    'Max Speed',
                    '${(trip.maxSpeed * 3.6).toStringAsFixed(1)} km/h',
                    Icons.trending_up,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildInfoItem(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(
          icon,
          size: 16.sp,
          color: Colors.grey[600],
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 10.sp,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
  
  String _getTripStateText(TripState state) {
    switch (state) {
      case TripState.moving:
        return 'Moving';
      case TripState.stopped:
        return 'Stopped';
      case TripState.idle:
        return 'Completed';
    }
  }
  
  String _formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);
    
    if (hours > 0) {
      return '${hours}h ${minutes}m';
    } else if (minutes > 0) {
      return '${minutes}m ${seconds}s';
    } else {
      return '${seconds}s';
    }
  }
  
  void _centerOnCurrentLocation() {
    final currentTrip = widget.trip;
    
    if (currentTrip != null && currentTrip.route.isNotEmpty) {
      final lastPosition = currentTrip.route.last;
      _mapController.move(
        LatLng(lastPosition.latitude, lastPosition.longitude),
        16.0,
      );
    } else if (widget.currentLocation != null) {
      _mapController.move(
        LatLng(widget.currentLocation!.latitude, widget.currentLocation!.longitude),
        16.0,
      );
    }
  }
}