#!/bin/bash

echo "Initialising kebab-android..."

adb shell settings put secure navigation_mode 2 
adb shell settings put global window_animation_scale 0.5
adb shell settings put global transition_animation_scale 0.5
adb shell settings put global animator_duration_scale 0.5
adb shell settings put peak_refresh_rate 120.0
adb shell settings put min_refresh_rate 120.0
adb shell settings put secure icon_blacklist "clock"
adb shell settings put system haptic_feedback_enabled 1
adb shell settings put global private_dns_mode "hostname"
adb shell settings put global private_dns_specifier "dns.adguard.com"

echo "✅ Completed kebab-android setup"
