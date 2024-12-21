// TabBar(Home)
import UIKit

class HomeViewController: UIViewController {
    
    let tableViewUI: UITableView = {
        var tableVIew = UITableView()
        tableVIew.backgroundColor = .black
        tableVIew.translatesAutoresizingMaskIntoConstraints = false
        return tableVIew
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        navigationController?.setNavigationBarHidden(true, animated: false)
        tableViewUI.dataSource = self
        tableViewUI.delegate = self
        tableViewUI.register(TableCustomCell.self, forCellReuseIdentifier: "Cell")
        setUI()
        if #available(iOS 15.0, *) { // section간 간격 없애기
            tableViewUI.sectionHeaderTopPadding = 0
        }
        
    }
    func setUI(){        
        // scrollView 설정
        let scrollView: UIScrollView = {
            let scrollViews = UIScrollView()
            scrollViews.translatesAutoresizingMaskIntoConstraints = false
            return scrollViews
        }()
        view.addSubview(scrollView)
        
        // contentView 설정
        let contentView: UIView = {
            let contents = UIView()
            contents.backgroundColor = .clear
            contents.translatesAutoresizingMaskIntoConstraints = false
            return contents
        }()
        scrollView.addSubview(contentView)
        
        // ScrollView(mainImage + buttons)
        let backgroundImage: UIImageView = {
            let mainImage = UIImageView()
            mainImage.translatesAutoresizingMaskIntoConstraints = false
            mainImage.image = UIImage(named: "insideout") // mainImage 설정
            mainImage.contentMode = .scaleAspectFill // 이미지 비율 유지
            return mainImage
            }()
        contentView.addSubview(backgroundImage) // mainImage 화면에 보이게 설정
        
        // Neflix Logo
        let netflixLogo: UIButton = {
            let button = UIButton(type: .custom)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setImage(UIImage(named: "logo"), for: .normal)
            button.imageView?.contentMode = .scaleAspectFit
            return button
        }()
        contentView.addSubview(netflixLogo)
        
        // TV Shows
        let tvShows: UILabel = {
            let labels = UILabel()
            labels.translatesAutoresizingMaskIntoConstraints = false
            labels.text = "TV Shows"
            labels.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            labels.font = UIFont(name: "SF Pro Display", size: 17.2)
            labels.textAlignment = .center
            return labels
        }()
        contentView.addSubview(tvShows)
        
        // Movies
        let movies: UILabel = {
            let labels = UILabel()
            labels.translatesAutoresizingMaskIntoConstraints = false
            labels.text = "Movies"
            labels.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            labels.font = UIFont(name: "SF Pro Display", size: 17.2)
            labels.textAlignment = .center
            return labels
        }()
        contentView.addSubview(movies)

        // 상단 My List
        let myList: UILabel = {
            let labels = UILabel()
            labels.translatesAutoresizingMaskIntoConstraints = false
            labels.text = "My List"
            labels.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            labels.font = UIFont(name: "SF Pro Display", size: 17.2)
            labels.textAlignment = .center
            return labels
        }()
        contentView.addSubview(myList)

        // 하단 My List Button
        let myListButton : UIButton = {
            var config = UIButton.Configuration.filled()
            config.background.backgroundColor = .clear
            config.imagePadding = 6
            config.imagePlacement = .top
            if let image = UIImage(named: "plus"){
                let size = CGSize(width: 24, height: 24)
                UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
                image.draw(in: CGRect(origin: .zero, size: size))
                let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
                UIGraphicsEndImageContext()
                config.image = scaledImage
            }
            var text = AttributedString.init("My List")
            text.foregroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            text.font = UIFont.systemFont(ofSize: 15 , weight: .light)
            config.attributedTitle = text
            let button = UIButton(configuration: config)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        contentView.addSubview(myListButton)
        
        // 하단 Play Button
        let playButton : UIButton = {
            var config = UIButton.Configuration.filled()
            config.background.backgroundColor = UIColor.lightGray
            config.title = "Play"
            config.image = UIImage(named:"list")
            config.imagePadding = 15
            config.titlePadding = 15
            config.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
            config.baseForegroundColor = .black
            let playButton = UIButton(configuration: config)
            playButton.titleLabel?.font = UIFont.systemFont(ofSize: 20.46, weight: .bold)
            playButton.translatesAutoresizingMaskIntoConstraints = false
            return playButton
        }()
        contentView.addSubview(playButton)
        
        // 하단 Info Button
        let InfoButton : UIButton = {
            var config = UIButton.Configuration.filled()
            config.background.backgroundColor = .clear
            config.imagePadding = 6
            config.imagePlacement = .top
            if let image = UIImage(named: "info"){
                let size = CGSize(width: 24, height: 24)
                UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
                image.draw(in: CGRect(origin: .zero, size: size))
                let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
                UIGraphicsEndImageContext()
                config.image = scaledImage
            }
            var text = AttributedString.init("Info")
            text.foregroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            text.font = UIFont.systemFont(ofSize: 15 , weight: .light)
            config.attributedTitle = text
            let button = UIButton(configuration: config)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        contentView.addSubview(InfoButton)
        contentView.addSubview(tableViewUI)
        tableViewUI.isScrollEnabled = false // TableView Scroll 막기

        
        NSLayoutConstraint.activate([
            // ScrollView 오토레이아웃 설정
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            backgroundImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            backgroundImage.heightAnchor.constraint(equalToConstant: 315),
            
            // ContentView 오토레이아웃 설정
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            // Netflix Logo 오토레이아웃 설정
            netflixLogo.widthAnchor.constraint(equalToConstant: 53),
            netflixLogo.heightAnchor.constraint(equalToConstant: 57),
            netflixLogo.topAnchor.constraint(equalTo: contentView.topAnchor),
            netflixLogo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 3),
            
            // TV Shows 오토레이아웃 설정
            tvShows.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15.18),
            tvShows.leadingAnchor.constraint(equalTo: netflixLogo.trailingAnchor, constant: 23.68),
            tvShows.trailingAnchor.constraint(equalTo: movies.leadingAnchor, constant: -39.4),
            
            // Movies 오토레이아웃 설정
            movies.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15.18),
            movies.leadingAnchor.constraint(equalTo: tvShows.trailingAnchor, constant: 39.4),
            movies.trailingAnchor.constraint(equalTo: myList.leadingAnchor, constant: -39.85),
            
            // 상단 My List 오토레이아웃 설정
            myList.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15.18),
            myList.leadingAnchor.constraint(equalTo: movies.trailingAnchor, constant: 39.85),
            
            // 하단 My List 오토레이아웃 설정
            myListButton.topAnchor.constraint(equalTo: netflixLogo.bottomAnchor, constant: 325),
            myListButton.trailingAnchor.constraint(equalTo: playButton.leadingAnchor, constant: -23),
            
            // 하단 Play 오토레이아웃 설정
            playButton.widthAnchor.constraint(equalToConstant: 134),
            playButton.topAnchor.constraint(equalTo: netflixLogo.bottomAnchor, constant: 324),
            playButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            // 하단 Info 오토레이아웃 설정
            InfoButton.topAnchor.constraint(equalTo: netflixLogo.bottomAnchor, constant: 324),
            InfoButton.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: 31.37),
            
            tableViewUI.topAnchor.constraint(equalTo: InfoButton.bottomAnchor, constant: 30),
            tableViewUI.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            tableViewUI.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            tableViewUI.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            tableViewUI.heightAnchor.constraint(equalToConstant: 1300)
        ])
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return MockData.modeling[section].count
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableViewUI.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableCustomCell else {
            return UITableViewCell()
        }

        switch indexPath.section {
        case 0:
            cell.getSectionNumber(num: 0)
        case 1:
            cell.getSectionNumber(num: 1)
        case 2:
            cell.getSectionNumber(num: 2)
        case 3:
            cell.getSectionNumber(num: 3)
        case 4:
            cell.getSectionNumber(num: 4)
        case 5:
            cell.getSectionNumber(num: 5)
        default:
            cell.getSectionNumber(num: 0)
        }
        cell.backgroundColor = .clear // 셀의 배경색을 투명하게 설정
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Popular on Netflix"
        case 1: return "Trending Now"
        case 2: return "Top 10 in Nigeria Today"
        case 3: return "My List"
        case 4: return "African Movies"
        default: return nil
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return HomeMockData.modeling.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 161.0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .black
        
        let headerTitle = UILabel()
        headerTitle.translatesAutoresizingMaskIntoConstraints = false
        headerTitle.text = "Section \(section)"
        headerTitle.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        headerTitle.textColor = .white
        
        switch section {
        case 0:
            headerTitle.text = "Popular on Netflix"
        case 1:
            headerTitle.text = "Trending Now"
        case 2:
            headerTitle.text = "Top 10 in Nigeria Today"
        case 3:
            headerTitle.text = "My List"
        case 4:
            headerTitle.text = "African Movies"
        case 5:
            headerTitle.text = "Hollywood Movies & TV"
        default:
            headerTitle.text = "Section \(section + 1)"
        }
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


