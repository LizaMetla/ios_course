//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

import Foundation

// Complete the alternatingCharacters function below.
func alternatingCharacters(s: String) -> Int {
    var count = 0
    var pc = s.characters.first
    for ch in s.characters.dropFirst() {
        if pc == ch { count += 1 } else { pc = ch }
    }
    return count
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let q = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

for qItr in 1...q {
    guard let s = readLine() else { fatalError("Bad input") }
    
    let result = alternatingCharacters(s: s)
    
    fileHandle.write(String(result).data(using: .utf8)!)
    fileHandle.write("\n".data(using: .utf8)!)
}
