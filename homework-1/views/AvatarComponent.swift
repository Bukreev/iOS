
import UIKit

@IBDesignable class AvatarComponent: UIView {
    
    private weak var componentView: UIView?
    
    @IBInspectable var componentBackgroundColor: UIColor = .black {
        didSet {
            componentView?.backgroundColor = componentBackgroundColor
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    private func configure() {
        let bundle = Bundle.main
        let nib = bundle.loadNibNamed("AvatarComponent", owner: nil, options: nil)
        if let view = nib?[0] as? UIView {
            componentView = view
            addSubview(view)
        }
    }
}
