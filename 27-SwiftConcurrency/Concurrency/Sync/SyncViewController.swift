import UIKit

class SyncViewController: UIViewController {

    @IBOutlet weak var loader: UIActivityIndicatorView!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    
    @IBAction func download(_ sender: Any) {
        loader.startAnimating()
        imageView1.image = ImageDownloader.shared.download(url: URL.sampleUrl1)
        imageView2.image = ImageDownloader.shared.download(url: URL.sampleUrl2)
        imageView3.image = ImageDownloader.shared.download(url: URL.sampleUrl3)
        loader.stopAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

