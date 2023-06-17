# Instagram App <img src="https://static.vecteezy.com/system/resources/previews/018/930/415/original/instagram-logo-instagram-icon-transparent-free-png.png" style="width: 20px"/>

Inspired by [Sabrina Meilya ](https://dribbble.com/sabrinameilya) design.

## Screenshots

Inspiration
![Inpired By Lovagram - Sabrina Meilya](https://cdn.dribbble.com/userupload/4020077/file/original-b61f639285201890c05b9af1e3f4ae6e.png?compress=1&resize=1024x768)

## Tech Stack

**App:** Futter

**Infrastructure:** TBD

## Run Locally

Clone the project

```bash
  git clone https://github.com/emirchus/instragram-app
```

Go to the project directory

```bash
  cd instragram-app
```

Install dependencies

```bash
  flutter pub get
```

Generate code

```bash
  flutter pub run build_runner build
```

- In case you encounter any error in build runner:

```bash
  flutter pub run build_runner build --delete-conflicting-outputs
```

Run command

```bash
flutter run
```

## Deployment

To build this project for android run

| Platform  | Command                             | Description                             |
| :-------- | :---------------------------------- | :-------------------------------------- |
| `android` | `flutter build appbundle --release` | Build appbundle for upload to PlayStore |
| `ios`     | `flutter build ios --release`       | Build ios package for AppStore          |
| `web`     | `flutter build web --release`       | Build web bundle for Deployment         |
| `windows` | `flutter build windows --release`   | Build windows exe                       |
| `mac`     | `flutter build mac --release`       | Build mac cocopots                      |
| `linux`   | `flutter build linux --release`     | Build linux tar.gz                      |

## Running Tests

To run tests, run the following command

```bash
  flutter run test
```

## Features

- TBH

## Goals

- TBH

## Feedback

If you have any feedback, please reach out to us at [@emirchus](https://twitter.com/emirchus)
