# mapbox-capacitor-plugin

Mapbox capacitor plugin for ionic app

## Build

```bash
npm install
npm run build
npm pack
```

Copy the .tgz file to the Ionic App's root directory

from terminal in the App's root directory run:

```bash
npm install mapbox-capacitor-plugin-0.0.1.tgz
ionic build
npx cap add ios
```

Add this to the Podfile:
under use_frameworks! add:
pod 'MapboxCoreNavigation', '~> 2.12'
pod 'MapboxNavigation', '~> 2.12'


Add this to the Info file:

	<key>MBXAccessToken</key>
	<string>sk.eyJ1IjoiZ290c3BvdHBhcmtpbmciLCJhIjoiY2xoNmRiMmlwMDBobjNwbnd2N2trdm1nbiJ9.M1yt-18HLGZz2jbUe8gREQ</string>


	<key>UIBackgroundModes</key>
	<array>
		<string>audio</string>
	</array>
	<key>NSMapboxUsageDescription</key>
	<string>Ionic App with Mapbox integration</string>
	<key>NSLocationWhenInUseUsageDescription</key>
	<string>We need access to your location to provide turn-by-turn navigation.
Usage Description</string>


Next, run:

```bash
npx cap sync ios
```

Next cd into ios/App and run:

```bash
pod install
```

Next cd /../.. back into the root directory and run:

```bash
npx cap open ios
```

Make sure to set the Signing $ Capabilities -> Team.

run on your device or simulator.