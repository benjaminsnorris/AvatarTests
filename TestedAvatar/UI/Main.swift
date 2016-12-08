//    ______
//   /  __  \
//  |  /  \  |
//  |  \  /  |
//  |  /__\  |
//   \______/
//

import UIKit

class Main: UIViewController {

    // MARK: - IB properties
    
    @IBOutlet weak var avatar: AvatarView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var settings: UIBarButtonItem!
    
    
    // MARK: - Internal properties
    
    var personService = PersonService.sharedInstance
    
    
    // MARK: - Lifecycle overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
        settings.accessibilityLabel = NSLocalizedString("Settings", comment: "Button title")
    }
    
    // MARK: - Navigation
    
    @IBAction func unwindToMain(_ segue: UIStoryboardSegue) {
        update()
    }

}


// MARK: - Private functions

private extension Main {
    
    func update() {
        guard let person = personService.currentPerson else { reset(); return }
        avatar.update(with: person)
        avatar.accessibilityLabel = String.localizedStringWithFormat(NSLocalizedString("Avatar for %@", comment: "Parameter is the person's name"), person.name)
        name.text = person.name
    }
    
    func reset() {
        avatar.reset()
        name.text = nil
    }
    
}
