import Foundation

struct AXEngine {

    func axFocusedElement() -> AXUIElement? {
        let axSystemWideElement = AXUIElementCreateSystemWide()

        var axFocusedElement: AnyObject?
        
        let axError = AXUIElementCopyAttributeValue(axSystemWideElement, kAXFocusedUIElementAttribute as CFString, &axFocusedElement)
        
        guard axError == .success else {
            print(axError.rawValue)
            
            return nil
        }

        return axFocusedElement as! AXUIElement?
    }

}
