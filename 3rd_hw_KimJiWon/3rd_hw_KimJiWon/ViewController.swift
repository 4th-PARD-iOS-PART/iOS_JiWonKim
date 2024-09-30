import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black // View 배경 색상
        setTabBar()
    }
    
    // TabBar
    func setTabBar() {
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: SearchViewController())
        let vc3 = UINavigationController(rootViewController: ComingSoonViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        let vc5 = UINavigationController(rootViewController: MoreViewController())
        
        self.viewControllers = [vc1, vc2, vc3, vc4, vc5]
        self.tabBar.tintColor = #colorLiteral(red: 0.9999999404, green: 1, blue: 1, alpha: 1) // TabBar 선택 시 글자 색상
        self.tabBar.barTintColor = .black
        self.tabBar.backgroundColor = #colorLiteral(red: 0.07058823529, green: 0.07058823529, blue: 0.07058823529, alpha: 1) // TabBar 배경 색상
        self.tabBar.unselectedItemTintColor = #colorLiteral(red: 0.5490196078, green: 0.5294117647, blue: 0.5294117647, alpha: 1) // TabBar 선택하지 않을 때 글자 색상
        
        guard let tabBarItems = self.tabBar.items else {return}
        // TabBar에 이미지 추가
        tabBarItems[0].image = UIImage(named: "Home")
        tabBarItems[1].image = UIImage(named: "Search")
        tabBarItems[2].image = UIImage(named: "ComingSoon")
        tabBarItems[3].image = UIImage(named: "Downloads")
        tabBarItems[4].image = UIImage(named: "More")
        
        // TabBar item 이름
        tabBarItems[0].title = "Home"
        tabBarItems[1].title = "Search"
        tabBarItems[2].title = "Coming Soon"
        tabBarItems[3].title = "Downloads"
        tabBarItems[4].title = "More"
    }
}

