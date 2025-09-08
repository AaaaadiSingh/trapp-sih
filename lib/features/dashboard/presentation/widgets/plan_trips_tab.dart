import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../domain/entities/trip_plan.dart';
import '../bloc/trip_plan_bloc.dart';

class PlanTripsTab extends StatelessWidget {
  const PlanTripsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TripPlanBloc, TripPlanState>(
      listener: (context, state) {
        if (state.successMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.successMessage!),
              backgroundColor: Colors.green,
            ),
          );
        }

        if (state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error!),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        return ResponsiveBreakpoints.of(context).isMobile
            ? _buildMobileLayout(context, state)
            : _buildTabletLayout(context, state);
      },
    );
  }

  Widget _buildMobileLayout(BuildContext context, TripPlanState state) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPlanTripSection(context),
          SizedBox(height: 24.h),
          _buildPlannedTripsSection(context, state),
        ],
      ),
    );
  }

  Widget _buildTabletLayout(BuildContext context, TripPlanState state) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(24.w),
            child: _buildPlanTripSection(context),
          ),
        ),
        Container(
          width: 1,
          height: double.infinity,
          color: AppColors.textSecondary.withValues(alpha: 0.1),
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(24.w),
            child: _buildPlannedTripsSection(context, state),
          ),
        ),
      ],
    );
  }

  Widget _buildPlanTripSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Plan a New Trip',
          style: AppTextStyles.titleLarge.copyWith(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.h),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: const TripPlanForm(),
          ),
        ),
      ],
    );
  }

  Widget _buildPlannedTripsSection(BuildContext context, TripPlanState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Planned Trips',
          style: AppTextStyles.titleLarge.copyWith(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.h),
        if (state.tripPlans?.isEmpty ?? true)
          _buildEmptyPlannedTrips(context)
        else
          ...state.tripPlans!.map((trip) => _buildTripPlanCard(context, trip)),
      ],
    );
  }

  Widget _buildEmptyPlannedTrips(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.map_outlined,
            size: 64.sp,
            color: AppColors.textSecondary.withValues(alpha: 0.5),
          ),
          SizedBox(height: 16.h),
          Text(
            'No planned trips',
            style: AppTextStyles.titleMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Plan your first trip using the form',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textSecondary.withValues(alpha: 0.7),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildTripPlanCard(BuildContext context, TripPlan trip) {
    final dateFormat = DateFormat('MMM d, yyyy');
    final timeFormat = DateFormat('h:mm a');
    
    return Card(
      elevation: 2,
      margin: EdgeInsets.only(bottom: 16.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dateFormat.format(trip.plannedDate),
                        style: AppTextStyles.titleMedium.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        timeFormat.format(trip.plannedTime),
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                _buildTransportModeIcon(trip.transportMode),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: AppColors.primary,
                  size: 20,
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Text(
                    trip.origin,
                    style: AppTextStyles.bodyLarge.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Container(
                width: 1,
                height: 20.h,
                color: AppColors.textSecondary.withValues(alpha: 0.3),
              ),
            ),
            SizedBox(height: 4.h),
            Row(
              children: [
                const Icon(
                  Icons.flag,
                  color: AppColors.secondary,
                  size: 20,
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Text(
                    trip.destination,
                    style: AppTextStyles.bodyLarge.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            if (trip.notes != null && trip.notes!.isNotEmpty) ...[  
              SizedBox(height: 16.h),
              Text(
                'Notes:',
                style: AppTextStyles.bodyMedium.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                trip.notes!,
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.textSecondary,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton.icon(
                  onPressed: () {
                    // Edit trip plan
                  },
                  icon: const Icon(Icons.edit, size: 16),
                  label: const Text('Edit'),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                SizedBox(width: 8.w),
                ElevatedButton.icon(
                  onPressed: () {
                    // Start navigation
                  },
                  icon: const Icon(Icons.navigation, size: 16),
                  label: const Text('Start'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransportModeIcon(TransportMode mode) {
    IconData iconData;
    Color iconColor;

    switch (mode) {
      case TransportMode.car:
        iconData = Icons.directions_car;
        iconColor = Colors.blue;
        break;
      case TransportMode.publicTransport:
        iconData = Icons.directions_bus;
        iconColor = Colors.green;
        break;
      case TransportMode.bicycle:
        iconData = Icons.directions_bike;
        iconColor = Colors.red;
        break;
      case TransportMode.walking:
        iconData = Icons.directions_walk;
        iconColor = Colors.purple;
        break;
    }

    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: iconColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        iconData,
        color: iconColor,
        size: 24.sp,
      ),
    );
  }
}

class TripPlanForm extends StatefulWidget {
  const TripPlanForm({super.key});

  @override
  State<TripPlanForm> createState() => _TripPlanFormState();
}

class _TripPlanFormState extends State<TripPlanForm> {
  final _formKey = GlobalKey<FormState>();
  final _originController = TextEditingController();
  final _destinationController = TextEditingController();
  final _notesController = TextEditingController();
  
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();
  TransportMode _selectedTransportMode = TransportMode.car;

  @override
  void dispose() {
    _originController.dispose();
    _destinationController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _originController,
            decoration: InputDecoration(
              labelText: 'Origin',
              prefixIcon: const Icon(Icons.location_on, color: AppColors.primary),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter origin';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          TextFormField(
            controller: _destinationController,
            decoration: InputDecoration(
              labelText: 'Destination',
              prefixIcon: const Icon(Icons.flag, color: AppColors.secondary),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter destination';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: _selectDate,
                  child: InputDecorator(
                    decoration: InputDecoration(
                      labelText: 'Date',
                      prefixIcon: const Icon(Icons.calendar_today, size: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      DateFormat('MMM d, yyyy').format(_selectedDate),
                      style: AppTextStyles.bodyMedium,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: InkWell(
                  onTap: _selectTime,
                  child: InputDecorator(
                    decoration: InputDecoration(
                      labelText: 'Time',
                      prefixIcon: const Icon(Icons.access_time, size: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      _selectedTime.format(context),
                      style: AppTextStyles.bodyMedium,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            'Transport Mode',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          SizedBox(height: 8.h),
          _buildTransportModeSelector(),
          SizedBox(height: 16.h),
          TextFormField(
            controller: _notesController,
            decoration: InputDecoration(
              labelText: 'Notes (Optional)',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            maxLines: 3,
          ),
          SizedBox(height: 24.h),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _submitForm,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12.h),
              ),
              child: Text(
                'Plan Trip',
                style: AppTextStyles.titleMedium.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransportModeSelector() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: TransportMode.values.map((mode) {
          final isSelected = mode == _selectedTransportMode;
          IconData iconData;
          String label;

          switch (mode) {
            case TransportMode.car:
              iconData = Icons.directions_car;
              label = 'Car';
              break;
            case TransportMode.publicTransport:
              iconData = Icons.directions_bus;
              label = 'Public Transport';
              break;
            case TransportMode.bicycle:
              iconData = Icons.directions_bike;
              label = 'Bicycle';
              break;
            case TransportMode.walking:
              iconData = Icons.directions_walk;
              label = 'Walking';
              break;
          }

          return Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: InkWell(
              onTap: () {
                setState(() {
                  _selectedTransportMode = mode;
                });
              },
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.primary
                      : AppColors.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      iconData,
                      color: isSelected ? Colors.white : AppColors.primary,
                      size: 20.sp,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      label,
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: isSelected ? Colors.white : AppColors.textPrimary,
                        fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Create a DateTime that combines the selected date and time
      final DateTime plannedDateTime = DateTime(
        _selectedDate.year,
        _selectedDate.month,
        _selectedDate.day,
        _selectedTime.hour,
        _selectedTime.minute,
      );

      // Create the trip plan
      context.read<TripPlanBloc>().add(
            TripPlanEvent.createTripPlan(
              origin: _originController.text,
              destination: _destinationController.text,
              plannedDate: _selectedDate,
              plannedTime: plannedDateTime,
              transportMode: _selectedTransportMode,
              notes: _notesController.text.isEmpty ? null : _notesController.text,
            ),
          );

      // Reset the form
      _formKey.currentState!.reset();
      _originController.clear();
      _destinationController.clear();
      _notesController.clear();
      setState(() {
        _selectedDate = DateTime.now();
        _selectedTime = TimeOfDay.now();
        _selectedTransportMode = TransportMode.car;
      });
    }
  }
}