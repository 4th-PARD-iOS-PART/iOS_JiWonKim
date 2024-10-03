import UIKit

class SearchCustomCell: UITableViewCell {
    
    private let containerView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.backgroundColor = #colorLiteral(red: 0.3278294206, green: 0.3278294206, blue: 0.3278294206, alpha: 1)
        return view
    }()
    
    let image = UIImageView()
    let label = UILabel()
    let playing = UIImageView()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "Cell")
        setLabel()
    }
    
    func setLabel(){
        contentView.addSubview(containerView)
        containerView.addSubview(label)
        containerView.addSubview(image)
        containerView.addSubview(playing)
        contentView.backgroundColor = .black
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        playing.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.topAnchor.constraint(equalTo: topAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 3),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -3),
            
            image.topAnchor.constraint(equalTo: containerView.topAnchor),
            image.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            image.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            image.widthAnchor.constraint(equalToConstant: 166),
            
            label.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 14),
            
            playing.centerYAnchor.constraint(equalTo: label.centerYAnchor),
            playing.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -3)
        ])
        
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14.72)
        
        playing.clipsToBounds = true
        playing.contentMode = .scaleAspectFill
    }
    
    func configure (with title: String, imageName: String, playbtn: String) {
        label.text = title
        image.image = UIImage(named: imageName)
        playing.image = UIImage(named: playbtn)
    }
}
