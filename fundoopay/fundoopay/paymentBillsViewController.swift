//
//  paymentBillsViewController.swift
//  fundoopay
//
//  Created by BridgeLabz on 02/09/17.
//  Copyright © 2017 Self Emp. All rights reserved.
//

import UIKit


private let cellReuseIdentifier = "tableCell"

class paymentBillsViewController: UIViewController, UITableViewDelegate , UITableViewDataSource {
    
    //MARK:-Variables
    let nameArray = ["Mohan" , "Kalpesh" , "Alkesh" , "Rahul" , "Mukesh"]
    let mobileArray = ["9988776655" , "9876543321" , "7865432512" , "8976453424" , "8877665544"]
    let addressArray = ["801 Sai samarth Business Park, Deonar Road, Deonar, Mumbai, Maharashtra, 400088"]
    fileprivate var texts = ["Edit", "Delete", "Report"]
    
    fileprivate var popover: Popover!
    fileprivate var popoverOptions: [PopoverOption] = [
        .type(.down),
        .blackOverlayColor(UIColor(white: 0.0, alpha: 0.0)),
        .arrowSize(CGSize(width:1 , height:1 ))
        
    ]
    var tableView1 = UITableView()
    @IBOutlet weak var fundoopay_Label: UILabel!
    @IBOutlet weak var BillLabel: UILabel!
    
    @IBOutlet weak var amountLabel: UILabel!
    
    @IBOutlet weak var stack_View: UIView!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var extraMenuButton: UIButton!
    
    @IBOutlet weak var menuButton: UIButton!
    
    @IBOutlet weak var firstButton: UIButton!
    
    @IBOutlet weak var addUserButton: UIButton!
    
    
    var path: UIBezierPath!
    let shapeLayer = CAShapeLayer()
    let myTextLayer = CATextLayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setFundoopay_Label()
        let modelName = UIDevice.current.modelName
        print("device name ::",modelName)
        // Do any additional setup after loading the view.
        self.set_BazierPath()
        self.setBottum_Button()
        
        let nib = UINib(nibName: "customerCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "tableCell")

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        
        
        if let touch = touches.first {
            let currentPoint = touch.location(in: self.view)
            
            if path.contains(currentPoint){
                //tap detected do what ever you want ..;)
                
                
                print(" in path")
                
            }else{
                //ooops you taped on other position in view
                
                print("not in path")
                
            }
            // do something with your currentPoint
        }
        
    }

    
    override func viewWillLayoutSubviews() {
        self.set_BazierPath()
    }
    
    func setBottum_Button()
    {
        //menu button
        
        self.menuButton.layer.cornerRadius = 0.5 * self.menuButton.frame.size.width
        self.menuButton.clipsToBounds = true
        
        //first button
        self.firstButton.layer.cornerRadius = 0.5 * self.firstButton.frame.size.width
        self.firstButton.clipsToBounds = true

        //add user button
        self.addUserButton.layer.cornerRadius = 0.5 * self.firstButton.frame.size.width
        self.addUserButton.clipsToBounds = true

    }
    
    func set_BazierPath()
    {
    

        print("size :: ,%@",self.view.bounds.size)
       
        let xPosition = CGFloat( (self.view.bounds.size.width)/2)
        let yPosition = CGFloat( 55.0)
        let width = CGFloat( (self.view.bounds.size.width)/2)
        let height = CGFloat( 50.0)
        
        let xOrigin = xPosition - (width/7)
        let sOrigin = xPosition + (width/7)
        
        
        //Generate path for shapelayer
        path = UIBezierPath()
        path.move(to: CGPoint(x: xOrigin , y: yPosition)) // ul 187.5 , 55
        path.addLine(to: CGPoint(x: xPosition  , y: yPosition+height))//dl 187.5 , 105
        path.addLine(to: CGPoint(x: xPosition+width, y: yPosition+height))//dr 375 , 105
        path.addLine(to: CGPoint(x: xPosition+width , y: yPosition)) //ur 375 , 55
        path.close()
        
        //fill shapelayer
        shapeLayer.strokeColor = UIColor.clear.cgColor
        shapeLayer.fillColor = UIColor.rgbColor(red: 255, green: 128, blue: 0).cgColor
        shapeLayer.path = path.cgPath
        
        
        self.view.layer.addSublayer(shapeLayer)
        
        
        //draw textLayer on button
        self.myTextLayer.string = "Outstanding Amounts"
        myTextLayer.fontSize = 16
        myTextLayer.backgroundColor = UIColor.clear.cgColor
        myTextLayer.foregroundColor = UIColor.white.cgColor
        myTextLayer.frame = CGRect(x: xPosition, y: yPosition+15, width: 170, height: 30)
        self.view.layer.addSublayer(myTextLayer)
    }
    
