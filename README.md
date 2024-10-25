# Pokédex

Tus pokemon en un mismo lugar

# Development 

## Generate splash

- This app uses [flutter_native_splash](https://pub.dev/packages/flutter_native_splash)
- Add the pub and the configuration to `pubspec.yaml`

``` yaml
flutter_native_splash: ^2.2.19
[...]
flutter_native_splash:
  color: "#CC0000"
  image: assets/icon/icon.png
```

- Execute the script running the command below:
```bash
rps splash
```

## Generate icons
- This app uses [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons)
- Add the pub and the configuration to `pubspec.yaml`

``` yaml
flutter_launcher_icons: ^0.13.1
[...]
flutter_launcher_icons:
  android: "launcher_icon"
  ios: "AppIcon"
  image_path: "assets/icon/icon.png"
  min_sdk_android: 21
```

- Execute the script running the command below:
```bash
rps icons
```

## Build freezed models

- Run one single build
```bash
rps runner
```

- Watch for changes
```bash
rps runner-watch
```