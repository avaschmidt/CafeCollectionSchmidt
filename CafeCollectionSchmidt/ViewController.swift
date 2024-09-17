import UIKit

//creating parallel arrays
var foodNames = ["Coffee","Tea","Bagel","Crossiant","Scone"]
var foodPrices = [2.50,2.75,3.50,3.00,3.25]



class ViewController: UIViewController {
//Creating Outlets
    @IBOutlet weak var addOutlet: UIButton!
   
    @IBOutlet weak var menuOutlet: UITextView!
    
@IBOutlet weak var errorOutlet: UILabel!

@IBOutlet weak var cartOutlet: UITextView!
    
@IBOutlet weak var itemNameOutlet: UITextField!

@IBOutlet weak var quantityOutlet: UITextField!
    
    
    //creating variables
    var priceTotal = 0.00
    var isThere = false
    
    //creating empty dictionary
    var cart = [String : Int]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuOutlet.text = ""
        var i = 0
        while i<foodNames.count{
            print("Looping")
            menuOutlet.text += "\n\(foodNames[i]) : \(foodPrices[i])"
            i = i + 1 }
        
       }
    
    //Creating add button
    @IBAction func addAction(_ sender: UIButton) {
        //Resigning keyboard after click
        itemNameOutlet.resignFirstResponder()
        quantityOutlet.resignFirstResponder()
        //getting input from user and storing into variables
        cartOutlet.text = ""
        
        
        if itemNameOutlet.text != nil && Int(quantityOutlet.text!) != nil {
            errorOutlet.text = ""
            for i in 0..<foodNames.count{
                if itemNameOutlet.text == foodNames[i]{
                    isThere = true
                    if cart[itemNameOutlet.text!] == nil{
                        cart[itemNameOutlet.text!] = Int(quantityOutlet.text!)
                        
                        for(key,value) in cart{
                            cartOutlet.text += "\n\(key) ... QTY: \(value)"
                            
                        }
                        for i in 0..<foodNames.count{
                            if foodNames[i] == itemNameOutlet.text!{
                                priceTotal += foodPrices[i] * Double(quantityOutlet.text!)!
                            }
//
                        }
                        
                        cartOutlet.text += "\n Cart Total: $\(priceTotal) USD"
                        
                    }
                    else{
                        errorOutlet.text = "ERROR: Item Already In Cart"
                        for(key,value) in cart{
                            cartOutlet.text += "\n\(key) ... QTY: \(value)"
                        }
                        cartOutlet.text += "\n Cart Total: $\(priceTotal) USD"
                    }
                }
                
                
            }
            if isThere == false{
                errorOutlet.text = "ERROR: Enter Menu Item"
                print("ERROR SECOND CHECK")
                for(key,value) in cart{
                    cartOutlet.text += "\n\(key) ... QTY: \(value)"
                }
                cartOutlet.text += "\n Cart Total: $\(priceTotal) USD"
            }
            
            
            
        }
        else{
            errorOutlet.text = "ERROR: Enter Valid Information"
            print("ERROR FIRST CHECK")
            for(key,value) in cart{
                cartOutlet.text += "\n\(key) ... QTY: \(value)"
            }
            cartOutlet.text += "\n Cart Total: $\(priceTotal) USD"
        }
        isThere = false
        itemNameOutlet.text = ""
        quantityOutlet.text = ""
    
    }//end of add button
    

}//end of class

