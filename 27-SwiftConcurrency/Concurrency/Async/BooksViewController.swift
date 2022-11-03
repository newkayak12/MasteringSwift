import UIKit

class BooksViewController: UIViewController {

    @IBOutlet weak var listTableView: UITableView!
    
    var list = [BookList.Book]()
    
    func fetchBooks() async throws {
        guard let url = URL(string: "https://kxcoding-study.azurewebsites.net/api/books") else {
            throw NetworkError.invalidUrl
        }
        
        if #available(iOS 15.0, *){
            let (data, response) = try await URLSession.shared.data(from: url)
            guard let httpResponse = response as? HTTPURLResponse else {
                throw NetworkError.invalidResponse
            }
            
            guard httpResponse.statusCode == 200 else {
                throw NetworkError.failed(httpResponse.statusCode)
            }

            let decoder = JSONDecoder()
            let result = try decoder.decode(BookList.self, from: data)
            list = result.list
            
            await MainActor.run{
                listTableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Task {
            do {
                try await fetchBooks()
            } catch {
                
            }
        }
    }
}

extension BooksViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let target = list[indexPath.row]
        cell.textLabel?.text = target.title
        cell.detailTextLabel?.text = target.description
        
        return cell
    }
}
