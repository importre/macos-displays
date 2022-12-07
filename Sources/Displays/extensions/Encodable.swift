import Foundation

extension Encodable {
  var json: String {
    let encoder = JSONEncoder()
    encoder.outputFormatting = [.prettyPrinted, .sortedKeys]

    guard
      let data = try? encoder.encode(self),
      let json = String(data: data, encoding: .utf8)
    else {
      return "[]"
    }

    return json
  }
}
