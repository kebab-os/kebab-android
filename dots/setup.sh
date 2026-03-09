#!/bin/bash
# Android Minimalist Setup - Performance & UI

echo "🚀 Initialising modern environment..."

# --- MODERN UI & UX ---
# Enable full gesture navigation (removes buttons)
adb shell settings put secure navigation_mode 2 

# Speed up system animations (makes the phone feel 2x faster)
adb shell settings put global window_animation_scale 0.5
adb shell settings put global transition_animation_scale 0.5
adb shell settings put global animator_duration_scale 0.5

# Force high-refresh rate (if hardware supported)
adb shell settings put peak_refresh_rate 120.0
adb shell settings put min_refresh_rate 120.0

# --- CLEAN LIFESTYLE ---
# Hide the clock from status bar for a "Zen" look
adb shell settings put secure icon_blacklist "clock"

# Enable "Vibrate on Tap" for gestures only
adb shell settings put system haptic_feedback_enabled 1

# --- NETWORK & PRIVACY ---
# Use Cloudflare DNS for privacy and speed
adb shell settings put global private_dns_mode "hostname"
adb shell settings put global private_dns_specifier "1dot1dot1dot1.cloudflare-dns.com"

echo "✅ UI transformation complete."
