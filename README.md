# Alertix App

## Integrantes:

* Martín Flores Arango - r.floresa@uniandes.edu.co
* Felipe Villalba Gil - g.villalbag@uniandes.edu.co

Aplicación móvil desarrollada en Flutter para Android, con el fin de facilitar la gestión de alertas y notificaciones de los usuarios.

## Requisitos Previos

- Flutter SDK: 3.19.6
- Dart: 3.3.4
- Android Studio / VS Code
- Git

## Instalación

Instala Flutter siguiendo las instrucciones oficiales para tu sistema operativo:
    - [Windows](https://docs.flutter.dev/get-started/install/windows)
    - [macOS](https://docs.flutter.dev/get-started/install/macos) 
    - [Linux](https://docs.flutter.dev/get-started/install/linux)

   O sigue estos pasos básicos:
   - Descarga el SDK de Flutter desde https://flutter.dev/docs/get-started/install
   - Extrae el archivo en la ubicación deseada
   - Agrega Flutter a tu PATH
   - Ejecuta `flutter doctor` para verificar la instalación

### Usando FVM (Flutter Version Management) - Recomendado

FVM es una herramienta que facilita la instalación y gestión de múltiples versiones de Flutter. Para usar FVM:

1. Instala FVM:
   ```bash
   dart pub global activate fvm
   ```

2. Instala Flutter usando FVM:
   ```bash
   fvm install 3.19.6
   ```

3. Configura FVM en el proyecto:
   ```bash
   fvm use 3.19.6
   ```

4. Usa los comandos de Flutter a través de FVM:
   ```bash
   fvm flutter pub get
   fvm flutter run
   ```

FVM facilita:
- Cambiar entre versiones de Flutter
- Asegurar que todo el equipo use la misma versión
- Manejar múltiples proyectos con diferentes versiones de Flutter

1. Clona el repositorio:
    ```bash
    git clone https://github.com/tu-usuario/alertix_app.git
    cd alertix_app
    ```

2. Instala las dependencias:
    ```bash
    flutter pub get
    ```

3. Ejecuta la aplicación:
    ```bash
    flutter run
    ```

## Estructura del Proyecto - Presentation

```
lib/presentation/
├── design_system/           # Sistema de diseño
│   ├── colors.dart         # Colores de la aplicación
│   ├── gradients.dart      # Gradientes predefinidos
│   ├── spaces.dart         # Espaciados y márgenes
│   └── styles.dart         # Estilos globales
├── screens/                # Pantallas de la aplicación
│   ├── camera_screen.dart  # Pantalla de cámara
│   ├── create_alarms_screen.dart # Crear alarmas
│   ├── day_alarms_screen.dart    # Alarmas del día
│   ├── home_screen.dart    # Pantalla principal
│   ├── my_alarms_screen.dart     # Mis alarmas
│   ├── settings_screen.dart      # Configuración
│   ├── sign_in_screen.dart       # Inicio de sesión
│   ├── sign_up_screen.dart       # Registro
│   ├── splash_screen.dart        # Pantalla de inicio
│   └── validate_code_screen.dart # Validación de código
├── utils/                  # Utilidades
│   └── navigation.dart     # Navegación entre pantallas
└── widgets/                # Widgets reutilizables
    ├── background_widget.dart    # Fondo personalizado
    ├── code_input_widget.dart    # Input para códigos
    ├── custom_button.dart        # Botón personalizado
    ├── custom_divider.dart       # Divisor personalizado
    ├── custom_dropdown.dart      # Menú desplegable
    ├── custom_header_widget.dart # Encabezado personalizado
    ├── custom_text_button.dart   # Botón de texto
    ├── custom_text_input.dart    # Campo de texto
    ├── navigation_bar_widget.dart # Barra de navegación
    └── tab_bar_component.dart    # Componente de pestañas
```

### Descripción de Componentes de Presentation

#### Design System
- **colors.dart**: Define la paleta de colores de la aplicación
- **gradients.dart**: Configuración de gradientes para fondos y elementos
- **spaces.dart**: Define constantes para espaciados y márgenes
- **styles.dart**: Estilos globales de texto y componentes

#### Screens
- **camera_screen.dart**: Pantalla para captura de fotos
- **create_alarms_screen.dart**: Creación de nuevas alarmas
- **day_alarms_screen.dart**: Visualización de alarmas diarias
- **home_screen.dart**: Pantalla principal de la aplicación
- **my_alarms_screen.dart**: Gestión de alarmas personales
- **settings_screen.dart**: Configuraciones de la aplicación
- **sign_in_screen.dart**: Pantalla de inicio de sesión
- **sign_up_screen.dart**: Registro de nuevos usuarios
- **splash_screen.dart**: Pantalla de carga inicial
- **validate_code_screen.dart**: Validación de códigos de seguridad

#### Utils
- **navigation.dart**: Gestión de la navegación entre pantallas

#### Widgets
- **background_widget.dart**: Widget para fondos personalizados
- **code_input_widget.dart**: Campo de entrada para códigos
- **custom_button.dart**: Botón con estilo personalizado
- **custom_divider.dart**: Separador visual personalizado
- **custom_dropdown.dart**: Menú desplegable personalizado
- **custom_header_widget.dart**: Encabezado personalizable
- **custom_text_button.dart**: Botón de texto estilizado
- **custom_text_input.dart**: Campo de texto personalizado
- **navigation_bar_widget.dart**: Barra de navegación inferior
- **tab_bar_component.dart**: Componente para navegación por pestañas

## Notas Importantes

### Requerimientos de Hardware
- Se recomienda usar un dispositivo físico Android para probar la aplicación debido a las funcionalidades de cámara
- Los emuladores pueden tener limitaciones con las características de la cámara

### Permisos Necesarios
La aplicación requiere los siguientes permisos:
- Cámara: Para captura de fotos
- Almacenamiento: Para guardar imágenes
- Notificaciones: Para las alertas

### Recomendaciones de Desarrollo
1. Para probar en dispositivo físico:
    ```bash
    flutter run -d <device-id>
    ```
   Puedes ver los dispositivos disponibles con:
    ```bash
    flutter devices
    ```

2. Asegúrate de tener habilitado el modo desarrollador en tu dispositivo Android
3. Acepta los permisos de la aplicación cuando sean solicitados
4. Para un mejor rendimiento, usa un dispositivo con Android 6.0 (API 23) o superior

