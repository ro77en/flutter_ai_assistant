# AI Assistant

AI Assistant is an AI-powered application featuring a chatbot, image generator, and language translator. The app leverages Google's Gemini for chatbot capabilities, providing a sophisticated and interactive user experience.

**Figma Wireframes**: https://www.figma.com/design/dlZT060YThLMGbbQTnpIG8/AI_Assistant?node-id=0-1&t=YCEl0KAmG7deYt5n-1

## Features

- **Chatbot**: Interact with the AI-powered chatbot to get answers, have conversations, and receive assistance.
- **Image Generator** (Coming Soon): Generate images using AI.
- **Language Translator** (Coming Soon): Translate text between different languages.
- **Save Chat History**: Save your chat history for future reference.

## Getting Started

### Prerequisites

- Flutter SDK (>=3.4.0 <4.0.0)
- Dart SDK

### Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/your-username/ai_assistant.git
   cd ai_assistant
   ```

2. **Install dependencies**:

   ```bash
   flutter pub get
   ```

3. **Run the app**:
   ```bash
   flutter run
   ```
4. **IMPORTANT**:
   Inside the `helper` folder, create a file named api_key.dart. In this file you must declare a const apiKey, containing your Gemini API Key.

### Directory Structure

```
ai_assistant/
│
├── lib/
│   ├── api/               # API calling
│   ├── controller/        # Chatbot logics
│   ├── helper/            # Global variables and routes preferencies
│   ├── model/             # Data models / class interfaces
│   ├── screen/            # Screen/pages of the application
│   |      └── features/   # Application features
│   ├── widget/            # User interface components
│   └── main.dart          # Main entry point of the application
│
├── assets/
│   ├── images/          # Image assets
│   └── lottie/          # Lottie animation files
│
├── test/                # Unit and widget tests
│
├── pubspec.yaml         # Project dependencies
└── README.md            # Project documentation
```

## Dependencies

- **flutter**: Core framework for Flutter.
- **cupertino_icons**: iOS styled icons.
- **google_generative_ai**: Integrates Google Gemini.
- **intl**: Internationalization and localization support.
- **animated_text_kit**: Animated text widgets.
- **shared_preferences**: Store simple data persistently.
- **lottie**: Render Lottie animations.
- **hive**: Lightweight and fast key-value database.
- **isar_flutter_libs**: Isar database support for Flutter.
- **path_provider**: Access to commonly used storage locations.
- **get**: State management.
- **flutter_animate**: Custom animations.
- **http**: Simplified HTTP requests.

## Dev Dependencies

**flutter_test**: Testing framework for Flutter.
**flutter_lints**: Linting rules for Flutter.
**icons_launcher**: Utility for changing app icons.

## Usage

Upon launching the app, you can interact with the chatbot by typing messages. The chatbot can respond to queries, provide information, and assist with various tasks. Future updates will include image generation and language translation features.

## Contributing

1. Fork the repository.
2. Create a new branch: git checkout -b feature-branch.
3. Make your changes and commit them: git commit -m 'Add new feature'.
4. Push to the branch: git push origin feature-branch.
5. Submit a pull request.

## Contact

Created by Lucas Maia Dantas - lucasmdantas9@gmail.com

Feel free to reach out if you have any questions or suggestions!
