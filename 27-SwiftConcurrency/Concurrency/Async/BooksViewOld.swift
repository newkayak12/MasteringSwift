//import UIKit
//
//class BooksViewController: UIViewController {
//
//    @IBOutlet weak var listTableView: UITableView!
//    
//    var list = [BookList.Book]()
//    
//    func fetchBooks(completion: @escaping ([BookList.Book], Error?) -> ()) {
//        guard let url = URL(string: "https://kxcoding-study.azurewebsites.net/api/books") else {
//            DispatchQueue.main.async {
//                completion([], NetworkError.invalidUrl)
//            }
//            return
//        }
//        
//        let task = URLSession.shared.dataTask(with: url) { data, response, error in
//            if let error = error {
//                DispatchQueue.main.async {
//                    completion([], error)
//                }
//                return
//            }
//            
//            guard let httpResponse = response as? HTTPURLResponse else {
//                DispatchQueue.main.async {
//                    completion([], NetworkError.invalidResponse)
//                }
//                return
//            }
//            
//            guard httpResponse.statusCode == 200 else {
//                DispatchQueue.main.async {
//                    completion([], NetworkError.failed(httpResponse.statusCode))
//                }
//                return
//            }
//            
//            guard let data = data else {
//                DispatchQueue.main.async {
//                    completion([], NetworkError.emptyData)
//                }
//                return
//            }
//            
//            do {
//                let decoder = JSONDecoder()
//                let list = try decoder.decode(BookList.self, from: data)
//                
//                DispatchQueue.main.async {
//                    completion(list.list, nil)
//                }
//            } catch {
//                DispatchQueue.main.async {
//                    completion([], error)
//                }
//            }
//        }
//        task.resume()
//    }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        fetchBooks { books, error in
//            if let error = error {
//                print(error.localizedDescription)
//            }
//            
//            self.list = books
//            self.listTableView.reloadData()
//        }
//    }
//}
//
//extension BooksViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return list.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        
//        let target = list[indexPath.row]
//        cell.textLabel?.text = target.title
//        cell.detailTextLabel?.text = target.description
//        
//        return cell
//    }
//}
