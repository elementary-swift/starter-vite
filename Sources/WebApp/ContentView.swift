import ElementaryUI

@View
struct ContentView {
    @State var count: Int = 0

    var angle: Angle {
        .degrees(Double(count) * 45)
    }

    var body: some View {
        div {
            h1 { "Swift in the Browser!" }

            Counter(value: $count)

            if count > 3 {
                p { "Count is greater than 3" }
                    .transition(.fade)
            }
            hr()
        }
        .animateContainerLayout()
        .animation(.smooth, value: count)

        RotatedText(angle: angle, text: "🚀🚀🚀")
            .animation(.bouncy(extraBounce: 0.3), value: angle)
    }
}

@View
struct Counter {
    @Binding var value: Int

    var body: some View {
        div {
            p { "Count: \(value)" }

            button { "Count Up" }
                .onClick { value += 1 }

            button { "Count Down" }
                .onClick { value -= 1 }

            button { "Reset" }
                .onClick { value = 0 }
        }
    }
}

@View
struct RotatedText {
    var angle: Angle
    var text: String

    var body: some View {
        div {
            p(.style(["width": "fit-content", "font-size": "50px"])) {
                text
            }
            .rotationEffect(angle)
        }
    }
}
