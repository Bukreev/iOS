
import UIKit

@IBDesignable class ProfileButton: UIButton {
    
    static let typeLogin = "login"
    static let typeLogout = "logout"
    
    @IBInspectable var buttonBackgroundColor: UIColor = .cyan {
        didSet {
            backgroundColor = buttonBackgroundColor
        }
    }
    
    @IBInspectable var buttonCornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = buttonCornerRadius
        }
    }
    
    @IBInspectable var buttonTextColor: UIColor = .white {
        didSet {
            setTitleColor(buttonTextColor, for: .normal)
        }
    }
    
    @IBInspectable var type: String = ProfileButton.typeLogin {
        didSet{
            if self.type == ProfileButton.typeLogin {
                buttonBackgroundColor = .green
                buttonTextColor = .orange
                setTitle("Login", for: .normal)
            } else if self.type == ProfileButton.typeLogout {
                buttonBackgroundColor = .red
                buttonTextColor = .blue
                setTitle("Logout", for: .normal)
            }
        }
    }
}
