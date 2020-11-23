import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

var str = "Hello, playground"

func json(input: Any) {
  // Ensure we’re working with a deserialized JSON object
  let object: Any
  if let string = input as? String, let data = string.data(using: .utf8) {
    // If the input was `String`, deserialize it
    object = try! JSONSerialization.jsonObject(with: data, options: [])
  } else if let data = input as? Data {
    // If the input was `Data`, deserialize it
    object = try! JSONSerialization.jsonObject(with: data, options: [])
  } else {
    object = input
  }

  // Convert the object pretty printed JSON data
  let jsonData = try! JSONSerialization.data(withJSONObject: object, options: [.prettyPrinted])

  // Convert the pretty printed JSON data to a `String`
  let jsonString = String(data: jsonData, encoding: .utf8)!

  // Print the result
  print(jsonString)
}

