import Cocoa
func isPangram(_ str : String) -> String{
    let pangram = "abcdefghijklmnopqrstuvwxyz"
    var input = str
    input = input.replacingOccurrences(of: " ", with: "")
    input = input.lowercased()
    var atLeastOnce = ""
    for char in input{
        if (pangram.contains(char) && !atLeastOnce.contains(char)){
            atLeastOnce += String(char)
            if (atLeastOnce.count == 26){
                return "Pangram"
            }
        }
    }
    return "Not Pangram"
}
_ = isPangram("")
