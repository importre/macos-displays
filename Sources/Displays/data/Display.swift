import Foundation

struct Display: Encodable {
  let name: String
  let resolution: Resolution
  let safeAreaInsets: NSEdgeInsets
  let isMain: Bool
  let isDeepest: Bool
}
