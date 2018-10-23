

import UIKit

class Dialog: UIViewController {

    var isAdReady: Bool = false
    
    @IBOutlet weak var isAdReadyLabel: UILabel!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if isAdReady == true
        {
            isAdReadyLabel.text = "Ad is ready. Click button to show it"
        }else{
            isAdReadyLabel.text = "Ad is not ready. Something went wrong"
        }

}

    @IBAction func watchAdButtonPressed(_ sender: Any) {
    //???
        //What is the code required here to close the PopupDialog
        //and run first function in MainVC
    //???
        
    }
    
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
