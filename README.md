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

<img src="https://github.com/emantggw/animated_react_button/raw/main/assets/screenshots/favorite_heart.gif" />

<img src="https://github.com/emantggw/animated_react_button/raw/main/assets/screenshots/favorite_heart_real_example.gif" />

## Features

Reacting the action.

## Getting started

## Usage

[Example](https://github.com/emantggw/animated_react_button/blob/master/example/example.dart)
To use this package :

- add the dependency to your [pubspec.yaml](https://github.com/emantggw/animated_react_button/blob/master/pubspec.yaml) file.

```yaml
dependencies:
  flutter:
    sdk: flutter
  animated_react_button:
```

### How to use

```dart
Container(
    child: AnimatedReactButton(
        defaultColor: Colors.grey
        reactColor: Colors.red,
        onPressed: ()async{
            //Simulated api/io waiting calls
            await Future.delayed(Duration(seconds:1));
}))
```

# License

Copyright (c) 2022 Amanuel Tito

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).

## Contact me

Get me on Telegram [@emantggw](https://t.me/emantggw)
