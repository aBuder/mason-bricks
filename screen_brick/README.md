# Screen Brick

A brick to create a screen using best practices and your state management of choice! Supports Bloc, Cubit.

## How to use 🚀

```
mason make screen_brick --screen_name login --state_management bloc --immutable_management freezed
```

## Variables ✨

| Variable           | Description                     | Default | Type      | Conditional | When             |
| ------------------ | ------------------------------- | ------- | --------- | ----------- | ---------------- |
| `screen_name`      | The name of the feature         | login   | `string`  | false       | N/A              |
| `state_management` | The state management of the app | bloc    | `enum`    | false       | N/A              |
| `immutable_management`    | Use the immutable package       | freezed    | `enum` | false        | Using freezed/equatable |

## Outputs 📦

### Bloc with freezed

`--screen_name login --state_management bloc --immutable_management freezed`

```
lib
├── main.dart
└── screen
    └── login
        ├── bloc
        │   ├── bloc.dart
        │   ├── login_bloc.dart
        │   ├── login_event.dart
        │   └── login_state.dart
        ├── content
        │   ├── content.dart
        │   ├── error_content.dart
        │   ├── initial_content.dart
        │   ├── loaded_content.dart
        │   └── loading_content.dart
        ├── login.dart
        ├── login_screen.dart
        └── widgets
            └── widgets.dart

test
├── screen
│   └── login
│       ├── bloc
│       │   └── login_bloc_test.dart
│       ├── content
│       │   ├── error_content_test.dart
│       │   ├── initial_content_test.dart
│       │   ├── loaded_content_test.dart
│       │   └── loading_content_test.dart
│       └── login_screen_test.dart
└── widget_test.dart      
```

### Bloc with equatable
`--screen_name login --state_management bloc --immutable_management equatable`

```
lib
├── main.dart
└── screen
    └── login
        ├── bloc
        │   ├── bloc.dart
        │   ├── login_bloc.dart
        │   ├── login_event.dart
        │   └── login_state.dart
        ├── content
        │   ├── content.dart
        │   ├── error_content.dart
        │   ├── initial_content.dart
        │   ├── loaded_content.dart
        │   └── loading_content.dart
        ├── login.dart
        ├── login_screen.dart
        └── widgets
            └── widgets.dart

test
├── screen
│   └── login
│       ├── bloc
│       │   └── login_bloc_test.dart
│       ├── content
│       │   ├── error_content_test.dart
│       │   ├── initial_content_test.dart
│       │   ├── loaded_content_test.dart
│       │   └── loading_content_test.dart
│       └── login_screen_test.dart
└── widget_test.dart
```

### Cubit with freezed

`--screen_name login --state_management cubit --immutable_management freezed`

```
lib
├── main.dart
└── screen
    └── login
        ├── content
        │   ├── content.dart
        │   ├── error_content.dart
        │   ├── initial_content.dart
        │   ├── loaded_content.dart
        │   └── loading_content.dart
        ├── cubit
        │   ├── cubit.dart
        │   ├── login_cubit.dart
        │   └── login_state.dart
        ├── login.dart
        ├── login_screen.dart
        └── widgets
            └── widgets.dart

test
├── screen
│   └── login
│       ├── content
│       │   ├── error_content_test.dart
│       │   ├── initial_content_test.dart
│       │   ├── loaded_content_test.dart
│       │   └── loading_content_test.dart
│       ├── cubit
│       │   └── login_cubit_test.dart
│       └── login_screen_test.dart
└── widget_test.dart      
```

### Cubit with equatable
`--screen_name login --state_management cubit --immutable_management equatable`

```
lib
├── main.dart
└── screen
    └── login
        ├── content
        │   ├── content.dart
        │   ├── error_content.dart
        │   ├── initial_content.dart
        │   ├── loaded_content.dart
        │   └── loading_content.dart
        ├── cubit
        │   ├── cubit.dart
        │   ├── login_cubit.dart
        │   └── login_state.dart
        ├── login.dart
        ├── login_screen.dart
        └── widgets
            └── widgets.dart

test
├── screen
│   └── login
│       ├── content
│       │   ├── error_content_test.dart
│       │   ├── initial_content_test.dart
│       │   ├── loaded_content_test.dart
│       │   └── loading_content_test.dart
│       ├── cubit
│       │   └── login_cubit_test.dart
│       └── login_screen_test.dart
└── widget_test.dart
```