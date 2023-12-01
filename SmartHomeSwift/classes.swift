
import Foundation

func getInt(prompt: String) -> Int {
  print(prompt)
  if let input = readLine(){
    if let integer = Int(input){
      return integer
    }
  }
  return -1
}
 
func getStr(prompt: String) -> String {
  print(prompt)
  if let input = readLine(){
    return input
  }
  return "-1"
}
 
func getDouble(prompt: String) -> Double{
  print(prompt)
  if let input = readLine(){
    if let double = Double(input){
      return double
    }
  }
  return -1.0
}

class Device{
    private var state = true // true is on and false is off
    private var deviceName = String()
    
    func toggleDeviceState(){
        state = !state
        switch state{
        case true:
            print("\(deviceName): Successfully switched on")
        case false:
            print("\(deviceName): Successfully switched off")
        }
    }
    func outputStatus(){
        print(state)
    }
    
    init(deviceName: String = String()) {
        self.deviceName = deviceName
    }
    
}

class Lighting: Device{
    private var colour = String()
    private var luminance = Int()
    
    func changeColour(){
        let colourToChangeTo = getStr(prompt: "Which colour would you like to change your light to?")
        self.colour = colourToChangeTo
    }
    func changeLuminance(){
        let luminanceToChangeTo = getInt(prompt: "Set the brightness of the light (1-10)?")
        self.luminance = luminanceToChangeTo
    }
}

class SoundSystem: Device{
    private var volume = Int()
    private var surroundSound
}
