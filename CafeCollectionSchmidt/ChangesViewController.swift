import UIKit

class ChangesViewController: UIViewController {
    
    @IBOutlet weak var deleteItemOutlet: UITextField!
    @IBOutlet weak var addPriceOutlet: UITextField!
    @IBOutlet weak var addMenuOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func deleteMenuAction(_ sender: UIButton) {
        for i in 0...foodNames.count-1{
            if deleteItemOutlet.text == foodNames[i]{
                foodNames.remove(at: i)
            }
        }
        deleteItemOutlet.text = ""
    }
    @IBAction func addMenuAction(_ sender: UIButton) {
        for i in 0...foodNames.count-1{
            if addMenuOutlet.text != nil && addPriceOutlet.text != nil{
                foodNames.append(addMenuOutlet.text!)
                foodPrices.append(Double(addPriceOutlet.text!)!)
            }
        }
            
        
    }
    
    
    

}
