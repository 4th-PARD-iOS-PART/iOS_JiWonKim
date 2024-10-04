import UIKit

class ComingSoonViewController: UIViewController {
    
    var tableViewUI: UITableView!
    
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
        
        tableViewUI = {
            let tableView = UITableView(frame: .zero, style: .grouped)
            tableView.backgroundColor = .black
            tableView.translatesAutoresizingMaskIntoConstraints = false
            return tableView
        }()
        
        view.addSubview(tableViewUI)
        
        tableViewUI.register(ComingSoonCustomCell.self, forCellReuseIdentifier: "Cell")
        tableViewUI.showsVerticalScrollIndicator = false
        tableViewUI.backgroundColor = .black
        
        NSLayoutConstraint.activate([
            tableViewUI.topAnchor.constraint(equalTo: view.topAnchor),
            tableViewUI.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableViewUI.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableViewUI.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension ComingSoonViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = ComingSoonMockData.modeling[section].count
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableViewUI.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ComingSoonCustomCell else {
            print("Failed to dequeue SearchCustomCell")
            return UITableViewCell()
        }
        
        let item = ComingSoonMockData.modeling[indexPath.section][indexPath.row]
        cell.configure(with: item.name, remind: item.name2, title2: item.title2, share: item.name3, title3: item.title3, title4: item.title4, title5: item.title5, title6: item.title6, title7: item.title7)
        cell.selectionStyle = .none

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
        return 430.0    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
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
                    
            headerTitle.leadingAnchor.constraint(equalTo: headerImage.trailingAnchor, constant: 7),
            headerTitle.centerYAnchor.constraint(equalTo: headerView.centerYAnchor)
        ])

        return headerView
    }
}

// main poster 크기 및 위치 조절

