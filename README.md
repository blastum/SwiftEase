# SwiftEase

Swift extensions for functional programming patterns.

## 🎯 Philosophy

SwiftEase follows functional programming principles with focus on:

- Type inference and implicit returns
- Functional manipulation over imperative loops  
- Immutability and method chaining

## ✨ Extensions

### Optional Extensions

```swift
// Functional nil-coalescing
let name: String? = nil
let displayName = name.or("Anonymous")  // "Anonymous"

// State checking
let hasValue = name.isSet    // false
let isEmpty = name.isNil     // true

// Functional chains
let values = ["hello", nil, "world", nil]
let activeValues = values.filter { $0.isSet }
```

### Bool Extensions

```swift
// Conditional execution
let isLoggedIn = true
let welcomeMessage = isLoggedIn.if("Welcome back!")  // "Welcome back!"

// Functional if-else
let hasPermission = false
let status = hasPermission.if("Granted", else: "Denied")  // "Denied"

// Method chaining
let results = [true, false, true]
    .map { $0.if("✅", else: "❌") }  // ["✅", "❌", "✅"]
```

### Castable Protocol

```swift
// Safe type casting
let value: String = "Hello"
let result = value.cast(String.self)  // "Hello"
let failed = value.cast(Int.self)     // nil

// Works with collections
let numbers: [Int] = [1, 2, 3]
let same = numbers.cast([Int].self)     // [1, 2, 3]
let different = numbers.cast([String].self)  // nil
```

## 🚀 Installation

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/blastum/SwiftEase.git", from: "1.0.0")
]
```

### Xcode

1. File → Add Package Dependencies
2. Enter: `https://github.com/blastum/SwiftEase.git`

## 💡 Usage Examples

### Data Processing

```swift
import SwiftEase

let userInputs: [String?] = ["alice", nil, "bob", "", nil, "charlie"]

let validUsers = userInputs
    .filter { $0.isSet }
    .compactMap { $0 }
    .filter { !$0.isEmpty }
    .map { $0.capitalized }
// Result: ["Alice", "Bob", "Charlie"]
```

### Conditional Logic

```swift
let user = (isAdmin: true, isActive: false)

let accessLevel = user.isAdmin.if(
    user.isActive.if("Admin", else: "Inactive Admin"),
    else: "User"
)
// Result: "Inactive Admin"
```

## 🧪 Testing

```bash
swift test
```

## 📋 Development

See [`.ai-instructions`](.ai-instructions) for coding standards.

## 🤝 Contributing

1. Follow functional programming patterns
2. Include tests
3. Use descriptive test names
4. Follow coding standards in `.ai-instructions`

---

**SwiftEase**: Functional Swift extensions. 