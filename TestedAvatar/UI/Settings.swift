//    ______
//   /  __  \
//  |  /  \  |
//  |  \  /  |
//  |  /__\  |
//   \______/
//

import UIKit

class Settings: UIViewController {
    
    // MARK: - IB properties
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    
}


// MARK: - Text field delegate

extension Settings: UITextFieldDelegate {
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}