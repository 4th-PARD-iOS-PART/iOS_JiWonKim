import UIKit

class DownloadsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: false)
        view.backgroundColor = .clear
        setUI()
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
            contents.backgroundColor = .black
            contents.translatesAutoresizingMaskIntoConstraints = false
            return contents
        }()
        scrollView.addSubview(contentView)
        
        // downloadsView img 설정
        let downloadsImage: UIImageView = {
            let images = UIImageView()
            images.translatesAutoresizingMaskIntoConstraints = false
            images.image = UIImage(named: "downloadsview") // downloadsView image 설정
            images.contentMode = .scaleAspectFill // 이미지 비율 유지
            return images
            }()
        contentView.addSubview(downloadsImage) // downloadsimg 화면에 보이게 설정
        
        // downloadsView label 설정
        let downloadsLabel: UILabel = {
            let labels = UILabel()
            labels.translatesAutoresizingMaskIntoConstraints = false
            labels.text = "Movies and TV shows that you download appear here."
            labels.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            labels.font = UIFont(name: "Montserrat", size: 19)
            labels.textAlignment = .center
            labels.numberOfLines = 0  // 여러 줄 지원
            return labels
        }()
        contentView.addSubview(downloadsLabel)
        
        // downloadsView button 설정
        let downloadsButton : UIButton = {
            var config = UIButton.Configuration.filled()
            config.background.backgroundColor = UIColor.white
            config.title = "Find Something to Download"
            config.titlePadding = 20
            config.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
            config.baseForegroundColor = .black
            let downButton = UIButton(configuration: config)
            downButton.titleLabel?.font = UIFont(name: "Montserrat", size: 15)
            downButton.translatesAutoresizingMaskIntoConstraints = false
            return downButton
        }()
        contentView.addSubview(downloadsButton)
        
        
        NSLayoutConstraint.activate([
            // ScrollView 오토레이아웃 설정
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            // ContentView 오토레이아웃 설정
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            // downloadsImage 오토레이아웃 설정
            downloadsImage.widthAnchor.constraint(equalToConstant: 194),
            downloadsImage.heightAnchor.constraint(equalToConstant: 194),
            downloadsImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 168),
            downloadsImage.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            // downloadsLabel 오토레이아웃 설정
//            downloadsLabel.widthAnchor.constraint(equalToConstant: 295),
            downloadsLabel.topAnchor.constraint(equalTo: downloadsImage.bottomAnchor, constant: 32),
            downloadsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 60),
            downloadsLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            // downloadsButton 오토레이아웃 설정
            downloadsButton.widthAnchor.constraint(equalToConstant: 280),
            downloadsButton.topAnchor.constraint(equalTo: downloadsLabel.bottomAnchor, constant: 184),
            downloadsButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor)
        ])
    }


}

