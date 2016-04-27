import Foundation

struct Person{
    
    enum Errors : ErrorType{
        case InvalidName(String)
    }
    
    let name: String
    init(name incomingName: String) throws{
        
        if incomingName.characters.count < 5{
            throw Errors.InvalidName(incomingName)
        }
        
        name = incomingName
        
    }
}
