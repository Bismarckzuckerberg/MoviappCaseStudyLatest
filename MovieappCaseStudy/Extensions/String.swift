import Foundation
import UIKit

extension String {
    
    // Support Network
    var url: URL? {
    
        return URL(string: self)
    }

    // Calculate Size
    func textSize(of font: UIFont) -> CGSize {
        
        let size = self.size(withAttributes: [NSAttributedString.Key.font : font])
        return size
    }
    
}
