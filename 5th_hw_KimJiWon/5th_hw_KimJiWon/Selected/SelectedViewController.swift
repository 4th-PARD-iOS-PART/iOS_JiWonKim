import UIKit

class SelectedViewController: UIViewController {
    
    var titleText: String?
    var titleImage: UIImage?
    
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
        
        tableViewUI.register(SelectedCustomCell.self, forCellReuseIdentifier: "Cell")
        tableViewUI.showsVerticalScrollIndicator = false
        tableViewUI.backgroundColor = .black
        
        // Play Button
        let playButton : UIButton = {
            var config = UIButton.Configuration.filled()
            config.background.backgroundColor = UIColor.white
            config.title = "Play"
            config.image = UIImage(named:"list2")
            config.imagePadding = 8
            config.titlePadding = 8
            config.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
            config.baseForegroundColor = .black
            let playButton = UIButton(configuration: config)
            playButton.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
            playButton.translatesAutoresizingMaskIntoConstraints = false
            return playButton
        }()
        tableViewUI.addSubview(playButton)
        
        // download Button
        let downloadButton : UIButton = {
            var config = UIButton.Configuration.filled()
            config.background.backgroundColor = #colorLiteral(red: 0.2128768861, green: 0.2128768861, blue: 0.2128768861, alpha: 1)
            config.title = "Download"
            config.image = UIImage(named:"download2")
            config.imagePadding = 8
            config.titlePadding = 8
            config.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
            config.baseForegroundColor = .gray
            let downloadButton = UIButton(configuration: config)
            downloadButton.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
            downloadButton.translatesAutoresizingMaskIntoConstraints = false
            return downloadButton
        }()
        tableViewUI.addSubview(downloadButton)
        
        NSLayoutConstraint.activate([
            tableViewUI.topAnchor.constraint(equalTo: view.topAnchor),
            tableViewUI.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableViewUI.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableViewUI.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            // Play 오토레이아웃 설정
            playButton.widthAnchor.constraint(equalTo: tableViewUI.widthAnchor),
            playButton.topAnchor.constraint(equalTo: tableViewUI.bottomAnchor, constant: 350),
            playButton.centerXAnchor.constraint(equalTo: tableViewUI.centerXAnchor),
            
            // Play 오토레이아웃 설정
            downloadButton.widthAnchor.constraint(equalTo: tableViewUI.widthAnchor),
            downloadButton.topAnchor.constraint(equalTo: playButton.bottomAnchor, constant: 8),
            downloadButton.centerXAnchor.constraint(equalTo: tableViewUI.centerXAnchor)
        ])
    }
}

extension SelectedViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = SelectedMockData.modeling[section].count
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableViewUI.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? SelectedCustomCell else {
            print("Failed to dequeue SearchCustomCell")
            return UITableViewCell()
        }
        
        
        let item = SelectedMockData.modeling[indexPath.section][indexPath.row]
        cell.configure(with: item.name, remind: item.name2, series: item.name3, title4: item.title4, title5: item.title5, tvma: item.name5, title6: item.title6, vision: item.name7, hd: item.name8, ad: item.name9, title10: item.title10, title11: item.title11, mylist2: item.name12, rate2: item.name13, share2: item.name14, frame: item.name15, season5: item.name16,
                       ep: item.name17, title18: item.title18, title19: item.title19, title20: item.title20,
                       ep2: item.name21, title22: item.title22, title23: item.title23, title24: item.title24,
                       ep3: item.name25, title26: item.title26, title27: item.title27, title28: item.title28,
                       ep4: item.name29, title30: item.title30, title31: item.title31, title32: item.title32,
                       ep5: item.name33, title34: item.title34, title35: item.title35, title36: item.title36,
                       ep6: item.name37, title38: item.title38, title39: item.title39, title40: item.title40)
        cell.selectionStyle = .none
        
        cell.image.image = titleImage
        cell.label4.text = titleText
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        switch section {
//        case 0: return "Notifications"
//        default: return nil
//        }
//    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1500    }
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 50.0
//    }

//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = UIView()
//        headerView.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
//
//        let headerImage = UIImageView()
//            headerImage.translatesAutoresizingMaskIntoConstraints = false
//            headerImage.image = UIImage(named: "bell") // 원하는 이미지로 변경
//            headerImage.contentMode = .scaleAspectFit
//
//        let headerTitle = UILabel()
//        headerTitle.translatesAutoresizingMaskIntoConstraints = false
//        headerTitle.text = "Notifications"
//        headerTitle.font = UIFont.systemFont(ofSize: 16.91, weight: .bold)
//        headerTitle.textColor = .white
//        
//        headerView.addSubview(headerImage)
//        headerView.addSubview(headerTitle)
//        
//        NSLayoutConstraint.activate([
//            headerImage.widthAnchor.constraint(equalToConstant: 19),
//            headerImage.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 15),
//            headerImage.centerYAnchor.constraint(equalTo: headerView.centerYAnchor),
//                    
//            headerTitle.leadingAnchor.constraint(equalTo: headerImage.trailingAnchor, constant: 7),
//            headerTitle.centerYAnchor.constraint(equalTo: headerView.centerYAnchor)
//        ])
//
//        return headerView
//    }
}

// main poster 크기 및 위치 조절

