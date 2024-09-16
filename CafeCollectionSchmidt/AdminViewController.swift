import UIKit

class AdminViewController: UIViewController {

    @IBOutlet weak var labelOutlet: UILabel!
    
  
    
    
    @IBOutlet weak var passwordOutlet: UITextField!
    var pass = "AvaIsCool"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func loginAction(_ sender: Any) {
        if passwordOutlet.text == pass{
            print("Yes")
        }
        else{
            print("No")
            labelOutlet.text = "Wrong Password"
        }
    }
    

}
