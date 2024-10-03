import UIKit

class ComingSoonViewController: UIViewController {
    
    var tableViewUI: UITableView!
    var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: false)
        setUI()
        tableViewUI.dataSource = self
        tableViewUI.delegate = self
        if #available(iOS 15.0, *) {
            tableViewUI.sectionHeaderTopPadding = 1
        }
        tableViewUI.reloadData()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        updateLayout()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func setUI() {
        view.backgroundColor = .black
        
        tableViewUI = {
            let tableView = UITableView(frame: .zero, style: .grouped)
            tableView.backgroundColor = .black
            tableView.translatesAutoresizingMaskIntoConstraints = false
            return tableView
        }()
        view.addSubview(tableViewUI)
        
        tableViewUI.register(ComingSoonCustomCell.self, forCellReuseIdentifier: "Cell")
        
        NSLayoutConstraint.activate([
            tableViewUI.topAnchor.constraint(equalTo: view.topAnchor),
            tableViewUI.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableViewUI.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableViewUI.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func updateLayout() {
        tableViewUI.frame = view.bounds
    }
}

extension ComingSoonViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = ComingSoonMockData.modeling[section].count
//        print("numberOfRowsInSection called. Returning \(count) for section \(section)")
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableViewUI.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ComingSoonCustomCell else {
            print("Failed to dequeue SearchCustomCell")
            return UITableViewCell()
        }
        
        switch indexPath.section {
        case 0:
            cell.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        default:
            cell.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
        cell.textLabel?.text = ComingSoonMockData.modeling[indexPath.section][indexPath.row].title
        cell.textLabel?.textColor = .white
        cell.textLabel?.font = UIFont.systemFont(ofSize: 14.72)
        cell.selectionStyle = .none
        let imageName = ComingSoonMockData.modeling[indexPath.section][indexPath.row].name
            if let image = UIImage(named: imageName) {
                // 이미지 크기 조절
                let size = CGSize(width: 375, height: 195) // 원하는 크기로 설정
                UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
                image.draw(in: CGRect(x: 0, y: 0, width: 375, height: 195))
                let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
                UIGraphicsEndImageContext()
                
                cell.imageView?.image = resizedImage
                cell.imageView?.contentMode = .scaleAspectFit // 이미지가 왜곡되지 않도록 설정
            }
            
            // 이미지 뷰 크기 조정

        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Notifications"
        default: return nil
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 385.0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 58.0
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        let headerImage = UIImageView()
            headerImage.translatesAutoresizingMaskIntoConstraints = false
            headerImage.image = UIImage(named: "bell") // 원하는 이미지로 변경
            headerImage.contentMode = .scaleAspectFit

        let headerTitle = UILabel()
        headerTitle.translatesAutoresizingMaskIntoConstraints = false
        headerTitle.text = "Notifications"
        headerTitle.font = UIFont.systemFont(ofSize: 16.91, weight: .bold)
        headerTitle.textColor = .white

        headerView.addSubview(headerImage)
        headerView.addSubview(headerTitle)

        NSLayoutConstraint.activate([
            headerImage.widthAnchor.constraint(equalToConstant: 19),
            headerImage.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 15),
            headerImage.centerYAnchor.constraint(equalTo: headerView.centerYAnchor),
            headerImage.widthAnchor.constraint(equalToConstant: 40),  // 이미지 너비 설정
            headerImage.heightAnchor.constraint(equalToConstant: 40), // 이미지 높이 설정
                    
            headerTitle.leadingAnchor.constraint(equalTo: headerImage.trailingAnchor, constant: 7),
            headerTitle.centerYAnchor.constraint(equalTo: headerView.centerYAnchor)
        ])

        return headerView
    }
}

// cell 이미지 및 title 위치 조절
// cell 간 간격 늘리기
// cell 테두리 설정
//
