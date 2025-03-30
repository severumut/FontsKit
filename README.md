# FontsKit

**FontsKit** is a modular Swift Package that provides a type-safe, centralized, and scalable way to use SF Pro font styles in SwiftUI. It’s built on top of `Font` extensions and follows the exact naming and structure defined by your design system.

---

## 🚀 Installation

### Swift Package Manager (SPM)

1. Open your Xcode project
2. Go to **File > Add Packages…**
3. Enter your repository URL:
   ```
   https://github.com/your-username/FontsKit.git
   ```

Or manually add to your `Package.swift`:

```swift
.package(url: "https://github.com/your-username/FontsKit.git", from: "1.0.0")
```

Then import the package where needed:

```swift
import FontsKit
```

---

## 🧑‍💻 Usage

Fonts are applied via `.font(...)` using static properties added to `Font`.

```swift
Text("Welcome")
    .headerFont(.h1, .medium, foregroundStyle: .accentColor)

Text("Description")
    .bodyFont(.medium, .semibold, foregroundStyle: .yellow)
```

You don’t need to manually remember sizes, weights, or font families. All values are predefined and safely accessible.

---

## ✅ Features

- 🧠 Auto-complete support with static access
- 🧩 Fully modular per font type (headers, body, buttons, etc.)
- 🚀 SwiftUI-friendly and zero config
- 🎯 Design system compliant
- ✅ Pure SF Pro usage — no custom font registration required

---

## 📄 License

FontsKit is released under the MIT License.
