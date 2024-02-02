# Clean Architecture with Flutter BLOC/Cubit

The goal of this library is to make it easy to separate presentation from business logic, facilitating testability and reusability. 

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

<p align="center">
  <img src="https://raw.githubusercontent.com/felangel/bloc/master/docs/assets/cubit_architecture_full.png" />
</p>

- A Cubit is class which extends BlocBase and can be extended to manage any type of state. Cubit requires an initial state which will be the state before emit has been called. The current state of a cubit can be accessed via the state getter and the state of the cubit can be updated by calling emit with a new state.

## Bloc

<p align="center">
  <img src="https://bloclibrary.dev/assets/bloc_architecture_full.png" />
</p>

- A Bloc is a more advanced class which relies on events to trigger state changes rather than functions. Bloc also extends BlocBase which means it has a similar public API as Cubit. However, rather than calling a function on a Bloc and directly emitting a new state, Blocs receive events and convert the incoming events into outgoing states.

## Explanation & Project Organization

The project is dived into two parts

- `core` - Contain all core file including bussiness login, bloc,cubit DI,etc
- `src` - Evrything related to UI
- `feature` - App feature

## Dependency Injection

- In Flutter, the default way to provide object/services to widgets is through InheritedWidgets. If you want a widget or it’s model to have access to a service, the widget has to be a child of the inherited widget. This causes unnecessary nesting.
- That’s where [get it](https://pub.dev/packages/get_it) comes in. An IoC that allows you to register your class types and request it from anywhere you have access to the container..

_You don’t need to wrap any widgets to inherit anything, or need the context anywhere. All you do is import the service_locator file and use the locator to resolve your type. This means that in places without the context you’ll still be able to inject the correct services and values, even if the app’s UI structure changes._

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


 

<a href="https://freeimage.host/"><img src="https://iili.io/JlEDNCF.gif" alt="JlEDNCF.gif" border="0" /></a>


<div align="center">
  <img src="https://iili.io/JlEDNCF.gif" width="200" hspace="20">
  <img src="https://i.postimg.cc/SQLRGtM0/Screenshot-2024-02-02-at-11-50-41-AM.png" width="200" hspace="20">
  <img src="https://i.postimg.cc/Jz0hMrdm/Screenshot-2024-02-02-at-11-50-46-AM.png" width="200" hspace="20">
  
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
  <img src="https://i.postimg.cc/D072Dnb9/Screenshot-2024-02-02-at-11-50-51-AM.png" width="200" hspace="20">
</div>