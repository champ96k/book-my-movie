## Book My Movie Flutter Project 


## Overview

**book_my_movie** is a Flutter project designed to provide a seamless movie browsing and booking experience. The project follows the Clean Architecture pattern and utilizes Flutter Cubit for state management. Dependency injection is handled using GetIt. Below is the documentation outlining the project structure, dependencies, and other important details.

## Documentation

- [Official Documentation](https://bloclibrary.dev/#/)
- [Flutter Bloc Package](https://github.com/felangel/bloc/blob/master/packages/bloc/README.md)

## Requirements

- [ 3.2.3 (stable)](https://github.com/dart-lang/sdk/wiki/Installing-beta-and-dev-releases-with-brew,-choco,-and-apt-get#installing)
- [FVM](https://github.com/leoafarias/fvm) - [Flutter 2.0.1 via FVM](https://github.com/wasabeef/flutter-architecture-blueprints/blob/main/.fvm/fvm_config.json)

## Environment

<img height="520px" src="https://miro.medium.com/max/1400/1*MqYPYKdNBiID0mZ-zyE-mA.png" align="right" />

**iOS**

- iOS 11+

**Android**

- Android 5.1+
  - minSdkVersion 21
- targetSdkVersion 30

## App architecture

- This design pattern helps to separate presentation from business logic. Following the BLoC pattern facilitates testability and reusability. This package abstracts reactive aspects of the pattern allowing developers to focus on writing the business logic.

## Cubit

The goal of this library is to make it easy to separate presentation from business logic, facilitating testability and reusability. 

<p align="center">
  <img src="https://raw.githubusercontent.com/felangel/bloc/master/docs/assets/cubit_architecture_full.png" />
</p>

- A Cubit is class which extends BlocBase and can be extended to manage any type of state. Cubit requires an initial state which will be the state before emit has been called. The current state of a cubit can be accessed via the state getter and the state of the cubit can be updated by calling emit with a new state.


## Dependency Injection

- In Flutter, the default way to provide object/services to widgets is through InheritedWidgets. If you want a widget or it’s model to have access to a service, the widget has to be a child of the inherited widget. This causes unnecessary nesting.
- That’s where [get it](https://pub.dev/packages/get_it) comes in. An IoC that allows you to register your class types and request it from anywhere you have access to the container..

_You don’t need to wrap any widgets to inherit anything, or need the context anywhere. All you do is import the service_locator file and use the locator to resolve your type. This means that in places without the context you’ll still be able to inject the correct services and values, even if the app’s UI structure changes.


## Project Structure

```
lib/
|-- core/
|   |-- domain/
|   |-- data/
|   |-- presentation/
|
|-- features/
|   |-- home/
|   |   |-- presentation/
|   |   |-- domain/
|   |   |-- data/
|   |
|   |-- movie_details/
|   |   |-- presentation/
|   |   |-- domain/
|   |   |-- data/
|
|-- common/
|   |-- constants/
|   |-- widgets/
|
|-- injection/
|-- main.dart
```

- **core:** Contains the core logic of the application, following Clean Architecture principles.

  - **domain:** Defines entities, use cases, and repositories.
  - **data:** Implements data sources, repositories, and mappers.
  - **presentation:** Manages the UI, presentation logic, and state using Cubit.

- **features:** Contains feature-specific modules.

  - **home:** Module for displaying the home screen with movie listings.
  - **movie_details:** Module for displaying detailed information about a selected movie.

- **common:** Contains shared components and constants used across the application.

  - **constants:** Holds constant values used throughout the app.
  - **widgets:** Custom widgets used in different parts of the application.

- **injection:** Handles dependency injection using GetIt.

- **main.dart:** Entry point of the application.


## Code Style

- [Effective Dart](https://dart.dev/guides/language/effective-dart)

## Assets, Fonts

**If added some assets or fonts**

- Use [FlutterGen](https://github.com/FlutterGen/flutter_gen/)

## Models

**If added some models for api results**

- Use [Freezed](https://pub.dev/packages/freezed)

## Getting Started

### Setup

```shell script
$ git branch -m main develop
$ git fetch origin
$ git branch -u origin/develop develop
$ git remote set-head origin -a
```

### How to add assets(images..)

1. Add assets
2. Run [FlutterGen](https://github.com/fluttergen)



## Screenshot


<div align="center">
  <img src="https://i.postimg.cc/SQLRGtM0/Screenshot-2024-02-02-at-11-50-41-AM.png" width="200" hspace="20">
  <img src="https://i.postimg.cc/Jz0hMrdm/Screenshot-2024-02-02-at-11-50-46-AM.png" width="200" hspace="20">
  <img src="https://i.postimg.cc/D072Dnb9/Screenshot-2024-02-02-at-11-50-51-AM.png" width="200" hspace="20">
</div>

<br>
<br>

<div align="center">
  <img src="https://i.postimg.cc/W4Jbq9vH/Screenshot-2024-02-02-at-11-50-55-AM.png" width="200" hspace="20">
  <img src="https://i.postimg.cc/HkNkLqfM/Screenshot-2024-02-02-at-11-50-58-AM.png" width="200" hspace="20">
  <img src="https://i.postimg.cc/4d6fBmnv/Screenshot-2024-02-02-at-11-51-04-AM.png" width="200" hspace="20">
</div>

<br>
<br>

<div align="center">
  <img src="https://i.postimg.cc/mDfZYQZ2/Screenshot-2024-02-02-at-11-51-16-AM.png" width="200" hspace="20">
  <img src="https://i.postimg.cc/TYCPzL0C/Screenshot-2024-02-02-at-11-51-19-AM.png" width="200" hspace="20">
</div>
