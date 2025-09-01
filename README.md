# PixTagger

_A new Flutter project._

## Description

PixTagger is a Flutter application that allows users to pick images and automatically generate relevant tags for them using machine learning.

## Features

*   **Image Picking:** Select images from the device gallery.
*   **Automatic Image Tagging:** Uses Google ML Kit Image Labeling to generate descriptive tags for images.
*   **User-Friendly Interface:** Built with GetX for state management and Flutter ScreenUtil for responsive UI.

## Getting Started

### Prerequisites

*   Flutter SDK: Make sure you have the Flutter SDK installed. For more information, see the [Flutter documentation](https://flutter.dev/docs/get-started/install).
*   An IDE like Android Studio or VS Code with the Flutter plugin.
*   For Firebase integration (used by `google_mlkit_image_labeling`), you'll need to set up a Firebase project and add the necessary configuration files (e.g., `google-services.json` for Android) to your Flutter project. Follow the instructions on the [Firebase Flutter setup guide](https://firebase.google.com/docs/flutter/setup).

### Installation

1.  Clone the repository:
    ```sh
    git clone <your-repository-url>
    cd pixtagger
    ```
2.  Install dependencies:
    ```sh
    flutter pub get
    ```
3.  Run the app:
    ```sh
    flutter run
    ```

## Key Dependencies

*   [flutter](https://flutter.dev/): The UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
*   [get](https://pub.dev/packages/get): For state management, navigation, and utilities.
*   [image_picker](https://pub.dev/packages/image_picker): For selecting images from the device gallery.
*   [google_mlkit_image_labeling](https://pub.dev/packages/google_mlkit_image_labeling): For on-device image labeling using Google's ML Kit.
*   [firebase_core](https://pub.dev/packages/firebase_core): Required for Firebase services.
*   [flutter_screenutil](https://pub.dev/packages/flutter_screenutil): For adapting screen and font sizes to different screen resolutions.
*   [cupertino_icons](https://pub.dev/packages/cupertino_icons): Provides iOS-style icons.

## Assets

The project includes assets located in the `assets/` directory, including images and fonts.

*   `assets/images/`
*   `assets/fonts/` (Uses Quicksand font family)

