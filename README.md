# Foodie Flutter

## Overview
Foodie is a Flutter app designed for users to explore restaurants and food items. The app integrates Firebase for authentication, while all food and restaurant data are presented through static components.

## Features
- **Authentication**: Implemented with Firebase for signup, login, forgot password, and Google sign-in.
- **Home Page**: Displays trending foods, nearest foods, popular food lists, and a search bar to search for food items.
- **Restaurant Page**: Shows all restaurant cards. Clicking on a card displays that restaurant's details and full menu.
- **Map Page**: Displays mapping information based on the user’s location and address input.
- **Profile Page**: Shows the user's profile image, email, and provides a logout button.

## Authentication
Firebase is used for handling all authentication processes, including:

- **Signup**: Standard email and password signup, along with Google authentication.
- **Login**: Existing users can log in using their credentials.
- **Forgot Password**: Allows users to reset their password via Firebase email.
- **Google Signup**: Users can sign up or log in using their Google account.

### Firebase Integration
1. Configure Firebase project in the Flutter app.
2. Add necessary dependencies (`firebase_auth`, `google_sign_in`, etc.).
3. Use Firebase Authentication SDK for signup, login, password reset, and Google sign-in.

## Pages Structure

### 1. Home Page
- **Trending Foods**: Displays a horizontal list of the most popular food items.
- **Nearest Food List**: Shows a list of food items available from nearby restaurants.
- **Popular Food List**: Displays a list of top-rated food items.
- **Search Bar**: A search bar allowing users to look for specific foods by name or category.

### 2. Restaurant Page
- **Restaurant Cards**: Each card represents a restaurant with a brief description.
- **Restaurant Details Page**: On clicking a restaurant card, navigate to a new screen that displays the restaurant’s full menu and details.

### 3. Map Page
- Displays a placeholder text (e.g., “Mapping according to address”) for restaurant locations, allowing users to view potential restaurant locations.

### 4. Profile Page
- **Profile Details**: Displays the user’s profile image and email.
- **Logout Button**: Users can sign out of their account.

## Design Considerations
- **Frontend-only**: All data on food and restaurants are static for now. No backend is connected except Firebase for authentication.
- **User Experience**: Simple navigation with clearly defined sections to make it easy for users to browse food items and restaurants.

## Packages Used
- `firebase_auth`: For handling authentication with Firebase.
- `google_sign_in`: For Google-based sign-up and login.
- `flutterfire`: Firebase plugins to integrate Firebase services in Flutter.
