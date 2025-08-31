# OnTimeBus

Evide Bus Stop App is a Flutter application designed to provide users with detailed information about bus stops. Users can view a list of bus stops, and tap on each stop to see its details including **ETA, latitude, longitude, stop name**, and more.

The app is built using **GetX** for state management and follows the **MVP (Model-View-Presenter) architecture** for a clean and maintainable code structure.

## Features

- Display a **list of bus stops**.
- View **detailed information** for each stop:
  - Stop Name
  - ETA (Estimated Time of Arrival)
  - Latitude & Longitude
  - Other relevant stop details
- Modern and responsive UI.
- Navigation between the bus stop list and stop detail screens.

## Getting Started

Follow these instructions to run the project locally:

### Prerequisites

- Install [Flutter](https://docs.flutter.dev/get-started/install) on your system.
- Ensure you have a **physical device or emulator** ready for testing.

### Installation

1. Clone this repository: [Repo_Link](https://github.com/DUDU0123/OnTimeBus)

```bash
git clone <your-repo-url>
Navigate to the project directory:

bash
Copy code
cd evide_bus_stop_app
Get the Flutter dependencies:

bash
Copy code
flutter pub get
Connect your physical device or start an emulator.

Run the app:

bash
Copy code
flutter run
If you encounter any errors after running flutter pub get, make sure your Flutter SDK is properly installed and up to date.

Usage
Home Page: Displays a scrollable list of bus stops.

Stop Detail Page: Tap on any bus stop to see its detailed information including ETA, latitude, longitude, and stop name.

State Management: GetX

Architecture: MVP (Model-View-Presenter)

Dependencies
get – for state management and routing.

Other Flutter dependencies as listed in pubspec.yaml.

