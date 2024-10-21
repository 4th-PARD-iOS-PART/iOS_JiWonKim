import UIKit

class SearchViewController: UIViewController {
    
    var tableViewUI: UITableView!
    var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        tableViewUI.dataSource = self
        tableViewUI.delegate = self
        if #available(iOS 15.0, *) {
            tableViewUI.sectionHeaderTopPadding = 1
        }
        tableViewUI.reloadData()
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func setUI() {
        view.backgroundColor = .black
        searchBar = {
            let searchbar = UISearchBar()
            searchbar.translatesAutoresizingMaskIntoConstraints = false
            searchbar.placeholder = "Search for a show, movie, genre, e.t.c."
            searchbar.searchBarStyle = .minimal
            searchbar.searchTextField.backgroundColor = #colorLiteral(red: 0.3278294206, green: 0.3278294206, blue: 0.3278294206, alpha: 1)
            searchbar.searchTextField.textColor = .white
            searchbar.searchTextField.leftView?.tintColor = #colorLiteral(red: 0.8110429645, green: 0.8110429049, blue: 0.8110429049, alpha: 1)
            searchbar.searchTextField.attributedPlaceholder = NSAttributedString(
                string: "Search for a show, movie, genre, e.t.c.",
                attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.8110429645, green: 0.8110429049, blue: 0.8110429049, alpha: 1) ])
            
            searchbar.searchTextField.layer.cornerRadius = 5
            searchbar.searchTextField.clipsToBounds = true
            searchbar.layer.borderWidth = 0
            searchbar.layer.borderColor = .none
            searchbar.setImage(UIImage(named: "voice"), for: .clear, state: .normal) // voice 버튼 설정
            
            if let micImage = UIImage(named: "voice")?.resized(to: CGSize(width: 12.95, height: 17.58)) {  // voice 크기 조절
                searchbar.setImage(micImage, for: .clear, state: .normal)
            }
            
            return searchbar
        }()
        
        tableViewUI = {
            let tableView = UITableView(frame: .zero, style: .grouped)
            tableView.backgroundColor = .black
            tableView.translatesAutoresizingMaskIntoConstraints = false
            return tableView
        }()
        
        view.addSubview(searchBar)
        view.addSubview(tableViewUI)
        
        tableViewUI.register(SearchCustomCell.self, forCellReuseIdentifier: "Cell")
        tableViewUI.showsVerticalScrollIndicator = false
        tableViewUI.backgroundColor = .black
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 13),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -13),
            searchBar.heightAnchor.constraint(equalToConstant: 48.12),
            
            tableViewUI.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 11),
            tableViewUI.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableViewUI.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableViewUI.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = SearchMockData.modeling[section].count
//        print("numberOfRowsInSection called. Returning \(count) for section \(section)")
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableViewUI.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? SearchCustomCell else {
            print("Failed to dequeue SearchCustomCell")
            return UITableViewCell()
        }
        
        let item = SearchMockData.modeling[indexPath.section][indexPath.row]
        cell.configure(with: item.title, imageName: item.name, playbtn: item.name2)
        cell.selectionStyle = .none

        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Top Searches"
        default: return nil
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 93.0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40.0
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        
        headerView.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)

        let headerTitle = UILabel()
        headerTitle.translatesAutoresizingMaskIntoConstraints = false
        headerTitle.text = "Top Searches"
        headerTitle.font = UIFont.systemFont(ofSize: 26.75, weight: .bold)
        headerTitle.textColor = .white

        headerView.addSubview(headerTitle)

        NSLayoutConstraint.activate([
            headerTitle.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 0),
            headerTitle.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 8),
            headerTitle.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -8),
            headerTitle.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 0)
        ])

        return headerView
    }
}

extension UIImage {
    func resized(to size: CGSize) -> UIImage? {
        let renderer = UIGraphicsImageRenderer(size: size)
        return renderer.image { _ in
            self.draw(in: CGRect(origin: .zero, size: size))
        }
    }
}



