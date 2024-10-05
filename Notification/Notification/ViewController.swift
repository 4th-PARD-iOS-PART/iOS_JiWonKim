import UIKit

// notification 이름 지정
extension Notification.Name{
    static let myNotification = Notification.Name("myNotification")
}

class ViewController: UIViewController {
    // 라벨 Ui 만들기
    let label: UILabel = {
        let lbl = UILabel()
        lbl.text = "⬇️ 버튼을 눌러보세요 ⬇️"
        lbl.textAlignment = .center
        lbl.frame = CGRect(x: 100, y: 200, width: 200, height: 40)
        return lbl
    }()
    // 버튼 Ui 만들기
    let button: UIButton = {
        let btn = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 40))
        btn.setTitle("Button", for: .normal)
        btn.backgroundColor = .black
        btn.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(label)
        view.addSubview(button)
        
        // 알림 수신하기
        NotificationCenter.default.addObserver(self, selector: #selector(handleNotification), name: .myNotification, object: nil)
    }
    
    // 알림 보내기
    @objc func buttonPressed(){
        NotificationCenter.default.post(name: .myNotification, object: nil)
        print("💪🏻💪🏻💪🏻💪🏻💪🏻")
    }
    
    @objc func handleNotification(){
        label.text = "Notification 받았지롱 😆"
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }


}

