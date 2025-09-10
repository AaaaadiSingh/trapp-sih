# How to Test Your Geolocation Tracking System

## Quick Start Guide

### 1. Access the Debug Screen
1. Run your Flutter app: `flutter run`
2. Navigate to the Dashboard
3. Tap the **🐛 Debug** button in the top-right corner of the app bar
4. You'll see the **Geolocation Debug** screen with real-time service monitoring

### 2. Test Each Service Step-by-Step

#### **Step 1: Test Location Permissions**
- Tap **"Test Permissions"** button
- Check the debug logs for:
  - ✅ "Location permissions granted"
  - ✅ "Location service enabled: true"
- **Status Card** should show green indicator

#### **Step 2: Start Location Tracking**
- Tap **"Start Location"** button
- Watch for:
  - ✅ "Location tracking started successfully"
  - ✅ Real-time coordinates appearing in logs
  - ✅ Location Service status card turns **green** with live coordinates
  - ✅ Accuracy readings (should be ±10-50 meters typically)

#### **Step 3: Start Trip Detection**
- Tap **"Start Trip Detection"** button
- Verify:
  - ✅ "Trip detection started successfully"
  - ✅ Trip Detection status card turns **green**
  - ✅ Trip Counter shows current state and detection status

#### **Step 4: Test Notifications**
- Tap **"Test Notification"** button
- Check:
  - ✅ "Test notification sent successfully" in logs
  - ✅ Notification appears on your device
  - ✅ Notification Service status shows **"Ready"**

## Real Movement Testing

### **Simulate a Trip**
1. **Start both Location and Trip Detection services**
2. **Move around** (walk/drive for at least 10+ meters)
3. **Watch the logs** for:
   - Location updates with changing coordinates
   - Trip events: "Trip Event: tripStarted"
   - Trip metadata showing trip number and label

4. **Stop moving** and wait 10+ minutes
5. **Look for trip completion**:
   - "Trip Event: tripCompleted"
   - Trip distance and duration in logs
   - Automatic notification about trip completion
   - Trip counter increment

### **Battery Optimization Testing**
1. Leave the app running for 30+ minutes without movement
2. Check logs for reduced location update frequency
3. Verify battery usage remains reasonable

## Debug Screen Features

### **Status Cards**
- 🟢 **Green**: Service active and working
- 🟠 **Orange**: Service initialized but not active
- 🔴 **Red**: Service failed or error
- ⚪ **Grey**: Service not started

### **Real-time Information**
- **Location Service**: Shows current coordinates and accuracy
- **Trip Detection**: Shows detection state and trip count
- **Notifications**: Shows initialization and permission status
- **Trip Counter**: Shows total trips and current detection state

### **Control Buttons**
- **Test Permissions**: Verify location permissions
- **Start Location**: Begin location tracking
- **Start Trip Detection**: Begin trip monitoring
- **Test Notification**: Send test notification
- **Refresh Dashboard**: Update dashboard with latest data
- **Clear Logs**: Clear the debug log display

### **Debug Logs**
- Real-time timestamped logs
- Color-coded terminal-style display
- Shows all service events and errors
- Automatically limited to last 50 entries

## Testing Scenarios

### **Scenario 1: Basic Functionality**
```
1. Test Permissions → Start Location → Start Trip Detection
2. Verify all status cards are green
3. Test notification works
4. Check trip counter shows correct state
```

### **Scenario 2: Trip Simulation**
```
1. Start services
2. Walk/drive 100+ meters
3. Wait for trip start event
4. Stop for 10+ minutes
5. Verify trip completion and notification
```

### **Scenario 3: Dashboard Integration**
```
1. Complete a few trips using Scenario 2
2. Tap "Refresh Dashboard"
3. Go back to main dashboard
4. Verify trip count matches what you completed
```

### **Scenario 4: Error Handling**
```
1. Deny location permissions
2. Try starting services
3. Verify proper error messages in logs
4. Re-grant permissions and retry
```

## Common Issues & Solutions

### **Location Not Working**
- ❌ **Issue**: "Permission failed" in logs
- ✅ **Solution**: Go to device Settings → Apps → Your App → Permissions → Location → Allow

### **Trip Detection Not Starting**
- ❌ **Issue**: Trip detection fails to start
- ✅ **Solution**: Ensure location service is started first

### **No Notifications**
- ❌ **Issue**: Test notification fails
- ✅ **Solution**: Check device notification settings for your app

### **Inaccurate Location**
- ❌ **Issue**: Very high accuracy values (>100m)
- ✅ **Solution**: Test outdoors with clear sky view, avoid indoor testing

### **Battery Drain**
- ❌ **Issue**: High battery usage
- ✅ **Solution**: Verify optimization kicks in after 30 minutes of inactivity

## Production Testing Tips

1. **Test on Real Device**: Always test on physical device, not simulator
2. **Test Outdoors**: GPS works best with clear sky view
3. **Test Different Scenarios**: Walking, driving, stationary periods
4. **Monitor Battery**: Check battery usage in device settings
5. **Test Permissions**: Try denying/granting permissions
6. **Test Background**: Put app in background and verify it continues working

## Success Criteria

✅ **All services start without errors**  
✅ **Location updates appear regularly**  
✅ **Trip detection triggers on movement**  
✅ **Trip completion detected after 10 minutes stationary**  
✅ **Notifications work properly**  
✅ **Dashboard shows correct trip counts**  
✅ **Battery optimization activates after 30 minutes**  
✅ **No crashes or memory leaks during extended use**  

---

**Need Help?** Check the debug logs for detailed error messages and troubleshooting information.