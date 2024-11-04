# SamX App

ProjectName is a versatile project designed
for [provide a brief description of the project's purpose]. This comprehensive guide will provide
you with everything you need to know to get started with the project, from installation instructions
to a detailed description of its features.

## Table of Contents

- [Features](#features)

- [Installation](#installation)

    - [Prerequisites](#prerequisites)

    - [Clone the Repository](#clone-the-repository)

    - [Configuration](#configuration)

    - [Build and Run](#build-and-run)

## Features

List the key features and functionalities of your project:

- Wallet

- CpLife Services

- OTRS Ticketing

- Profile Services

- Darmanet Services

## Installation

Follow these steps to install and run si24.singlewindow.app on your system.

### Prerequisites

Before you begin, ensure you have the following dependencies and tools installed:

- flutter

- android studio

- xcode

- chrome

### Clone the Repository

1. Open your terminal or command prompt.

2. Use the following command to clone the si24.singlewindow.app repository:

git clone https://cr.si24.ir/single-window/si24.singlewindow.app.git

Replace `your-username` with your Gitlab username.

### Configuration

1. Change your working directory to the cloned repository:

cd ProjectName

2. [Configuration Step 1: Describe how to configure the project, such as setting up environment variables, creating configuration files, etc.]

3. [Configuration Step 2: If there are additional configuration steps, outline them here.]

4. Install the required dependencies using:

[package manager] install

### Run

## Commands run flavors android

# Running each flavor on DEBUG mode:

- flutter clean
- flutter pub get
- dart run build_runner build --delete-conflicting-outputs
- flutter run -t lib/main_master.dart --flavor prod
- flutter run -t lib/main_develop.dart --flavor dev

# Running each flavor on PROFILE mode:

- flutter clean
- flutter pub get
- dart run build_runner build --delete-conflicting-outputs
- flutter run --profile -t lib/main_master.dart --flavor prod
- flutter run --profile -t lib/main_develop.dart --flavor dev

# Running each flavor on RELEASE mode:

- flutter clean
- flutter pub get
- dart run build_runner build --delete-conflicting-outputs
- flutter run --release -t lib/main_master.dart --flavor prod
- flutter run --release -t lib/main_develop.dart --flavor dev

## Commands run flavors pwa

# Running each flavor on RELEASE mode:

- flutter clean
- flutter pub get
- dart run build_runner build --delete-conflicting-outputs
- flutter run -d chrome --web-renderer html -t lib/main_master.dart --web-port=2020
- flutter run -d chrome --web-renderer html -t lib/main_develop.dart --web-port=2020

### Build

# Commands build android

- flutter clean
- flutter pub get
- dart run build_runner build --delete-conflicting-outputs
- flutter build apk --release -t lib/main_master.dart --flavor prod
- flutter build apk --release -t lib/main_develop.dart --flavor dev

# Commands build web

- flutter clean
- flutter pub get
- dart run build_runner build --delete-conflicting-outputs
- flutter build web --release --web-renderer html -t lib/main_master.dart
- flutter build web --release --web-renderer html -t lib/main_develop.dart

# Commands build Cafebazar

- flutter clean
- flutter pub get
- dart run build_runner build --delete-conflicting-outputs
- flutter build apk --release -t lib/main_master.dart --flavor prod
- jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore D:
  \projects\si24.singlewindow.app\android\upload-keystore.jks
  build\app\outputs\flutter-apk\app-prod-release.apk upload
- java -jar D:\projects\si24.singlewindow.app\android\bundlesigner-0.1.13.jar genbin -v --bundle
  build\app\outputs\bundle\prodRelease\app-prod-release.aab --bin . --v2-signing-enabled true
  --v3-signing-enabled false --ks D:\projects\si24.singlewindow.app\android\upload-keystore.jks   

