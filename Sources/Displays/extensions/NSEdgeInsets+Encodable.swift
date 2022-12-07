import AppKit

extension NSEdgeInsets: Encodable {
  enum CodingKeys: String, CodingKey {
    case top
    case left
    case bottom
    case right
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(top, forKey: .top)
    try container.encode(left, forKey: .left)
    try container.encode(bottom, forKey: .bottom)
    try container.encode(right, forKey: .right)
  }
}
