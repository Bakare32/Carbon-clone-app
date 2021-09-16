//
//  ViewController.swift
//  Carbon
//
//  Created by  Decagon on 23/08/2021.
//

import UIKit
//import Lottie

class OnboardingViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    let pages: [Page] = {
        let firstPage = Page(title: "Go beyond banking", message: "Welcome to the future. Carbon is your passport to world-class financial services, built just for you.")
        let secondPage = Page(title: "Stay on top of your finances. Anytime. Anywhere", message: "Carbon makes financial services faster, cheaper and more convenient. You can access the app 24/7, wherever you can.")
        
        let thirdPage = Page(title: "Trusted by millions", message: "With carbon\'s market-leading service already used by millions of people just like you, you\'re in very good company ")
        
        return [firstPage, secondPage, thirdPage]
    }()
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.dataSource = self
        cv.delegate = self
        cv.backgroundColor = .white
        cv.isPagingEnabled = true
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    let cellId = "cellId"
    
    private let skipButton: UIButton = {
        let button = UIButton()
        button.setTitle("Skip", for: .normal)
        button.setTitleColor(UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00), for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
 
    
    
    @objc func didTapNewAccountButton(){
        let signUpViewController = SignUpViewController()
        navigationController?.pushViewController(signUpViewController, animated: true)
    }
    @objc func didTapSignIn() {
        let signInController = SignInViewController()
        navigationController?.pushViewController(signInController, animated: true)
    }
    

    
    let carbonImageView: UIImageView = {
        let carbonImage = UIImageView()
        carbonImage.contentMode = .scaleAspectFit
        carbonImage.translatesAutoresizingMaskIntoConstraints = false
        carbonImage.image = UIImage(named: "Carbon")
        return carbonImage
    }()
    
    let setButton: UIButton = {
        let button = UIButton()
        button.setTitle("Set up new account", for: .normal)
        button.backgroundColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapNewAccountButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTapNewAccountButton))
        skipButton.addGestureRecognizer(tap)
        
        view.backgroundColor = .white
        
        self.navigationItem.setRightBarButton(UIBarButtonItem(customView: skipButton), animated: true)
        
        addImageAndLayout()
        addButtonAndLayout()
        roundCorner()
        
        addCollectionViewAndLayout()
        collectionView.register(PageCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! PageCell
        let page = pages[indexPath.row]
        cell.page = page
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    private func addCollectionViewAndLayout() {
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: carbonImageView.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: setButton.topAnchor, constant: -60)
        ])
    }
    
    
    private func addButtonAndLayout() {
        view.addSubview(setButton)
        NSLayoutConstraint.activate([
            setButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor , constant: -16),
            setButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            setButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            setButton.heightAnchor.constraint(equalToConstant: 52)
            
        ])
    }
    
    private func roundCorner() {
        setButton.layer.cornerRadius = 8
    }
    
    private func addImageAndLayout() {
        view.addSubview(carbonImageView)
        
        NSLayoutConstraint.activate([
            carbonImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            carbonImageView.heightAnchor.constraint(equalToConstant: 80),
            carbonImageView.widthAnchor.constraint(equalToConstant: 180),
            carbonImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    var pageControl: Int = 0
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let pageNumber = Int(targetContentOffset.pointee.x / view.frame.width)
        pageControl = pageNumber
        if pageControl == 0 {
            skipButton.setTitle("Skip", for: .normal)
        } else {
            skipButton.setTitle("Sign in", for: .normal)
            let tap = UITapGestureRecognizer(target: self, action: #selector(didTapSignIn))
            skipButton.addGestureRecognizer(tap)
        }
    }
    
}


extension UIView {
    
    func anchorToTop(top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil) {
        
        anchorWithConstantsToTop(top: top, left: left, bottom: bottom, right: right, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0)
    }
    
    func anchorWithConstantsToTop(top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, topConstant: CGFloat = 0, leftConstant: CGFloat = 0, bottomConstant: CGFloat = 0, rightConstant: CGFloat = 0) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: topConstant).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -bottomConstant).isActive = true
        }
        
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: leftConstant).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -rightConstant).isActive = true
        }
        
    }
    
}

