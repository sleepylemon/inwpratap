# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Flutter Commands
- Run app: `flutter run`
- Build app: `flutter build [apk|ios|web]`
- Test: `flutter test [path/to/test]`
- Lint: `flutter analyze`
- Format code: `flutter format lib/`
- Dependencies: `flutter pub get`

## Code Style Guidelines
- **Imports**: Group by package/relative imports, sort alphabetically
- **Formatting**: 2-space indentation, trailing commas in multi-line constructs
- **Types**: Use explicit typing, prefer `const` for immutable variables
- **Naming**: camelCase for variables/methods, PascalCase for classes/widgets
- **Privacy**: Use _ prefix for private members
- **Constructors**: Use named parameters with `required` keyword
- **Error Handling**: Prefer try/catch with specific exceptions

## Architecture
- **Clean Architecture**: Organize code into data, domain, and presentation layers
- **State Management**: Use Riverpod for dependency injection and state management
- **Folder Structure**: Feature-first organization (each feature has its own layers)
- **Repository Pattern**: Abstract data sources behind repository interfaces
- **Use Cases**: Implement domain logic in use case classes