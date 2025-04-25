# Chathub - Flutter-based Gemini Powered Chatbot

**Chathub** is a Flutter-based mobile application that integrates a Gemini-powered chatbot with Firebase authentication. It allows users to register, log in, and interact with a conversational AI chatbot seamlessly. The chatbot interface is designed to be intuitive and interactive, providing real-time responses to user queries.

## Features

- **User Authentication**: 
  - Users can register and log in with their email via Firebase Authentication.
  - Supports Firebase email-based authentication.

- **Interactive Chat**: 
  - A user-friendly chat interface where users can chat with a Gemini-powered chatbot.
  - Real-time responses from the chatbot.

- **Firebase Integration**: 
  - Secure and fast authentication using Firebase.
  - Firebase handles user management, ensuring secure login and registration.

## Tech Stack

- **Flutter**: Cross-platform mobile app framework for building iOS and Android applications.
- **Gemini**: Conversational AI model used for generating chatbot responses.
- **Firebase Authentication**: For handling user registration and login with email-based authentication.

## Installation

### Prerequisites

- Flutter 2.0 or above
- Firebase Project (with Firebase Authentication enabled)
- Dart SDK
- Android Studio or VS Code for Flutter development

### Steps to Set Up the Project

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/yourusername/chathub.git
   cd chathub

Install the required dependencies:
flutter pub get
Set up Firebase:

Go to the Firebase Console.

Create a new project or use an existing one.

Set up Firebase Authentication:

Enable Email/Password sign-in method.

Add your app's Firebase credentials to the project:

For Android: Download the google-services.json and place it in the android/app/ directory.

For iOS: Download the GoogleService-Info.plist and place it in the ios/Runner/ directory.

Update Firebase dependencies in your pubspec.yaml file:

dependencies:
  firebase_core: ^latest_version
  
  firebase_auth: ^latest_version
  
  flutter:
  
    sdk: flutter
Run the project on an emulator or physical device:

flutter run

Usage
Upon starting the app, users will be presented with a login screen.

Users can sign in using their email address and password or register if they don't have an account yet.

Once logged in, the user will enter the chat screen, where they can interact with the chatbot.

The chatbot will respond in real-time using Gemini.
