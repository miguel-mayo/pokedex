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

## Arquitecture

- GoRouter to handle navigation
- Bloc / Cubit for state management

- The folder arquitecture:
 - lib
  - home (feature)
   - cubit
   - views
  - captured (feature)
   - cubit
   - views
  [...]
  - intl (localization)
  - router
  - shared
   - helpers
   - local (local datasources)
   - models
   - network (network datasources)
   - theme (theme management)
   - usecases (shared use cases)
   - views (shared views)
   - widgets
   - extensions.dart

## Features

### Home
- La home es la primera pantalla en cargar
- Se carga automáticamente la primera página de los pokemons en la región de Kanto (la página tiene 10 elementos en pantalla pequeña y 12 en el resto de pantallas)
- Los pokemons se visualizan en un grid de 2 posiciones en pantallas pequeñas y de 3 posiciones en pantallas más grandes
- Se puede visualizar la información básica del pokemon (nombre, tipos e imagen)
- En la AppBar tenemos el título, un buscador por nombre y un botón para cambiar entre modo oscuro y modo claro
- El floating button de la pokeball brillante lleva a la Pokédex donde se pueden visualizar los pokemon capturados

### Pokemon detail
- Al pulsar sobre un pokemon se navega a su detalle mediante una transición `Hero`
- El esquema de color cambia al color del tipo del pokemon
- En el detalle se puede ver la imagen del pokemon más grande, el nombre, el id, los tipos, las características y las estadísticas
- Se ha creado el widget 'Swipe up to catch' para atrapar al pokemon
- Cuando el pokemon está capturado, el widget cambia por el botón 'Liberar'

### Pokédex
- En esta pantalla se visualizan los pokemons capturados
- Se puede filtrar por tipo desde el icono a la derecha en el AppBar
- El subtítulo 'You are a xxx coach!' cambia según el tipo mayoritario
- El esquema de color cambia según el tipo mayorítario


### General notes
- Se utiliza Material 3 en el tema y todos los colores de la app utilizan colores del tema (primary, surface, etc.). Con esto conseguimos que se pueda cambiar el esquema de color durante la ejecución y que todo tenga sentido.
- Se utiliza la librería `material_color_utilities` para armonizar los colores
- Todos los valores de tamaños están parametrizados en `lib/shared/theme/design_system.dart`