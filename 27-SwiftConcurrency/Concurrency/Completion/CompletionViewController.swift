
import UIKit

class CompletionViewController: UIViewController {

    @IBOutlet weak var loader: UIActivityIndicatorView!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    
    @IBAction func download(_ sender: Any) {
        loader.startAnimating()
        
        ImageDownloader.shared.download(url: URL.sampleUrl1) { image, error in
            if let error = error {
                print(error)
            }
            
            guard let image = image else {
                return
            }
            
            self.imageView1.image = image
        }
        
        ImageDownloader.shared.download(url: URL.sampleUrl2) { image, error in
            if let error = error {
                print(error)
            }
            
            guard let image = image else {
                return
            }
            
            self.imageView2.image = image
        }
        
        ImageDownloader.shared.download(url: URL.sampleUrl3) { image, error in
            if let error = error {
                print(error)
            }
            
            guard let image = image else {
                return
            }
            
            self.imageView3.image = image
            self.loader.stopAnimating()
        }
                
//        self.loader.stopAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
}
