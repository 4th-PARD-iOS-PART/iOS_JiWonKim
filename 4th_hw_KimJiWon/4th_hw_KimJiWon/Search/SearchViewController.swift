//
//  ViewController.swift
//  3rd_hw_KimJiWon
//
//  Created by KIM JIWON on 9/20/24.
//

import UIKit

class SearchViewController: UIViewController {
    
    // tableView 인스턴트 생성
    let tableViewUI: UITableView = {
        var tableVIew = UITableView()
        tableVIew.backgroundColor = .black
        tableVIew.translatesAutoresizingMaskIntoConstraints = false
        return tableVIew
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewUI.dataSource = self
        tableViewUI.delegate = self
        setUI()
        if #available(iOS 15.0, *) { // section간 간격 없애기
            tableViewUI.sectionHeaderTopPadding = 0
        }
    }
    
    func setUI(){
//        // scrollView 설정
//        let scrollView: UIScrollView = {
//            let scrollViews = UIScrollView()
//            scrollViews.translatesAutoresizingMaskIntoConstraints = false
//            return scrollViews
//        }()
//        view.addSubview(scrollView)
//        
//        // contentView 설정
//        let contentView: UIView = {
//            let contents = UIView()
//            contents.backgroundColor = .black
//            contents.translatesAutoresizingMaskIntoConstraints = false
//            return contents
//        }()
//        scrollView.addSubview(contentView)
        
        // searchBar 설정
        let searchBar: UISearchBar = {
            let searchbar = UISearchBar()
            searchbar.translatesAutoresizingMaskIntoConstraints = false
            searchbar.placeholder = "Search for a show, movie, genre, e.t.c."
            searchbar.barTintColor = #colorLiteral(red: 0.2588235294, green: 0.2588235294, blue: 0.2588235294, alpha: 1)
            searchbar.tintColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
            self.navigationItem.titleView = searchbar
            UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).defaultTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white] // searchbar에 입력되는 문자 색상
            return searchbar
        }()
        view.addSubview(searchBar)
        view.addSubview(tableViewUI)
        
        tableViewUI.register(SearchCustomCell.self, forCellReuseIdentifier: "SearchCell")
        tableViewUI.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        
//        // micButton 설정
//        let micButton: UIButton = {
//            let micbutton = UIButton(type: .system)
//            micbutton.setImage(UIImage(named: "mic"), for: .normal)
//            micbutton.tintColor = .gray
//            micbutton.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
//            return micbutton
//        }()
//        contentView.addSubview(micButton)
        
        
        NSLayoutConstraint.activate([
//            // ScrollView 오토레이아웃 설정
//            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
//            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            
//            // ContentView 오토레이아웃 설정
//            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
//            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
//            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
//            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
//            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            // SearchBar 오토레이아웃 설정
            searchBar.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            // tableViewUI 오토레이아웃 설정
            tableViewUI.topAnchor.constraint(equalTo: searchBar.bottomAnchor),
            tableViewUI.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableViewUI.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableViewUI.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SearchMockData.modeling[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableViewUI.dequeueReusableCell(withIdentifier: "SearchCell", for: indexPath) as? SearchCustomCell else {
            return UITableViewCell()
        }
        
        switch indexPath.section {
        case 0:
            cell.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        case 1:
            cell.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        case 2:
            cell.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        case 3:
            cell.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        default:
            cell.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        }
        
//        cell.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        cell.textLabel?.text = SearchMockData.modeling[indexPath.section][indexPath.row].title
        let imageName = SearchMockData.modeling[indexPath.section][indexPath.row].name
        cell.imageView?.image = UIImage(named: imageName)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return SearchMockData.modeling.count
    }
    
    //    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    //        return "hi"
    //    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70.0
    }

        func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let headerView = UIView()
            // 이때는 꺼야함.... 이것때문에 삽질...
//            headerView.translatesAutoresizingMaskIntoConstraints = false
            
            headerView.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
    
            let headerTitle = UILabel()
            headerTitle.translatesAutoresizingMaskIntoConstraints = false
            headerTitle.text = "Section \(section)"
            headerTitle.font = UIFont.systemFont(ofSize: 20, weight: .bold)
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
