# Flutter Map Demo

A Flutter application with Google Maps integration following Clean Architecture and using Riverpod for state management.

## Features

- Interactive Google Maps
- Display of mock places in Delhi, India
- Selection and display of place details
- Clean Architecture implementation
- Riverpod for state management

## Getting Started

### Prerequisites

- Flutter SDK
- Google Maps API Key

### Setup

1. Clone the repository
2. Install dependencies:
   ```
   flutter pub get
   ```
3. Generate code:
   ```
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
4. Add your Google Maps API key:
   - Android: In `android/app/src/main/AndroidManifest.xml`
   - iOS: In `ios/Runner/AppDelegate.swift`

### Running the app

```
flutter run
```

## Architecture

This project follows Clean Architecture with a feature-first folder structure:

- **core**: Contains constants and utilities shared across features
- **features**: Contains feature modules, each with its own layers:
  - **data**: Data sources, repositories, and models
  - **domain**: Entities and use cases
  - **presentation**: UI components, screens, and state management

## State Management

The app uses Riverpod for state management and dependency injection.
