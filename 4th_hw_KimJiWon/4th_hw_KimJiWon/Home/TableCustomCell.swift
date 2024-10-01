import UIKit

class TableCustomCell: UITableViewCell {
    var numberInSection: Int?

    let collectionview: UICollectionView = {
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.scrollDirection = .horizontal
        let collectionview = UICollectionView(frame: .zero, collectionViewLayout: flowlayout)
        collectionview.backgroundColor = .clear
        collectionview.translatesAutoresizingMaskIntoConstraints = false
        return collectionview
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getSectionNumber(num: Int) {
        numberInSection = num
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "cell")
        collectionview.delegate = self
        collectionview.dataSource = self
        collectionview.register(HomeCustomCell.self, forCellWithReuseIdentifier: "CollectionCell")
        contentView.addSubview(collectionview)
        setUI()
    }
    
    func setUI() {
        NSLayoutConstraint.activate([
            collectionview.topAnchor.constraint(equalTo: contentView.topAnchor),
            collectionview.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            collectionview.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            collectionview.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            collectionview.heightAnchor.constraint(equalToConstant: 161)
        ])
    }
}

extension TableCustomCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return HomeMockData.modeling[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as? HomeCustomCell else {
            print("error using collectionView")
            return UICollectionViewCell()
        }
        let target = HomeMockData.modeling[numberInSection ?? 0][indexPath.item].name
        let image = UIImage(named: "\(target)")
        cell.imageView.image = image
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 103, height: 161)
    }
}

extension TableCustomCell: UICollectionViewDelegateFlowLayout { }
