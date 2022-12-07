import ArgumentParser

@main
struct Displays: ParsableCommand {
  @Option(
    name: .shortAndLong,
    help: "Write to file instead of stdout."
  )
  var output: String?

  mutating func run() throws {
    switch (Display.all.json, output) {
    case (let json, .none):
      print(json)

    case (let json, .some(let output)):
      try json.write(
        toFile: output,
        atomically: true,
        encoding: .utf8
      )
    }
  }
}
