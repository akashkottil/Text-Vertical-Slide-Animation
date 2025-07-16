# AnimatedPlaceholderText (SwiftUI)

A lightweight SwiftUI component that animates placeholder suggestions by sliding text **up and in**, giving your app a modern and dynamic feel.

Crafted with ❤️ by [Akash Kottil](https://github.com/akashkottil)

---

## ✨ Features

- 🔄 Smooth up-slide transition between placeholder texts  
- 🧩 Customizable suggestion list and interval  
- 💡 Lightweight and reusable  
- 🔍 Perfect for search bars or guided input  

---

## 📸 Preview

```swift
"Try searching flights"
"Try searching airlines"
"Try searching airports"
Text slides up with fade-in/out animation, rotating every few seconds.

🛠️ How to Use
1. Add the Swift File
Copy AnimatedPlaceholderText.swift into your SwiftUI project.

2. Use in Your View
swift
Copy
Edit
struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        VStack {
            if searchText.isEmpty {
                AnimatedPlaceholderText(
                    text: $searchText,
                    suggestions: ["flights", "airlines", "airports"],
                    interval: 3.0,
                    prefixText: "Try searching"
                )
                .frame(height: 20)
            }

            TextField("", text: $searchText)
                .padding()
                .background(Color.white)
                .cornerRadius(8)
        }
        .padding()
    }
}
🔧 Parameters
Property	Type	Description
text	Binding<String>	Bound text input (optional)
suggestions	[String]	List of animated suggestion words
interval	TimeInterval	Time between transitions (seconds)
prefixText	String	Text prefix shown before animation

📦 License
MIT License.
Feel free to use, fork, improve, and contribute!

🙋‍♂️ About Me
I’m Akash Kottil, a passionate iOS and cross-platform developer.
Follow me on GitHub for more cool open-source projects like this!

💡 Coming Soon
Let me know if you’d like:

A version that supports horizontal slide

Swift Playground compatible demo

Swift Package Manager setup

Happy Coding! 🚀

yaml
Copy
Edit

---

Let me know if you want:
- A `Package.swift` for SPM integration  
- A GitHub badge setup  
- Or Medium article content for this component!
