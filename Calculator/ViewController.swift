import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultText: UITextField!
    @IBOutlet var leftBraketButton: UIButton!
    @IBOutlet var rightBraketButton: UIButton!
    @IBOutlet var clearButton: UIButton!
    @IBOutlet var deleteButton: UIButton!

    @IBOutlet var divideButton: UIButton!
    @IBOutlet var multiplyButton: UIButton!
    @IBOutlet var minusButton: UIButton!
    @IBOutlet var plusButton: UIButton!
    @IBOutlet var dotButton: UIButton!
    @IBOutlet var equalButton: UIButton!

    @IBOutlet var button0: UIButton!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        bindButtonEvent()
    }

    func bindButtonEvent() {
        leftBraketButton.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        rightBraketButton.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        divideButton.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        multiplyButton.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        minusButton.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        plusButton.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        dotButton.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)

        button0.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        button1.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        button2.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        button3.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        button4.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        button5.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        button6.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        button7.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        button8.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        button9.addTarget(self, action: "buttonEvent:", forControlEvents: UIControlEvents.TouchUpInside)

        clearButton.addTarget(self, action: "clearButtonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        deleteButton.addTarget(self, action: "deleteButtonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        equalButton.addTarget(self, action: "equalButtonEvent:", forControlEvents: UIControlEvents.TouchUpInside)
    }

    func buttonEvent(sender: UIButton) {
        resultText.text = resultText.text! + sender.titleLabel!.text!
    }

    func clearButtonEvent(sender: UIButton) {
        resultText.text = ""
    }

    func equalButtonEvent(sender: UIButton) {
        //todo
    }

    func deleteButtonEvent(sender: UIButton) {
        let result = resultText.text! as NSString
        if result.length - 1 >= 0 {
            resultText.text! = result.substringWithRange(NSRange(location: 0, length: result.length - 1))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}