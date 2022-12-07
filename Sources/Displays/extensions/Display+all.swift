import AppKit

extension Display {
  static var all: [Self] {
    NSScreen.screens.map { screen in
      Self(
        name: screen.localizedName,
        resolution: .init(
          width: screen.frame.width,
          height: screen.frame.height
        ),
        safeAreaInsets: screen.safeAreaInsets,
        isMain: NSScreen.main == screen,
        isDeepest: NSScreen.deepest == screen
      )
    }
  }
}
