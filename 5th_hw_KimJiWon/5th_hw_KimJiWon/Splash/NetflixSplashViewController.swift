import UIKit

class NetflixSplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 배경 색상 설정
        view.backgroundColor = #colorLiteral(red: 0.06274510175, green: 0.06274510175, blue: 0.06274510175, alpha: 1)
        
        // Netflix 로고 이미지 추가
        let logoImageView = UIImageView()
        logoImageView.image = UIImage(named: "NETFLIX") // 'netflixLogo'는 Assets에 추가된 Netflix 로고 이미지입니다.
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoImageView)
        
        // 로고 레이아웃 설정
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 300),
            logoImageView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        // 애니메이션 효과
        animateLogo(imageView: logoImageView)
    }
    
    func animateLogo(imageView: UIImageView) {
        imageView.alpha = 0.0
        UIView.animate(withDuration: 2.0, animations: {
            imageView.alpha = 1.0 // 페이드인 효과
        }) { _ in
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                // 스플래시 후 메인 화면으로 이동
                let mainVC = ViewController() // NetflixMainViewController는 메인 화면입니다.
                mainVC.modalTransitionStyle = .crossDissolve
                mainVC.modalPresentationStyle = .fullScreen
                self.present(mainVC, animated: true, completion: nil)
            }
        }
    }
}
