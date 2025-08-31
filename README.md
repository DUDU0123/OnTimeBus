# OnTimeBus

OnTimeBus is a Flutter application designed to provide users with detailed information about bus stops. Users can view a list of bus stops, search for a particular stop, and even mark stops as favorites for quick access.  

The app is built using **GetX** for state management and follows the **MVP (Model-View-Presenter) architecture** for a clean and maintainable code structure.  

## Features

- Display a **list of bus stops**.  
- View **detailed information** for each stop:  
  - Stop Name  
  - ETA (Estimated Time of Arrival)  
  - Latitude & Longitude  
  - Other relevant stop details  
- Mark bus stops as **Favorite** for quick access.  
- **Search** functionality to find a particular bus stop easily.  
- Modern and responsive UI.  
- Smooth navigation between bus stop list and stop detail screens.  

## Getting Started

Follow these instructions to run the project locally:  

### Prerequisites

- Install [Flutter](https://docs.flutter.dev/get-started/install) on your system.  
- Ensure you have a **physical device or emulator** ready for testing.  

### Installation

1. Clone this repository: [OnTimeBus Repository](https://github.com/DUDU0123/OnTimeBus)  

   ```bash
   git clone https://github.com/DUDU0123/OnTimeBus.git
Navigate to the project directory:

bash
Copy code
cd ontimebus
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

Favorites: Tap the favorite icon to mark/unmark a bus stop and quickly access it later.

Search: Use the search bar to find a specific bus stop instantly.

State Management
GetX

Architecture
MVP (Model-View-Presenter)

Dependencies
get – for state management and routing.

Other Flutter dependencies as listed in pubspec.yaml.