    func setFundoopay_Label()
    {
        
        let attrs1 = [NSFontAttributeName : UIFont.boldSystemFont(ofSize: 22), NSForegroundColorAttributeName : UIColor.rgbColor(red: 181, green: 199, blue: 223)]
        
        let attrs2 = [NSFontAttributeName : UIFont.boldSystemFont(ofSize: 22), NSForegroundColorAttributeName : UIColor.rgbColor(red: 255, green: 128, blue: 0)]
        
        let attributedString1 = NSMutableAttributedString(string:"fundoo", attributes:attrs1)
        
        let attributedString2 = NSMutableAttributedString(string:"pay", attributes:attrs2)
        
        attributedString1.append(attributedString2)
        self.fundoopay_Label.attributedText = attributedString1
        self.fundoopay_Label.font = UIFont.systemFont(ofSize: 22, weight: UIFontWeightHeavy)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.set_BazierPath()
    }
    
    
    
    @IBAction func extraMenuButton_Pressed(_ sender: Any) {
        
         tableView1 = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width/2, height: 135))
//        tableView.delegate = self
//        tableView.dataSource = self
        
        
        tableView1.layer.shadowColor = UIColor.darkGray.cgColor
        
        tableView1.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            
            tableView1.layer.shadowOpacity = 1.0
        
            tableView1.layer.shadowRadius = 4
            
            // This is for rounded corners
            
            tableView1.layer.cornerRadius = 10
            
            tableView1.layer.masksToBounds = true
        
        tableView1.isScrollEnabled = false
        self.popover = Popover(options: self.popoverOptions)
        self.popover.willShowHandler = {
            print("willShowHandler")
        }
        self.popover.didShowHandler = {
            print("didDismissHandler")
        }
        self.popover.willDismissHandler = {
            print("willDismissHandler")
        }
        self.popover.didDismissHandler = {
            print("didDismissHandler")
        }
        //self.popover.show(tableView1, fromView: self.extraMenuButton)
        popover.show(tableView1, point: CGPoint(x: self.extraMenuButton.frame.maxX, y: extraMenuButton.frame.maxY))
        //popover.show(tableView1, fromView: extraMenuButton, inView: extraMenuButton)
    }
    
    
    
    @IBAction func menuButton_Pressed(_ sender: UIButton) {
        
        UIView.animate(withDuration:0.3, animations: { () -> Void in
            if sender.transform == .identity {
                sender.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI * 0.999))
        
                //firsbutton animation
                self.firstButton.frame = CGRect(x: self.firstButton.frame.origin.x, y: self.firstButton.frame.origin.y-50, width: self.firstButton.frame.size.width, height: self.firstButton.frame.size.height)
               
                //add user button animation
                self.addUserButton.frame = CGRect(x: self.addUserButton.frame.origin.x, y: self.addUserButton.frame.origin.y-100, width: self.addUserButton.frame.size.width, height: self.addUserButton.frame.size.height)

                
            } else {
                sender.transform = .identity
                                //first button animation
                                self.firstButton.frame = CGRect(x: self.firstButton.frame.origin.x, y: self.firstButton.frame.origin.y+50, width: self.firstButton.frame.size.width, height: self.firstButton.frame.size.height)
                
                //add user button animation
                                self.addUserButton.frame = CGRect(x: self.addUserButton.frame.origin.x, y: self.addUserButton.frame.origin.y+100, width: self.addUserButton.frame.size.width, height: self.addUserButton.frame.size.height)
            }
        })
    }
    
    //MARK:- tableViewDataSource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! customerCell
        cell.nameLabel.text = nameArray[indexPath.row]
        cell.addressLabel.text = addressArray[0]
        cell.mobileNoLabel.text = mobileArray[indexPath.row]
        return cell
    }

}
