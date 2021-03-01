import UIKit
import SharedCode
import Foundation

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 21))
        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.font = label.font.withSize(12)
        let wrapper = CommonKt.wrapper()
        label.text = String(describing: wrapper.myInlineClass!)
        view.addSubview(label)
    }
}
