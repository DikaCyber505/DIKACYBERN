import os

print("🔍 Scanning SSID...")
os.system("iw dev wlan0 scan | grep SSID || echo 'Root diperlukan untuk scan wifi.'")
