import UIKit

class ComingSoonCustomCell: UITableViewCell {
    
    private let containerView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return view
    }()
    
    let image = UIImageView()
    // remind me
    let image2 = UIImageView()
    let label2 = UILabel()
    // share
    let image3 = UIImageView()
    let label3 = UILabel()
    //season
    let label4 = UILabel()
    // main title
    let label5 = UILabel()
    // scenario
    let label6 = UILabel()
    // category
    let label7 = UILabel()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "Cell")
        setLabel()
    }
    
    func setLabel(){
        contentView.addSubview(containerView)
        containerView.addSubview(image)
        containerView.addSubview(image2)
        containerView.addSubview(label2)
        containerView.addSubview(image3)
        containerView.addSubview(label3)
        containerView.addSubview(label4)
        containerView.addSubview(label5)
        containerView.addSubview(label6)
        containerView.addSubview(label7)
        contentView.backgroundColor = .black
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        image2.translatesAutoresizingMaskIntoConstraints = false
        label2.translatesAutoresizingMaskIntoConstraints = false
        image3.translatesAutoresizingMaskIntoConstraints = false
        label3.translatesAutoresizingMaskIntoConstraints = false
        label4.translatesAutoresizingMaskIntoConstraints = false
        label5.translatesAutoresizingMaskIntoConstraints = false
        label6.translatesAutoresizingMaskIntoConstraints = false
        label7.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: topAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 3),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -3),
            
            //poster
            image.topAnchor.constraint(equalTo: containerView.topAnchor),
            image.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            image.heightAnchor.constraint(equalToConstant: 210),
            
            // remind me
            image2.widthAnchor.constraint(equalToConstant: 24),
            image2.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20),
            image2.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 260),
            
            label2.centerXAnchor.constraint(equalTo: image2.centerXAnchor),
            label2.topAnchor.constraint(equalTo: image2.bottomAnchor, constant: 7),
            // share
            image3.widthAnchor.constraint(equalToConstant: 24),
            image3.centerYAnchor.constraint(equalTo: image2.centerYAnchor),
            image3.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -22.17),
            
            label3.centerXAnchor.constraint(equalTo: image3.centerXAnchor),
            label3.topAnchor.constraint(equalTo: image3.bottomAnchor, constant: 7.11),
            // season
            label4.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 12),
            label4.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 80),
            // main title
            label5.topAnchor.constraint(equalTo: label4.bottomAnchor, constant: 13.13),
            label5.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 12),
            // scenario
            label6.topAnchor.constraint(equalTo: label5.bottomAnchor, constant: 12.87),
            label6.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 12),
            label6.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 8.25),
            
            label7.topAnchor.constraint(equalTo: label6.bottomAnchor, constant: 15),
            label7.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 12)
        ])
        // poster
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        // remind me
        image2.clipsToBounds = true
        image2.contentMode = .scaleAspectFill
        
        label2.textColor = .white
        label2.font = UIFont.systemFont(ofSize: 11.13)
        // share
        image3.clipsToBounds = true
        image3.contentMode = .scaleAspectFill
        
        label3.textColor = .white
        label3.font = UIFont.systemFont(ofSize: 11.13)
        // season
        label4.textColor = .white
        label4.font = UIFont.systemFont(ofSize: 11.4)
        // main title
        label5.textColor = .white
        label5.font = UIFont.systemFont(ofSize: 18.66, weight: .bold)
        // scenario
        label6.textColor = .white
        label6.font = UIFont.systemFont(ofSize: 11.14)
        label6.numberOfLines = 0
        // category
        label7.textColor = .white
        label7.font = UIFont.systemFont(ofSize: 11.4, weight: .bold)
    }
    
    func configure (with imageName: String, remind: String, title2: String, share: String, title3: String, title4: String, title5: String, title6: String, title7: String) {
        image.image = UIImage(named: imageName)
        image2.image = UIImage(named: remind)
        label2.text = title2
        image3.image = UIImage(named: share)
        label3.text = title3
        label4.text = title4
        label5.text = title5
        label6.text = title6
        label7.text = title7
    }
}

