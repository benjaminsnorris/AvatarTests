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
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var close: UIBarButtonItem!
    
    
    // MARK: - Internal properties
    
    var personService = PersonService.sharedInstance
    
    
    // MARK: - Lifecycle overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerForKeyboardNotifications()
        
        close.accessibilityLabel = NSLocalizedString("Close", comment: "Button title")
        
        guard let person = personService.currentPerson else { return }
        firstName.text = person.firstName
        lastName.text = person.lastName
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        view.endEditing(true)
    }
    
}


// MARK: - Adjusting scroll view

extension Settings: AdjustingScrollView {
    
    var scrollViewToAdjust: UIScrollView? {
        return scrollView
    }
    
    func keyboardWillShow(_ notification: Notification) {
        keyboardWillAppear(notification)
    }
    
    func keyboardWillHide() {
        keyboardWillDisappear()
    }
    
}


// MARK: - Text field delegate

extension Settings: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == firstName {
            personService.saveFirstName(textField.text)
        } else if textField == lastName {
            personService.saveLastName(textField.text)
        }
    }
    
}
