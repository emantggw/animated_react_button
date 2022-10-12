<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A beautiful animated reaction button. The cool thing is you can customize your own favorite reaction icon, color, icon size.

## Screenshots

<img src="https://github.com/emantggw/animated_react_button/assets/screenshots/favorite_heart.gif" />

<img src="https://github.com/emantggw/animated_react_button/assets/screenshots/favorite_heart_real_example.gif" />

## Features

Reacting the action.

## Getting started

## Usage

```dart
Container(
    child: AnimatedReactButton(
        reactColor: Colors.red,
        onPressed: ()async{
            await Future.delayed(Duration(seconds:2));
}))
```

## Additional information
