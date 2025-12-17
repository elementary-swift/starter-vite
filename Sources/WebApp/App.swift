import ElementaryUI

@main
struct App {
  static func main() {
    let app = Application(ContentView())
    app.mount(in: .body)
  }
}
