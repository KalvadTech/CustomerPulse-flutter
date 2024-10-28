
# CustomerPulse Flutter Plugin

This repository provides the **CustomerPulse Flutter Plugin** for integrating UAE customer pulse functionality directly into your Flutter applications.

## Features

- Collect real-time user feedback.
- Easy integration with Flutter projects.
- Fully customizable feedback forms.

## Installation

1. Add the following dependency to your `pubspec.yaml`:

   ```yaml
   dependencies:
     customer_pulse_flutter: ^latest_version
   ```

2. Install the package:

   ```
   flutter pub get
   ```

## Usage

### 1. Import the Plugin

```dart
import 'package:customer_pulse_flutter/customer_pulse_flutter.dart';
```

### 2. Full page survey

Use the following code to display the survey form in a **full page**:

```dart
CustomerPulseFlutter().showSurveyPage(
  context, 
  appId: 'com.kalvad.example', 
  linkOrToken: 'F/AH/'
);
```

### 3. Bottom sheet survey

Use the following code to display the survey form in a **bottom sheet**:

```dart
CustomerPulseFlutter().showSurveyBottomSheet(
  context, 
  appId: 'com.kalvad.example', 
  linkOrToken: 'F/AH/'
);
```

### Parameters

| Name         | Type                    | Description                                                               | Default |
|--------------|-------------------------|---------------------------------------------------------------------------|---------|
| `context`    | `BuildContext`          | Widget context used for navigation                                        |         |
| `appId`      | `String`                | Application ID provided by the Customer Pulse Survey provider             |         |
| `linkOrToken`| `String`                | Link ID or token provided by the Customer Pulse Survey provider           |         |
| `options`    | `Map<String, String>`   | Options such as language (`lang`) for the survey                          |         |

#### Example Usage of `options`:

```dart
CustomerPulseFlutter().showSurveyPage(
  context, 
  appId: 'com.kalvad.example', 
  linkOrToken: 'F/AH/',
  options: {'lang': 'en'}
);
```
```

## Contributions

We welcome contributions! Feel free to submit issues or pull requests with improvements or bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
