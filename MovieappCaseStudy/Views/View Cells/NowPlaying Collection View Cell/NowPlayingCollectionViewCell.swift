import UIKit
import SDWebImage

class NowPlayingCollectionViewCell: UICollectionViewCell {
    

    // MARK - Connection Objects
    
    @IBOutlet weak private var posterImage: UIImageView!
    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak private var descriptionLabel: UILabel!
    
    
    var dataSource: Movie? {
        didSet {
            setData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
      }
    
    func setData() {
        self.posterImage.sd_setImage(with: URL(string: (Domain.tmdbImageUrl + (self.dataSource?.backdropPath)!)), placeholderImage: #imageLiteral(resourceName: "emptyimage"), options: SDWebImageOptions.scaleDownLargeImages, context: nil)
        DispatchQueue.main.async {
            if let title = self.dataSource?.title {
                self.titleLabel.text =  title + " (" + (self.dataSource?.releaseDate?.toDateString(dateFormatter: DateFormatter(format: "yyyy-mm-dd"), outputFormat: "yyyy"))! + ")"
                
                
            }
            self.descriptionLabel.text = self.dataSource?.overview
        }
    }
}
