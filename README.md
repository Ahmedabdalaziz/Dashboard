# 📊 Dashboard – Admin Analytics UI (Flutter)

An elegant and responsive admin dashboard interface built using Flutter.
This project serves as a modern UI template for web and desktop platforms, focusing on clean architecture and scalability.

## 🚀 Features

* ✨ Modern, minimal UI design
* 💻 Responsive layout (Web/Desktop)
* 📈 Dashboard cards & analytics visuals
* 🤭 Sidebar navigation
* 🎯 Modular folder structure
* 🎨 Custom theming and style management
* ⚙️ State management using Cubit + Freezed

## 🛠️ Built With

* **Flutter** – Cross-platform UI toolkit
* **flutter\_bloc** – Cubit for state management
* **Freezed** – For sealed unions and data classes
* **window\_size** – For managing desktop window behavior
* **Custom Theming** – StyleManager + color config

## 📂 Folder Structure

```plaintext
lib/
├── cubit/                  
│   ├── dashboard_cubit.dart
│   ├── dashboard_state.dart
│   └── dashboard_state.freezed.dart
│
├── models/               
│   ├── dashboard_stats.dart
│   ├── dashboard_stats.freezed.dart
│   └── dashboard_stats.g.dart
│
├── services/             
│   └── api_service.dart
│
├── theming/              
│   ├── color.dart
│   └── style_manager.dart
│
├── ui/                     # UI layer
│   ├── screens/           
│   │   ├── analytics_screen.dart
│   │   ├── dashboard_screen.dart
│   │   └── reports_screen.dart
│   └── widgets/           
│       ├── dashboard_reports_preview.dart
│       ├── header.dart
│       ├── map_section.dart
│       ├── reports_section.dart
│       └── sidebar.dart
│
└── main.dart              
```

## 💻 Desktop Window Setup

The app configures a minimum window size and title for Windows/Linux/macOS:

```dart
if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
  setWindowTitle('Nabta Dashboard');
  setWindowMinSize(const Size(1700, 900));
}
```

## 📦 Getting Started

1. **Clone the repo**

   ```bash
   git clone https://github.com/yourusername/dashboard.git
   cd dashboard
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the project**

   ```bash
   flutter run -d windows     # For desktop
   ```
## 🧑‍💻 Author

Developed by **Ahmed Abdalaziz**
Feel free to connect: [LinkedIn](https://www.linkedin.com/in/yourprofile) | [GitHub](https://github.com/Ahmedabdalaziz)

