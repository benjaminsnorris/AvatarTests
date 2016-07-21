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
    
    
    // MARK: - Lifecycle overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
    }
    
    // MARK: - Navigation
    
    @IBAction func unwindToMain(segue: UIStoryboardSegue) {
        update()
    }

}


// MARK: - Private functions

private extension Main {
    
    private func update() {
        guard let person = PersonService.currentPerson else { reset(); return }
        avatar.update(with: person)
        name.text = person.name
    }
    
    private func reset() {
        avatar.reset()
        name.text = nil
    }
    
}
