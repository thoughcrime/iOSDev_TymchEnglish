# TymchEnglish 📚🎵

**English poems, rhymes and songs for kids** - An iOS app designed to help children learn English through interactive poetry and music.

![TymchEnglish Logo](TymchEnglish/Assets.xcassets/logo.imageset/logo.png)

## 📱 About the App

TymchEnglish is a comprehensive educational iOS application that provides a curated collection of English poems, nursery rhymes, and songs specifically designed for children. The app features an intuitive interface that makes learning English fun and engaging through interactive audio, video content, and organized categorization.

## ✨ Features

### 🎯 **Multi-Profile Support**
- Create and manage multiple user profiles
- Separate favorites and preferences for each child
- Guest profile for quick access

### 📚 **Comprehensive Content Library**
- **Many English poems and nursery rhymes**
- **Dual categorization system**:
  - **Thematic categories**: Animals, Colors, Body Parts, Seasons, Food, etc.
  - **Functional categories**: Counting, Actions, Fingerplays, Sound Imitation, etc.

### 🎵 **Interactive Audio Experience**
- High-quality audio playback for all poems
- Play/pause controls with visual feedback
- Automatic audio management across app navigation

### 🎬 **Video Integration**
- YouTube video links for visual learning
- Embedded video player with proper error handling
- Fallback for unavailable videos

### ❤️ **Favorites System**
- Save favorite poems per profile
- Easy access to liked content
- Swipe actions for quick management

### 🔍 **Smart Search**
- Real-time search through poem titles and lyrics
- Instant results as you type
- Full-text search capabilities

### 🎨 **Beautiful UI/UX**
- Modern SwiftUI interface
- Dark/Light mode support
- Custom color scheme with accessibility considerations
- Smooth animations and transitions

## 🏗️ Technical Architecture

### **Built With**
- **SwiftUI** - Modern declarative UI framework
- **AVFoundation** - Audio playback and management
- **WebKit** - Video content integration
- **UserDefaults** - Local data persistence
- **Combine** - Reactive programming patterns

### **Architecture Pattern**
- **MVVM (Model-View-ViewModel)** architecture
- **Singleton pattern** for shared services
- **Environment objects** for state management
- **ObservableObject** for reactive UI updates

### **Project Structure**
```
TymchEnglish/
├── Model/                 # Data models and business logic
│   ├── Poems.swift       # Poem data structure and content
│   ├── Categories.swift  # Category definitions
│   ├── Profiles.swift    # User profile management
│   ├── Favourites.swift  # Favorites system
│   └── AudioPlayer/      # Audio playback functionality
├── Views/                # Reusable UI components
│   ├── Cells/           # Custom table/collection view cells
│   ├── Poems/           # Poem-related views
│   ├── Profiles/        # Profile management views
│   └── BackgroundView.swift
├── Screens/             # Main app screens
│   ├── StartScreenView.swift
│   ├── TymchEnglishTabView.swift
│   ├── PoemCategories/  # Category and poem listing
│   ├── Liked/          # Favorites management
│   └── Info/           # App information
├── Utilities/           # Helper components and extensions
└── Assets.xcassets/     # Images, colors, and resources
```

## 🚀 Getting Started

### Prerequisites
- **Xcode 15.0+**
- **iOS 15.0+**
- **macOS** (for development)

## 📸 Screenshots

<div align="center">
  <img src="screenshots/start-screen.png" width="200" alt="Start Screen">
  <img src="screenshots/categories.png" width="200" alt="Categories">
  <img src="screenshots/poem-detail.png" width="200" alt="Poem Detail">
  <img src="screenshots/favorites.png" width="200" alt="Favorites">
  <img src="screenshots/profile-selection.png" width="200" alt="Profile Selection">
</div>

*Screenshots showing the main app interface and key features*

## 🎯 Target Audience

- **Children aged 2-8** learning English
- **Parents and educators** looking for quality educational content
- **ESL (English as a Second Language)** learners
- **Early childhood development** programs

## 📚 Content Categories

### Thematic Categories
- 🐾 **Animals and Insects** - Animal-themed poems and songs
- 🎨 **Colors** - Learning colors through poetry
- 👤 **Body Parts** - Interactive body part songs
- 🌅 **Seasons and Weather** - Seasonal and weather-related content
- 🍎 **Food and Kitchen** - Food-themed educational content
- 👶 **Baby Time** - Special content for very young children

### Functional Categories
- 🔢 **Counting** - Number-based songs and rhymes
- 🎭 **Actions** - Movement and action songs
- 🎵 **Sound Imitation** - Onomatopoeic content
- 🎤 **Sing-Along** - Interactive singing experiences
- 🎪 **Fingerplays** - Hand and finger movement activities

## 🔧 Development

### Key Components

#### **AudioPlayerManager**
- Singleton pattern for centralized audio control
- Automatic audio stopping when navigating away
- Error handling for missing audio files

#### **ProfileViewModel**
- Multi-profile management
- Persistent storage using UserDefaults
- Automatic guest profile creation

#### **Favourites System**
- Per-profile favorite management
- JSON-based persistence
- Real-time UI updates

### Code Quality
- ✅ **SwiftUI best practices** followed
- ✅ **Memory management** with proper weak references
- ✅ **Error handling** throughout the app
- ✅ **Accessibility** considerations implemented
- ✅ **Clean architecture** with separation of concerns

## 🤝 Contributing

We welcome contributions! Please feel free to:

1. **Fork the repository**
2. **Create a feature branch** (`git checkout -b feature/AmazingFeature`)
3. **Commit your changes** (`git commit -m 'Add some AmazingFeature'`)
4. **Push to the branch** (`git push origin feature/AmazingFeature`)
5. **Open a Pull Request**

### Contribution Guidelines
- Follow SwiftUI and iOS development best practices
- Add comments for complex logic
- Ensure all features work on both light and dark modes
- Test on different device sizes

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Oleh Tymchenko**
- Created: October 9, 2023
- Last Updated: December 2024

## 🙏 Acknowledgments

- **SwiftUI Community** for excellent documentation and examples
- **Apple Developer Documentation** for comprehensive iOS development resources
- **Educational Content Creators** who inspired the poem collection

## 📞 Support

If you have any questions or need support:

- 📧 **Email**: [olehtymchenko.dev@gmail.com]
- 🐛 **Issues**: [GitHub Issues](https://github.com/thoughcrime/TymchEnglish/issues)

---

<div align="center">
  <p>Made with ❤️ for children's education</p>
  <p>🌟 Star this repository if you find it helpful! 🌟</p>
</div> 