import Cocoa
import FlutterMacOS

@NSApplicationMain
class AppDelegate: FlutterAppDelegate {
  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
  let googleMapsAPIKey = "AIzaSyDEFbHe4um5QIVdHxvB4DV-bFgzwMUdKzU"
    GMSServices.provideAPIKey(googleMapsAPIKey)
    return true
  }
}
