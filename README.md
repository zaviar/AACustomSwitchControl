# Advanced Custom Switch Control in SwiftUI

A powerful and flexible **Custom Switch Control** for SwiftUI, offering multiple layouts, styles, and animations.

---

## Features

- 🧩 **Multiple Layouts**  
  Choose between `horizontal` and `vertical` switch layouts.  

- 🎨 **Custom Styles**  
  - Gradient Background  
  - Circular Toggle with Icons  
  - Flat Minimalistic Style  

- ✨ **Smooth Animations**  
  Built-in spring and ease-in-out animations.  

- 🔄 **Dynamic Binding**  
  Supports two-way binding for real-time state updates.  

---

## Requirements

- **iOS 15.0+**
- **Xcode 14+**
- **SwiftUI**

---

## How to Use

1. Clone the repository:  

   ```bash
   git clone https://github.com/zaviar/AACustomSwitchControl.git
   cd AdvancedCustomSwitchControl

2.	Import CustomSwitchControl into your project.
3.	Add the switch to your SwiftUI view:

    ```bash
    struct ContentView: View {
        @State private var isOn: Bool = false
    
        var body: some View {
            CustomSwitchControl(
                labelText: "Enable Feature",
                isOn: $isOn,
                layout: .horizontal,
                style: .gradient,
                switchTint: .blue
            )
            .padding()
        }
      }

---

## Customization

### Parameters

| **Parameter** | **Type**           | **Description**                                      |
|---------------|--------------------|----------------------------------------------------|
| `labelText`   | `String`           | Text displayed next to the switch.                |
| `isOn`        | `Binding<Bool>`    | Tracks the toggle state dynamically.              |
| `labelColor`  | `Color`            | Sets the label text color.                        |
| `switchTint`  | `Color`            | Defines the tint color of the switch.             |
| `layout`      | `Layout`           | Choose between `.horizontal` or `.vertical`.      |
| `style`       | `Style`            | Define the switch appearance (`.gradient`, `.circular`, `.flat`). |
| `animation`   | `Animation`        | Animation applied during toggle state change.     |

---

## Contributing

Contributions are welcome! If you find any issues or have suggestions, feel free to open an issue or create a pull request.
