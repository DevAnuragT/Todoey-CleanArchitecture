
# Todoey App

Todoey is a simple task management app built with Flutter, following the principles of Clean Architecture. This app allows users to add, toggle, and delete tasks, and it persists data using `shared_preferences` so that tasks are saved between app sessions.

## Table of Contents

- [Features](#features)
- [Architecture](#architecture)
- [Installation](#installation)
- [Usage](#usage)
- [Directory Structure](#directory-structure)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)

## Features 

- Add new tasks
- Mark tasks as completed or incomplete
- Delete tasks
- Data persistence using `shared_preferences`

## Architecture

The app is built using the principles of Clean Architecture to ensure separation of concerns and maintainability. The architecture consists of the following layers:

1. **Presentation Layer**: Contains the UI code and is responsible for displaying the data to the user. It includes Flutter widgets and state management using Provider.
2. **Domain Layer**: Contains the business logic. It includes entities and use cases.
3. **Data Layer**: Responsible for data retrieval. It includes repositories and data sources.

## Installation

Download apk from Releases.

## Usage

1. Open the app.
2. Add tasks by tapping the "Add Task" button.
3. Mark tasks as completed by checking the checkbox next to each task.
4. Long press on a task to delete it.

## Directory Structure

```plaintext
lib
│
├── models
│   └── task.dart
│   └── list_data.dart
│
├── screens
│   ├── task_screen.dart
│   └── add_task.dart
│
├── widgets
│   ├── task_list.dart
│   └── list_tile.dart
│
└── main.dart
```

### Explanation

- **models**: Contains the data models used in the app.
- **screens**: Contains the different screens/views of the app.
- **widgets**: Contains reusable widgets.
- **main.dart**: The entry point of the app.


## Screenshots

<div style="display: flex; flex-wrap: wrap;">
  <img src="https://github.com/DevAnuragT/Todoey-FlutterAPP/assets/97083108/143881e0-bd6a-49eb-af69-363b27dbf83d" width="250" style="margin: 10px;">
  <img src="https://github.com/DevAnuragT/Todoey-FlutterAPP/assets/97083108/5a888bfc-bc84-43fc-9601-322423dcfbba" width="250" style="margin: 10px;"></br>
  <img src="https://github.com/DevAnuragT/Todoey-FlutterAPP/assets/97083108/a140e706-9f99-4c01-98ad-3c47e1f7ec2b" width="250" style="margin: 10px;">
  <img src="https://github.com/DevAnuragT/Todoey-FlutterAPP/assets/97083108/bc265684-ffb4-4318-882d-f77f6809c1be" width="250" style="margin: 10px;">
</div>

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any changes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---
