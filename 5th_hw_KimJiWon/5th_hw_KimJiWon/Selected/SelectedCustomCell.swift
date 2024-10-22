import UIKit

class SelectedCustomCell: UITableViewCell {
    
    private let containerView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return view
    }()
    
    let image = UIImageView()
    // neflix logo
    let image2 = UIImageView()
    // series
    let image3 = UIImageView()
    // selling sunset
    let label4 = UILabel()
    // 2022
    let label5 = UILabel()
    // tv-ma
    let image5 = UIImageView()
    // 5 seasons
    let label6 = UILabel()
    // vision
    let image7 = UIImageView()
    // hd
    let image8 = UIImageView()
    // ad
    let image9 = UIImageView()
    // s5:e10
    let label10 = UILabel()
    // hearts ~
    let label11 = UILabel()
    // mylist
    let image12 = UIImageView()
    // rate
    let image13 = UIImageView()
    // share
    let image14 = UIImageView()
    // frame
    let image15 = UIImageView()
    // season5
    let image16 = UIImageView()
    
    // ep1 image
    let image17 = UIImageView()
    // ep1 title & time
    let label18 = UILabel()
    let label19 = UILabel()
    // ep1 content
    let label20 = UILabel()
    
    // ep2 image
    let image21 = UIImageView()
    // ep2 title & time
    let label22 = UILabel()
    let label23 = UILabel()
    // ep2 content
    let label24 = UILabel()
    
    // ep3 image
    let image25 = UIImageView()
    // ep3 title & time
    let label26 = UILabel()
    let label27 = UILabel()
    // ep3 content
    let label28 = UILabel()
    
    // ep4 image
    let image29 = UIImageView()
    // ep4 title & time
    let label30 = UILabel()
    let label31 = UILabel()
    // ep4 content
    let label32 = UILabel()
    
    // ep5 image
    let image33 = UIImageView()
    // ep5 title & time
    let label34 = UILabel()
    let label35 = UILabel()
    // ep5 content
    let label36 = UILabel()
    
    // ep6 image
    let image37 = UIImageView()
    // ep6 title & time
    let label38 = UILabel()
    let label39 = UILabel()
    // ep6 content
    let label40 = UILabel()
    
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
        containerView.addSubview(image3)
        containerView.addSubview(label4)
        containerView.addSubview(label5)
        containerView.addSubview(image5)
        containerView.addSubview(label6)
        containerView.addSubview(image7)
        containerView.addSubview(image8)
        containerView.addSubview(image9)
        containerView.addSubview(label10)
        containerView.addSubview(label11)
        containerView.addSubview(image12)
        containerView.addSubview(image13)
        containerView.addSubview(image14)
        containerView.addSubview(image15)
        containerView.addSubview(image16)
        
        containerView.addSubview(image17)
        containerView.addSubview(label18)
        containerView.addSubview(label19)
        containerView.addSubview(label20)
        
        containerView.addSubview(image21)
        containerView.addSubview(label22)
        containerView.addSubview(label23)
        containerView.addSubview(label24)
        
        containerView.addSubview(image25)
        containerView.addSubview(label26)
        containerView.addSubview(label27)
        containerView.addSubview(label28)
        
        containerView.addSubview(image29)
        containerView.addSubview(label30)
        containerView.addSubview(label31)
        containerView.addSubview(label32)
        
        containerView.addSubview(image33)
        containerView.addSubview(label34)
        containerView.addSubview(label35)
        containerView.addSubview(label36)
        
        containerView.addSubview(image37)
        containerView.addSubview(label38)
        containerView.addSubview(label39)
        containerView.addSubview(label40)

        contentView.backgroundColor = .black
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        image2.translatesAutoresizingMaskIntoConstraints = false
        image3.translatesAutoresizingMaskIntoConstraints = false
        label4.translatesAutoresizingMaskIntoConstraints = false
        label5.translatesAutoresizingMaskIntoConstraints = false
        image5.translatesAutoresizingMaskIntoConstraints = false
        label6.translatesAutoresizingMaskIntoConstraints = false
        image7.translatesAutoresizingMaskIntoConstraints = false
        image8.translatesAutoresizingMaskIntoConstraints = false
        image9.translatesAutoresizingMaskIntoConstraints = false
        label10.translatesAutoresizingMaskIntoConstraints = false
        label11.translatesAutoresizingMaskIntoConstraints = false
        image12.translatesAutoresizingMaskIntoConstraints = false
        image13.translatesAutoresizingMaskIntoConstraints = false
        image14.translatesAutoresizingMaskIntoConstraints = false
        image15.translatesAutoresizingMaskIntoConstraints = false
        image16.translatesAutoresizingMaskIntoConstraints = false
        
        image17.translatesAutoresizingMaskIntoConstraints = false
        label18.translatesAutoresizingMaskIntoConstraints = false
        label19.translatesAutoresizingMaskIntoConstraints = false
        label20.translatesAutoresizingMaskIntoConstraints = false
        
        image21.translatesAutoresizingMaskIntoConstraints = false
        label22.translatesAutoresizingMaskIntoConstraints = false
        label23.translatesAutoresizingMaskIntoConstraints = false
        label24.translatesAutoresizingMaskIntoConstraints = false
        
        image25.translatesAutoresizingMaskIntoConstraints = false
        label26.translatesAutoresizingMaskIntoConstraints = false
        label27.translatesAutoresizingMaskIntoConstraints = false
        label28.translatesAutoresizingMaskIntoConstraints = false
        
        image29.translatesAutoresizingMaskIntoConstraints = false
        label30.translatesAutoresizingMaskIntoConstraints = false
        label31.translatesAutoresizingMaskIntoConstraints = false
        label32.translatesAutoresizingMaskIntoConstraints = false
        
        image33.translatesAutoresizingMaskIntoConstraints = false
        label34.translatesAutoresizingMaskIntoConstraints = false
        label35.translatesAutoresizingMaskIntoConstraints = false
        label36.translatesAutoresizingMaskIntoConstraints = false
        
        image37.translatesAutoresizingMaskIntoConstraints = false
        label38.translatesAutoresizingMaskIntoConstraints = false
        label39.translatesAutoresizingMaskIntoConstraints = false
        label40.translatesAutoresizingMaskIntoConstraints = false

        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: topAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            //poster
            image.topAnchor.constraint(equalTo: containerView.topAnchor),
            image.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            image.heightAnchor.constraint(equalToConstant: 225),
            
            // netflix logo
            image2.widthAnchor.constraint(equalToConstant: 8),
            image2.heightAnchor.constraint(equalToConstant: 15),
            image2.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 11),
            image2.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            // series
            image3.centerYAnchor.constraint(equalTo: image2.centerYAnchor),
            image3.leadingAnchor.constraint(equalTo: image2.trailingAnchor, constant: 11),
            // selling sunset
            label4.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            label4.topAnchor.constraint(equalTo: image2.bottomAnchor, constant: 4),
            // 2022
            label5.topAnchor.constraint(equalTo: label4.bottomAnchor, constant: 9),
            label5.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            //tv-ma
            image5.centerYAnchor.constraint(equalTo: label5.centerYAnchor),
            image5.leadingAnchor.constraint(equalTo: label5.trailingAnchor, constant: 4),
            // 5 seasons
            label6.centerYAnchor.constraint(equalTo: image5.centerYAnchor),
            label6.leadingAnchor.constraint(equalTo: image5.trailingAnchor, constant: 4),
            // vision
            image7.centerYAnchor.constraint(equalTo: label6.centerYAnchor),
            image7.leadingAnchor.constraint(equalTo: label6.trailingAnchor, constant: 4),
            // hd
            image8.centerYAnchor.constraint(equalTo: image7.centerYAnchor),
            image8.leadingAnchor.constraint(equalTo: image7.trailingAnchor, constant: 4),
            // ad
            image9.widthAnchor.constraint(equalToConstant: 24),
            image9.heightAnchor.constraint(equalToConstant: 14),
            image9.centerYAnchor.constraint(equalTo: image8.centerYAnchor),
            image9.leadingAnchor.constraint(equalTo: image8.trailingAnchor, constant: 4),
            // s5:e10
            label10.topAnchor.constraint(equalTo: label5.bottomAnchor, constant: 120),
            label10.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            // hearts
            label11.topAnchor.constraint(equalTo: label10.bottomAnchor, constant: 4),
            label11.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
            label11.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8),
            // mylist
            image12.topAnchor.constraint(equalTo: label11.bottomAnchor, constant: 32),
            image12.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 31),
            // rate
            image13.centerYAnchor.constraint(equalTo: image12.centerYAnchor),
            image13.leadingAnchor.constraint(equalTo: image12.trailingAnchor, constant: 56),
            // share
            image14.centerYAnchor.constraint(equalTo: image12.centerYAnchor),
            image14.leadingAnchor.constraint(equalTo: image13.trailingAnchor, constant: 56),
            // frame
            image15.widthAnchor.constraint(equalToConstant: 325),
            image15.heightAnchor.constraint(equalToConstant: 31),
            image15.topAnchor.constraint(equalTo: image14.bottomAnchor, constant: 34),
            image15.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            image15.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -34),
            // season5
            image16.widthAnchor.constraint(equalToConstant: 75),
            image16.heightAnchor.constraint(equalToConstant: 16),
            image16.topAnchor.constraint(equalTo: image15.bottomAnchor, constant: 30),
            image16.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            
            // ep1 image
            image17.widthAnchor.constraint(equalToConstant: 124),
            image17.heightAnchor.constraint(equalToConstant: 69),
            image17.topAnchor.constraint(equalTo: image16.bottomAnchor, constant: 19),
            image17.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            // ep1 title & time
            label18.topAnchor.constraint(equalTo: image17.topAnchor, constant: 20.5),
            label18.leadingAnchor.constraint(equalTo: image17.trailingAnchor, constant: 8),
            label19.topAnchor.constraint(equalTo: label18.bottomAnchor),
            label19.leadingAnchor.constraint(equalTo: image17.trailingAnchor, constant: 8),
            // ep1 content
            label20.topAnchor.constraint(equalTo: image17.bottomAnchor, constant: 8),
            label20.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            label20.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16),
            
            // ep2 image
            image21.widthAnchor.constraint(equalToConstant: 124),
            image21.heightAnchor.constraint(equalToConstant: 69),
            image21.topAnchor.constraint(equalTo: label20.bottomAnchor, constant: 19),
            image21.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            // ep2 title & time
            label22.topAnchor.constraint(equalTo: image21.topAnchor, constant: 20.5),
            label22.leadingAnchor.constraint(equalTo: image21.trailingAnchor, constant: 8),
            label23.topAnchor.constraint(equalTo: label22.bottomAnchor),
            label23.leadingAnchor.constraint(equalTo: image21.trailingAnchor, constant: 8),
            // ep2 content
            label24.topAnchor.constraint(equalTo: image21.bottomAnchor, constant: 8),
            label24.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            label24.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16),
            
            // ep3 image
            image25.widthAnchor.constraint(equalToConstant: 124),
            image25.heightAnchor.constraint(equalToConstant: 69),
            image25.topAnchor.constraint(equalTo: label24.bottomAnchor, constant: 19),
            image25.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            // ep3 title & time
            label26.topAnchor.constraint(equalTo: image25.topAnchor, constant: 20.5),
            label26.leadingAnchor.constraint(equalTo: image25.trailingAnchor, constant: 8),
            label27.topAnchor.constraint(equalTo: label26.bottomAnchor),
            label27.leadingAnchor.constraint(equalTo: image25.trailingAnchor, constant: 8),
            // ep3 content
            label28.topAnchor.constraint(equalTo: image25.bottomAnchor, constant: 8),
            label28.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            label28.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16),
            
            // ep4 image
            image29.widthAnchor.constraint(equalToConstant: 124),
            image29.heightAnchor.constraint(equalToConstant: 69),
            image29.topAnchor.constraint(equalTo: label28.bottomAnchor, constant: 19),
            image29.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            // ep4 title & time
            label30.topAnchor.constraint(equalTo: image29.topAnchor, constant: 20.5),
            label30.leadingAnchor.constraint(equalTo: image29.trailingAnchor, constant: 8),
            label31.topAnchor.constraint(equalTo: label30.bottomAnchor),
            label31.leadingAnchor.constraint(equalTo: image29.trailingAnchor, constant: 8),
            // ep4 content
            label32.topAnchor.constraint(equalTo: image29.bottomAnchor, constant: 8),
            label32.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            label32.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16),
            
            // ep5 image
            image33.widthAnchor.constraint(equalToConstant: 124),
            image33.heightAnchor.constraint(equalToConstant: 69),
            image33.topAnchor.constraint(equalTo: label32.bottomAnchor, constant: 19),
            image33.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            // ep5 title & time
            label34.topAnchor.constraint(equalTo: image33.topAnchor, constant: 20.5),
            label34.leadingAnchor.constraint(equalTo: image33.trailingAnchor, constant: 8),
            label35.topAnchor.constraint(equalTo: label34.bottomAnchor),
            label35.leadingAnchor.constraint(equalTo: image33.trailingAnchor, constant: 8),
            // ep5 content
            label36.topAnchor.constraint(equalTo: image33.bottomAnchor, constant: 8),
            label36.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            label36.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16),
            
            // ep6 image
            image37.widthAnchor.constraint(equalToConstant: 124),
            image37.heightAnchor.constraint(equalToConstant: 69),
            image37.topAnchor.constraint(equalTo: label36.bottomAnchor, constant: 19),
            image37.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            // ep6 title & time
            label38.topAnchor.constraint(equalTo: image37.topAnchor, constant: 20.5),
            label38.leadingAnchor.constraint(equalTo: image37.trailingAnchor, constant: 8),
            label39.topAnchor.constraint(equalTo: label38.bottomAnchor),
            label39.leadingAnchor.constraint(equalTo: image37.trailingAnchor, constant: 8),
            // ep6 content
            label40.topAnchor.constraint(equalTo: image37.bottomAnchor, constant: 8),
            label40.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            label40.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16),
        ])
        // poster
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        // netflix logo
        image2.clipsToBounds = true
        image2.contentMode = .scaleAspectFill
        // series
        image3.clipsToBounds = true
        image3.contentMode = .scaleAspectFill
        // selling sunset
        label4.textColor = .white
        label4.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        // 2022
        label5.textColor = .white
        label5.font = UIFont.systemFont(ofSize: 11)
        // tv-ma
        image5.clipsToBounds = true
        image5.contentMode = .scaleAspectFill
        // 5 seasons
        label6.textColor = .white
        label6.font = UIFont.systemFont(ofSize: 11)
        // vision
        image7.clipsToBounds = true
        image7.contentMode = .scaleAspectFill
        // hd
        image8.clipsToBounds = true
        image8.contentMode = .scaleAspectFill
        // ad
        image9.clipsToBounds = true
        image9.contentMode = .scaleAspectFill
        // s5:e10
        label10.textColor = .white
        label10.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        // hearts
        label11.textColor = .white
        label11.font = UIFont.systemFont(ofSize: 12)
        label11.numberOfLines = 0
        //mylist
        image12.clipsToBounds = true
        image12.contentMode = .scaleAspectFill
        // rate
        image13.clipsToBounds = true
        image13.contentMode = .scaleAspectFill
        // share
        image14.clipsToBounds = true
        image14.contentMode = .scaleAspectFill
        // frame
        image15.clipsToBounds = true
        image15.contentMode = .scaleAspectFill
        // season5
        image16.clipsToBounds = true
        image16.contentMode = .scaleAspectFill
        
        // ep1 image
        image17.clipsToBounds = true
        image17.contentMode = .scaleAspectFill
        // ep1 title & time
        label18.textColor = .white
        label18.font = UIFont.systemFont(ofSize: 12)
        label19.textColor = #colorLiteral(red: 0.6178889275, green: 0.6178889275, blue: 0.6178889275, alpha: 1)
        label19.font = UIFont.systemFont(ofSize: 10)
        //ep1 content
        label20.textColor = .white
        label20.font = UIFont.systemFont(ofSize: 12)
        label20.numberOfLines = 0
        
        // ep2 image
        image21.clipsToBounds = true
        image21.contentMode = .scaleAspectFill
        // ep2 title & time
        label22.textColor = .white
        label22.font = UIFont.systemFont(ofSize: 12)
        label23.textColor = #colorLiteral(red: 0.6178889275, green: 0.6178889275, blue: 0.6178889275, alpha: 1)
        label23.font = UIFont.systemFont(ofSize: 10)
        //ep2 content
        label24.textColor = .white
        label24.font = UIFont.systemFont(ofSize: 12)
        label24.numberOfLines = 0
        
        // ep3 image
        image25.clipsToBounds = true
        image25.contentMode = .scaleAspectFill
        // ep3 title & time
        label26.textColor = .white
        label26.font = UIFont.systemFont(ofSize: 12)
        label27.textColor = #colorLiteral(red: 0.6178889275, green: 0.6178889275, blue: 0.6178889275, alpha: 1)
        label27.font = UIFont.systemFont(ofSize: 10)
        //ep3 content
        label28.textColor = .white
        label28.font = UIFont.systemFont(ofSize: 12)
        label28.numberOfLines = 0
        
        // ep4 image
        image29.clipsToBounds = true
        image29.contentMode = .scaleAspectFill
        // ep4 title & time
        label30.textColor = .white
        label30.font = UIFont.systemFont(ofSize: 12)
        label31.textColor = #colorLiteral(red: 0.6178889275, green: 0.6178889275, blue: 0.6178889275, alpha: 1)
        label31.font = UIFont.systemFont(ofSize: 10)
        //ep4 content
        label32.textColor = .white
        label32.font = UIFont.systemFont(ofSize: 12)
        label32.numberOfLines = 0
        
        // ep5 image
        image33.clipsToBounds = true
        image33.contentMode = .scaleAspectFill
        // ep5 title & time
        label34.textColor = .white
        label34.font = UIFont.systemFont(ofSize: 12)
        label35.textColor = #colorLiteral(red: 0.6178889275, green: 0.6178889275, blue: 0.6178889275, alpha: 1)
        label35.font = UIFont.systemFont(ofSize: 10)
        //ep5 content
        label36.textColor = .white
        label36.font = UIFont.systemFont(ofSize: 12)
        label36.numberOfLines = 0
        
        // ep6 image
        image37.clipsToBounds = true
        image37.contentMode = .scaleAspectFill
        // ep6 title & time
        label38.textColor = .white
        label38.font = UIFont.systemFont(ofSize: 12)
        label39.textColor = #colorLiteral(red: 0.6178889275, green: 0.6178889275, blue: 0.6178889275, alpha: 1)
        label39.font = UIFont.systemFont(ofSize: 10)
        //ep6 content
        label40.textColor = .white
        label40.font = UIFont.systemFont(ofSize: 12)
        label40.numberOfLines = 0
    }
    
    func configure (with imageName: String, remind: String, series: String, title4: String, title5: String, tvma: String, title6: String, vision: String, hd: String, ad: String, title10: String, title11: String, mylist2: String, rate2: String, share2: String, frame: String, season5: String,
                    ep: String, title18: String, title19: String, title20: String,
                    ep2: String, title22: String, title23: String, title24: String,
                    ep3: String, title26: String, title27: String, title28: String,
                    ep4: String, title30: String, title31: String, title32: String,
                    ep5: String, title34: String, title35: String, title36: String,
                    ep6: String, title38: String, title39: String, title40: String)
    {
//        image.image = UIImage(named: imageName)
        image2.image = UIImage(named: remind)
        image3.image = UIImage(named: series)
        label4.text = title4
        label5.text = title5
        image5.image = UIImage(named: tvma)
        label6.text = title6
        image7.image = UIImage(named: vision)
        image8.image = UIImage(named: hd)
        image9.image = UIImage(named: ad)
        label10.text = title10
        label11.text = title11
        image12.image = UIImage(named: mylist2)
        image13.image = UIImage(named: rate2)
        image14.image = UIImage(named: share2)
        image15.image = UIImage(named: frame)
        image16.image = UIImage(named: season5)
        
        image17.image = UIImage(named: ep)
        label18.text = title18
        label19.text = title19
        label20.text = title20
        
        image21.image = UIImage(named: ep)
        label22.text = title22
        label23.text = title23
        label24.text = title24
        
        image25.image = UIImage(named: ep)
        label26.text = title26
        label27.text = title27
        label28.text = title28
        
        image29.image = UIImage(named: ep)
        label30.text = title30
        label31.text = title31
        label32.text = title32
        
        image33.image = UIImage(named: ep)
        label34.text = title34
        label35.text = title35
        label36.text = title36
        
        image37.image = UIImage(named: ep)
        label38.text = title38
        label39.text = title39
        label40.text = title40
    }
}

