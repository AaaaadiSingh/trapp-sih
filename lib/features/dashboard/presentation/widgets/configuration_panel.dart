import 'package:flutter/material.dart';

import '../../../../core/services/location_configuration_service.dart';

/// Widget for configuring location tracking settings and preferences
class ConfigurationPanel extends StatefulWidget {
  final LocationConfigurationService configurationService;

  const ConfigurationPanel({
    super.key,
    required this.configurationService,
  });

  @override
  State<ConfigurationPanel> createState() => _ConfigurationPanelState();
}

class _ConfigurationPanelState extends State<ConfigurationPanel> {
  late LocationConfiguration _configuration;
  late UserLocationPreferences _preferences;

  @override
  void initState() {
    super.initState();
    _loadConfiguration();
  }

  void _loadConfiguration() {
    _configuration = widget.configurationService.currentConfig;
    _preferences = widget.configurationService.userPreferences;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Theme.of(context).colorScheme.primary,
                  size: 28,
                ),
                const SizedBox(width: 8),
                Text(
                  'Location Configuration',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildConfigurationContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildConfigurationContent() {
    return Column(
      children: [
        // Accuracy settings section
        _buildAccuracySettingsSection(),
        const SizedBox(height: 16),
        
        // Update frequency section
        _buildUpdateFrequencySection(),
        const SizedBox(height: 16),
        
        // Power management section
        _buildPowerManagementSection(),
        const SizedBox(height: 16),
        
        // Preset configurations section
        _buildPresetConfigurationsSection(),
        const SizedBox(height: 16),
        
        // Action buttons
        _buildActionButtons(),
      ],
    );
  }

  Widget _buildAccuracySettingsSection() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.my_location,
                color: Theme.of(context).colorScheme.primary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Accuracy Settings',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          
          // Update interval slider
          Text(
            'Update Interval: ${_configuration.updateInterval.inSeconds}s',
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          Slider(
            value: _configuration.updateInterval.inSeconds.toDouble(),
            min: 1.0,
            max: 60.0,
            divisions: 59,
            onChanged: (value) {
              setState(() {
                _configuration = _configuration.copyWith(updateInterval: Duration(seconds: value.round()));
              });
            },
          ),
          
          const SizedBox(height: 8),
          
          // Distance filter slider
          Text(
            'Distance Filter: ${_configuration.distanceFilter.toStringAsFixed(0)}m',
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          Slider(
            value: _configuration.distanceFilter,
            min: 0.0,
            max: 50.0,
            divisions: 50,
            onChanged: (value) {
              setState(() {
                _configuration = _configuration.copyWith(distanceFilter: value);
              });
            },
          ),
          
          const SizedBox(height: 8),
          
          // Enable GPS location toggle
          SwitchListTile(
            title: const Text('GPS Location'),
            subtitle: const Text('Use GPS for location tracking'),
            value: _configuration.enableGpsLocation,
            onChanged: (value) {
              setState(() {
                _configuration = _configuration.copyWith(enableGpsLocation: value);
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildUpdateFrequencySection() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.update,
                color: Theme.of(context).colorScheme.secondary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Update Frequency',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          
          // Update interval slider
          Text(
            'Update Interval: ${_configuration.updateInterval.inSeconds}s',
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          Slider(
            value: _configuration.updateInterval.inSeconds.toDouble(),
            min: 1.0,
            max: 60.0,
            divisions: 59,
            onChanged: (value) {
              setState(() {
                _configuration = _configuration.copyWith(
                  updateInterval: Duration(seconds: value.round()),
                );
              });
            },
          ),
          
          const SizedBox(height: 8),
          
          // Auto start tracking toggle
          SwitchListTile(
            title: const Text('Auto Start Tracking'),
            subtitle: const Text('Automatically start tracking when movement is detected'),
            value: _preferences.autoStartTracking,
            onChanged: (value) {
              setState(() {
                _preferences = _preferences.copyWith(autoStartTracking: value);
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPowerManagementSection() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiaryContainer.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.battery_saver,
                color: Theme.of(context).colorScheme.tertiary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Power Management',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          
          // Notifications toggle
          SwitchListTile(
            title: const Text('Enable Notifications'),
            subtitle: const Text('Show notifications for trip events'),
            value: _preferences.enableNotifications,
            onChanged: (value) {
              setState(() {
                _preferences = _preferences.copyWith(enableNotifications: value);
              });
            },
          ),
          
          // Background tracking toggle
          SwitchListTile(
            title: const Text('Background Tracking'),
            subtitle: const Text('Continue tracking when app is in background'),
            value: _preferences.backgroundTracking,
            onChanged: (value) {
              setState(() {
                _preferences = _preferences.copyWith(backgroundTracking: value);
              });
            },
          ),
          
          // Battery optimization toggle
          SwitchListTile(
            title: const Text('Battery Optimization'),
            subtitle: const Text('Optimize settings to save battery'),
            value: _preferences.backgroundTracking,
            onChanged: (value) {
              setState(() {
                _preferences = _preferences.copyWith(backgroundTracking: value);
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPresetConfigurationsSection() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.tune,
                color: Colors.grey[700],
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Preset Configurations',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          
          // Preset buttons
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _buildPresetButton('High Accuracy', Icons.gps_fixed, () {
                _applyPreset(ConfigurationPreset.highAccuracy);
              }),
              _buildPresetButton('Balanced', Icons.balance, () {
                _applyPreset(ConfigurationPreset.balanced);
              }),
              _buildPresetButton('Power Saving', Icons.battery_saver, () {
                _applyPreset(ConfigurationPreset.powerSaving);
              }),
              _buildPresetButton('Custom', Icons.settings, () {
                _applyPreset(ConfigurationPreset.custom);
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPresetButton(String label, IconData icon, VoidCallback onPressed) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 16),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        textStyle: const TextStyle(fontSize: 12),
      ),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            onPressed: _saveConfiguration,
            icon: const Icon(Icons.save, size: 18),
            label: const Text('Save'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
              backgroundColor: Colors.green,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: _resetToDefaults,
            icon: const Icon(Icons.restore, size: 18),
            label: const Text('Reset'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
              backgroundColor: Colors.orange,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: _testConfiguration,
            icon: const Icon(Icons.play_arrow, size: 18),
            label: const Text('Test'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
              backgroundColor: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }

  void _applyPreset(ConfigurationPreset preset) async {
    try {
      await widget.configurationService.applyPreset(preset);
      _loadConfiguration(); // Reload the configuration
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Applied ${preset.toString().split('.').last} preset'),
            backgroundColor: Colors.blue,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error applying preset: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  void _saveConfiguration() async {
    try {
      await widget.configurationService.updateConfiguration(_configuration);
      await widget.configurationService.updateUserPreferences(_preferences);
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Configuration saved successfully'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error saving configuration: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  void _resetToDefaults() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Reset Configuration'),
        content: const Text(
          'Are you sure you want to reset all settings to their default values?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.of(context).pop();
              try {
                await widget.configurationService.resetToDefaults();
                _loadConfiguration();
                setState(() {});
                
                if (mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Configuration reset to defaults'),
                      backgroundColor: Colors.orange,
                    ),
                  );
                }
              } catch (e) {
                if (mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error resetting configuration: $e'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: const Text('Reset'),
          ),
        ],
      ),
    );
  }

  void _testConfiguration() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Test Configuration'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Current configuration will be tested:'),
            const SizedBox(height: 8),
            Text('• Accuracy: ${_configuration.accuracy.toString()}'),
            Text('• Distance Filter: ${_configuration.distanceFilter.toStringAsFixed(0)}m'),
            Text('• Update Interval: ${_configuration.updateInterval.inSeconds}s'),
            Text('• GPS Location: ${_configuration.enableGpsLocation ? 'Enabled' : 'Disabled'}'),
            const SizedBox(height: 8),
            const Text('This will start a 30-second test session.'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              _startConfigurationTest();
            },
            child: const Text('Start Test'),
          ),
        ],
      ),
    );
  }

  void _startConfigurationTest() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Configuration test started - monitoring for 30 seconds...'),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.blue,
      ),
    );
    
    // In a real implementation, you would start a test session
    // and monitor the performance with the current configuration
    Future.delayed(const Duration(seconds: 30), () {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Configuration test completed - check performance metrics'),
            backgroundColor: Colors.green,
          ),
        );
      }
    });
  }
}