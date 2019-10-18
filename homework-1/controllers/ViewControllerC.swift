

import UIKit

class ViewControllerC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func popToRootController() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func popWithChangeStack() {
        if let firstController = navigationController?.viewControllers.first {
            navigationController?.setViewControllers([firstController], animated: true)
        }
    }

}
