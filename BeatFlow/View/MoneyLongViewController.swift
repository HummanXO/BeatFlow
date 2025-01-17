import UIKit

class MoneyLongViewController : UIViewController {
    
    private let imageSongView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "money_long"))
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let nameSongLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = "Money Long"
        return label
    }()
    
    private let artistSongLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        label.textColor = .gray
        label.textAlignment = .center
        label.text = "Kizaru"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: nil)
        view.backgroundColor = .white
        setupLayout()
    }
    
    private func setupLayout() {
        [imageSongView, nameSongLabel, artistSongLabel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        NSLayoutConstraint.activate([
            imageSongView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            imageSongView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            imageSongView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            imageSongView.heightAnchor.constraint(equalTo: imageSongView.widthAnchor)
        ])
    }
}
