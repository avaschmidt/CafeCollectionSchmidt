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
            performSegue(withIdentifier: "loginSegue", sender: nil)
        }
        else{
            print("No")
            labelOutlet.text = "Wrong Password"
        }
    }
    

}
