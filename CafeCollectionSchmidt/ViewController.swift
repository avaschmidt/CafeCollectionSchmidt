import UIKit

class ViewController: UIViewController {
//Creating Outlets
    @IBOutlet weak var addOutlet: UIButton!
   
    @IBOutlet weak var menuOutlet: UITextView!
    
@IBOutlet weak var errorOutlet: UILabel!

@IBOutlet weak var cartOutlet: UITextView!
    
@IBOutlet weak var itemNameOutlet: UITextField!

@IBOutlet weak var quantityOutlet: UITextField!
    
    //creating parallel arrays
    var foodNames = ["Coffee","Tea","Bagel","Crossiant","Scone"]
    var foodPrices = [2.50,2.75,3.50,3.00,3.25]
    
    //creating empty dictionary
    var cart = [String : Int]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       //Attempted to put text in textview...
        //Did not show up? Why?
        menuOutlet.text = ""
        var i = 0
        while i<foodNames.count{
            print("Looping")
            menuOutlet.text += "\(foodNames[i]) : \(foodPrices[i])"
            i = i + 1 }
        
       }
    
    //Creating add button
    @IBAction func addAction(_ sender: UIButton) {
        //Resigning keyboard after click
        itemNameOutlet.resignFirstResponder()
        quantityOutlet.resignFirstResponder()
        //getting input from user and storing into variables
        var name = itemNameOutlet.text!
        var qty = Int(quantityOutlet.text!)
       
        
    }
    

}

