import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webkitView: WKWebView!
    
    var imdbId: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        if let id = self.imdbId, let url = URL(string: Domain.imdbUrl + id) {
            let request = URLRequest(url: url)
            webkitView.load(request)
            webkitView.allowsBackForwardNavigationGestures = true
        }
    }
}
