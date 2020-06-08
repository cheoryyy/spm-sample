import Foundation

struct SPMLibrary {
    var text = "Hello, World!"
}

public class SPMTestLibrary {
    
    func testLibrary() -> String {
        return SPMLibrary.init().text
    }
}
