# Flutter Portfolio App

A 3-page Flutter app (Home, About, Contact).

## Features
- Navigation: Home → About → Contact (buttons) + BottomNavigationBar
- Page name displayed on each page
- Images: Home banner, profile photo, contact image
- Icons on every page
- `Scaffold`, `AppBar`, `Stack`, `Column`, `Card`, `ListTile`, `Wrap`
- Custom Material 3 theme with light and dark mode
- Smooth page transitions

## Project structure
```
lib/
├── main.dart              # App + themes
├── routes.dart            # Route names + transitions
├── data/profile_data.dart # Your name, bio, contact info (edit this!)
├── pages/                 # home_page, about_page, contact_page
└── widgets/               # Reusable widgets
assets/images/             # home_banner.jpg, profile.jpg, contact_icon.png
```

## Run
```bash
flutter pub get
flutter run
```
