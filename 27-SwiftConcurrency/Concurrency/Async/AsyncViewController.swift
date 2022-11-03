
import UIKit

class AsyncViewController: UIViewController {

    @IBOutlet weak var loader: UIActivityIndicatorView!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
     
    func downloadImages() async throws {
        imageView1.image = try await ImageDownloader.shared.downloadAsync(url: URL.sampleUrl1)
        imageView2.image = try await ImageDownloader.shared.downloadAsync(url: URL.sampleUrl2)
        imageView3.image = try await ImageDownloader.shared.downloadAsync(url: URL.sampleUrl3)
    }
    
    
    @IBAction func download(_ sender: Any) /* async throws */ {
                                          //이러면 안된다. actionMethod를 비동기로 바꾸면 제대로 동작하지 않는다.
        
        loader.startAnimating()
        
        Task { //이렇게 Task로 감싸야 한다.
            //swift에서는 비동기 메소드는 비동기 메소드 안에서 호출해야 한다.
//            imageView1.image = try await ImageDownloader.shared.downloadAsync(url: URL.sampleUrl1)
//            imageView2.image = try await ImageDownloader.shared.downloadAsync(url: URL.sampleUrl2)
//            imageView3.image = try await ImageDownloader.shared.downloadAsync(url: URL.sampleUrl3)
            
            //Aysnc를 다른 쓰레드에서 실행하고 Main은 결과가 올 때까지 기다린다.
            //그냥 중단하고 기다리는게 아니라 쓰레드 제어권을 OS에 넘긴다. -> 메인쓰레드에 다른 역할을 하게 한다.
            //각각의 위치를 SuspensionPoint라고 부른다.
            //또 코드를 보면 try가 붙어 있어서 애러 핸들링도 여기서 할 수 있다.
            
            try await downloadImages()//이렇게 async 메소드에서 처리할 수도 있다. 동기 메소드 안에서 호출할 때는 Task로 감싼다.
            
            loader.stopAnimating() //이 코드는 위 await들이 다 끝나면 실행됨
            
            
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
