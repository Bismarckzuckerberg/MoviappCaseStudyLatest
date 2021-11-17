import UIKit

extension UITableViewCell {
    
    // MARK: - Static Properties

    static var reuseIdentifier: String {
        return String(describing: self)
    }

}
extension UICollectionViewCell {
    
    // MARK: - Static Properties

    static var identifier: String {
        return String(describing: self).components(separatedBy: ".").last!
    }
}
