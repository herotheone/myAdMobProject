

import UIKit
import PopupDialog

class MainVC: UIViewController {
    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    var isAdReady:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Let's say the ad is ready to show.
        isAdReady = true
       
    }

    @IBAction func showDialogButtonPressed(_ sender: Any) {
        
        let StoryBoard = UIStoryboard.init(name: "Main", bundle: nil)
        
        let customVC = StoryBoard.instantiateViewController(withIdentifier: "dialogID") as! Dialog
        customVC.modalPresentationStyle = UIModalPresentationStyle.custom
        
        customVC.isAdReady = isAdReady
        
        let popup = PopupDialog(viewController: customVC)
        
        self.present(popup, animated: true, completion: nil)
    }
    
    func firstFunction() {
        firstLabel.text = "First Label Value Changed"
    }
    
    func secondFunction() {
        secondLabel.text = "Second Label Value Changed"
    }
    
}

