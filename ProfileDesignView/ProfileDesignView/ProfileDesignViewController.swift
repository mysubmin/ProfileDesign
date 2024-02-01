//
//  TodoViewController.swift
//  TodoList
//
//  Created by hajin on 2023/09/19.
//

import Foundation
import UIKit

class ProfileDesignViewController: UIViewController  {
    //UserFollowInfo view3개 만들기
    let UserName = UILabel()
    let MenuButton = UIButton()
    let UserPic = UIImageView()
    let UserFollowInfo = UIView()
    let PostNum = UILabel()
    let Post = UILabel()
    let FollowerNum = UILabel()
    let Follower = UILabel()
    let FollowingNum = UILabel()
    let Following = UILabel()
    let UserInfo = UIView()
    let Name = UILabel()
    let Bio = UILabel()
    let LinkInBio = UILabel()
    let MiddleBar = UIView()
    let Follow = UIButton()
    let Message = UIButton()
    let More = UIButton()
    let NavGallery = UIView()
    let Grid = UIButton()
    let Divider = UIView()
    let Rectangle = UIView()
    let profileFill = UIButton()

    let galleryCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
        
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
       
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        cv.register(GalleryCollectionViewCell.self, forCellWithReuseIdentifier: GalleryCollectionViewCell.identifier)
        
        return cv
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        galleryCollectionView.delegate = self
//        galleryCollectionView.dataSource = self
        
        view.addSubview(UserName)
        view.addSubview(MenuButton)
        view.addSubview(UserPic)
        view.addSubview(UserFollowInfo)
        UserFollowInfo.addSubview(PostNum)
        UserFollowInfo.addSubview(Post)
        UserFollowInfo.addSubview(FollowerNum)
        UserFollowInfo.addSubview(Follower)
        UserFollowInfo.addSubview(FollowingNum)
        UserFollowInfo.addSubview(Following)
        view.addSubview(UserInfo)
        UserInfo.addSubview(Name)
        UserInfo.addSubview(Bio)
        UserInfo.addSubview(LinkInBio)
        view.addSubview(MiddleBar)
        view.addSubview(NavGallery)
        view.addSubview(Rectangle)
        view.addSubview(Divider)
        view.addSubview(Grid)
        view.addSubview(galleryCollectionView)
        Rectangle.addSubview(profileFill)
        setUp()
    }
    
}
extension ProfileDesignViewController{
    
    // MARK: - SetUp
    
    func setUp(){
        self.view.backgroundColor = .white
        setUpUserName()
        setUpMenuButton()
        setUpUserPic()
        SetUpUserFollowInfo()
        SetUpPostNum()
        SetUpPost()
        SetUpFollowerNum()
        SetUpFollower()
        SetUpFollowingNum()
        SetUpFollowing()
        SetUpUserInfo()
        SetUpName()
        SetUpBio()
        SetUpLinkInBio()
        SetUpMiddleBar()
        SetUpFollow()
        SetUpMessage()
        SetUpMore()
        SetUpNavGallery()
        SetUpGrid()
        SetUpDivider()
        SetUpRectangle()
        SetUpgalleryCollectionView()

    }
    
    func setUpUserName(){
        UserName.translatesAutoresizingMaskIntoConstraints = false
        UserName.text = "nabaecamp"
        UserName.textColor = .black
        UserName.font = UIFont(name: "OpenSans-Bold", size: 2)
        UserName.textAlignment = .center
        NSLayoutConstraint.activate([
            UserName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            UserName.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 10),
        ])
        
    }
    
    func setUpMenuButton(){
        MenuButton.translatesAutoresizingMaskIntoConstraints = false
        MenuButton.setImage(UIImage(named: "Menu"), for: .normal)
        
        NSLayoutConstraint.activate([
            MenuButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            MenuButton.centerXAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            
        ])
        
    }
    
    func setUpUserPic(){
        UserPic.translatesAutoresizingMaskIntoConstraints = false
        UserPic.image = UIImage(named: "Ellipse 1")
        UserPic.widthAnchor.constraint(equalToConstant: 88).isActive = true
        UserPic.heightAnchor.constraint(equalToConstant: 88).isActive = true
        UserPic.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 14).isActive = true
        UserPic.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 93).isActive = true
        
        
    }
    
    func SetUpUserFollowInfo(){
        UserFollowInfo.translatesAutoresizingMaskIntoConstraints = false
        UserFollowInfo.widthAnchor.constraint(equalToConstant: 204).isActive = true
        UserFollowInfo.heightAnchor.constraint(equalToConstant: 41).isActive = true
        UserFollowInfo.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 143).isActive = true
        UserFollowInfo.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 116).isActive = true
//        UserFollowInfo.backgroundColor = .black
    }
    
    
    func SetUpPostNum(){
        PostNum.translatesAutoresizingMaskIntoConstraints = false
        PostNum.text = "7"
        PostNum.textColor = .black //.yellow
        PostNum.font = UIFont.boldSystemFont(ofSize: 16.5)
        PostNum.textAlignment = .center
        PostNum.topAnchor.constraint(equalTo: UserFollowInfo.topAnchor, constant: 5).isActive = true
        PostNum.leftAnchor.constraint(equalTo: UserFollowInfo.leftAnchor, constant: 5).isActive = true
        PostNum.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -200).isActive = true

    }
    
    
    func SetUpPost(){
        Post.translatesAutoresizingMaskIntoConstraints = false
        Post.text = "Post"
        Post.textColor = .black //.yellow
        Post.font = UIFont(name: "OpenSans-Regular", size: 14)
        Post.textAlignment = .center
        Post.topAnchor.constraint(equalTo: PostNum.topAnchor, constant: 15).isActive = true
        Post.leftAnchor.constraint(equalTo: PostNum.leftAnchor, constant: 5).isActive = true
        Post.bottomAnchor.constraint(equalTo: PostNum.bottomAnchor, constant: 20).isActive = true
        
    }
    
    
    func SetUpFollowerNum(){
        FollowerNum.translatesAutoresizingMaskIntoConstraints = false
        FollowerNum.text = "0"
        FollowerNum.textColor = .black //.yellow
        FollowerNum.font = UIFont(name: "OpenSans-Regular", size: 16.5)
        FollowerNum.textAlignment = .center
        FollowerNum.topAnchor.constraint(equalTo: UserFollowInfo.topAnchor, constant: 5).isActive = true
        FollowerNum.centerXAnchor.constraint(equalTo: UserFollowInfo.centerXAnchor).isActive = true


    }

    
    func SetUpFollower(){
        Follower.translatesAutoresizingMaskIntoConstraints = false
        Follower.text = "Follower"
        Follower.textColor = .black //.yellow
        Follower.font = UIFont(name: "OpenSans-Regular", size: 14)
        Follower.textAlignment = .center
        Follower.topAnchor.constraint(equalTo: FollowerNum.topAnchor, constant: 15).isActive = true
//        Follower.leftAnchor.constraint(equalTo: PostNum.leftAnchor, constant: 5).isActive = true
        Follower.centerXAnchor.constraint(equalTo: UserFollowInfo.centerXAnchor).isActive = true


    }
    
    
    func SetUpFollowingNum(){
        FollowingNum.translatesAutoresizingMaskIntoConstraints = false
        FollowingNum.text = "0"
        FollowingNum.textColor = .black //.yellow
        FollowingNum.font = UIFont(name: "OpenSans-Regular", size: 16.5)
        FollowingNum.textAlignment = .center
        FollowingNum.topAnchor.constraint(equalTo: UserFollowInfo.topAnchor, constant: 5).isActive = true
//        Follower.leftAnchor.constraint(equalTo: PostNum.leftAnchor, constant: 5).isActive = true
        FollowingNum.rightAnchor.constraint(equalTo: UserFollowInfo.rightAnchor, constant: -10).isActive = true
    }
    
    
    func SetUpFollowing(){
        Following.translatesAutoresizingMaskIntoConstraints = false
        Following.text = "Following"
        Following.textColor = .black //.yellow
        Following.font = UIFont(name: "OpenSans-Regular", size: 14)
        Following.textAlignment = .center
        Following.topAnchor.constraint(equalTo: FollowingNum.topAnchor, constant: 15).isActive = true
//        Follower.leftAnchor.constraint(equalTo: PostNum.leftAnchor, constant: 5).isActive = true
        Following.rightAnchor.constraint(equalTo: Follower.rightAnchor, constant: 90).isActive = true
    }
    

    func SetUpUserInfo(){
        UserInfo.translatesAutoresizingMaskIntoConstraints = false
        UserInfo.widthAnchor.constraint(equalToConstant: 345).isActive = true
        UserInfo.heightAnchor.constraint(equalToConstant: 59).isActive = true
        UserInfo.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15).isActive = true
        UserInfo.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 195).isActive = true
        
    }
    
    
    func SetUpName(){
        Name.translatesAutoresizingMaskIntoConstraints = false
        Name.text = "르탄이"
        Name.textColor = .black
        Name.font = UIFont(name: "OpenSans-Bold", size: 14)
        Name.textAlignment = .center
        Name.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 195).isActive = true
        Name.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15).isActive = true
    }
    
    
    func SetUpBio(){
        Bio.translatesAutoresizingMaskIntoConstraints = false
        Bio.attributedText = NSMutableAttributedString(string: "iOS Developer 🍎", attributes: [NSAttributedString.Key.kern: -0.5])
        Bio.textColor = .black
        Bio.font = UIFont(name: "OpenSans-Regular", size: 14)
        Bio.textAlignment = .center
        Bio.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 216).isActive = true
        Bio.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15).isActive = true
    }
    
    
    func SetUpLinkInBio(){
        LinkInBio.translatesAutoresizingMaskIntoConstraints = false
        LinkInBio.attributedText = NSMutableAttributedString(string: "spartacodingclub.kr", attributes: [NSAttributedString.Key.kern: -0.5])
        LinkInBio.textColor = .black
        LinkInBio.font = UIFont(name: "OpenSans-Regular", size: 14)
        LinkInBio.textAlignment = .center
        LinkInBio.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 235).isActive = true
        LinkInBio.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15).isActive = true
    }
    
    
    func SetUpMiddleBar(){
        MiddleBar.addSubview(Follow)
        MiddleBar.addSubview(Message)
        MiddleBar.addSubview(More)

        MiddleBar.translatesAutoresizingMaskIntoConstraints = false
        MiddleBar.topAnchor.constraint(equalTo: UserInfo.bottomAnchor, constant: 11).isActive = true
        MiddleBar.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 15).isActive = true
        MiddleBar.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -15).isActive = true
        MiddleBar.heightAnchor.constraint(equalToConstant: 30).isActive = true
        MiddleBar.backgroundColor = .green
    }
    
    func SetUpFollow(){
        Follow.translatesAutoresizingMaskIntoConstraints = false
        Follow.layer.backgroundColor = UIColor(red: 0.22, green: 0.596, blue: 0.953, alpha: 1).cgColor
        Follow.layer.cornerRadius = 4
        Follow.topAnchor.constraint(equalTo: MiddleBar.topAnchor, constant: 0).isActive = true
        Follow.bottomAnchor.constraint(equalTo: MiddleBar.bottomAnchor, constant: 0).isActive = true
        Follow.leftAnchor.constraint(equalTo: MiddleBar.leftAnchor, constant: 0).isActive = true
        Follow.rightAnchor.constraint(equalTo: Message.rightAnchor, constant: -8).isActive = true
        Follow.heightAnchor.constraint(equalToConstant: 30).isActive = true
        Follow.widthAnchor.constraint(equalToConstant: (UIScreen.main.bounds.width-76) / 2).isActive = true

    }
    
    func SetUpMessage(){
        Message.translatesAutoresizingMaskIntoConstraints = false
        
        Message.layer.backgroundColor = UIColor(red: 0.22, green: 0.596, blue: 0.953, alpha: 1).cgColor
        Message.layer.cornerRadius = 4
        Message.topAnchor.constraint(equalTo: MiddleBar.topAnchor, constant: 0).isActive = true
        Message.bottomAnchor.constraint(equalTo: MiddleBar.bottomAnchor, constant: 0).isActive = true
        Message.rightAnchor.constraint(equalTo: More.leftAnchor, constant: -8).isActive = true
        Message.leftAnchor.constraint(equalTo: Follow.rightAnchor, constant: 8).isActive = true
        Message.heightAnchor.constraint(equalToConstant: 30).isActive = true
        Message.widthAnchor.constraint(equalToConstant: (UIScreen.main.bounds.width-76) / 2).isActive = true

    }
    
    func SetUpMore(){
        More.translatesAutoresizingMaskIntoConstraints = false
        More.setImage(UIImage(named: "More"), for: .normal)
        More.topAnchor.constraint(equalTo: MiddleBar.topAnchor, constant: 0).isActive = true
        More.bottomAnchor.constraint(equalTo: MiddleBar.bottomAnchor, constant: 0).isActive = true
        More.rightAnchor.constraint(equalTo: MiddleBar.rightAnchor, constant: 0).isActive = true
        More.leftAnchor.constraint(equalTo: Message.leftAnchor, constant: -8).isActive = true
        More.heightAnchor.constraint(equalToConstant: 30).isActive = true

    }
    
    func SetUpNavGallery(){
        NavGallery.translatesAutoresizingMaskIntoConstraints = false
        
        NavGallery.topAnchor.constraint(equalTo: MiddleBar.bottomAnchor, constant: 10).isActive = true
        NavGallery.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 1).isActive = true
        NavGallery.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -1).isActive = true
        NavGallery.heightAnchor.constraint(equalToConstant: 43).isActive = true
//        NavGallery.backgroundColor = .yellow

    }
    
    
    func SetUpgalleryCollectionView(){
        galleryCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        galleryCollectionView.topAnchor.constraint(equalTo: NavGallery.bottomAnchor, constant: 1).isActive = true
        galleryCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 1).isActive = true
        galleryCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -1).isActive = true
        galleryCollectionView.bottomAnchor.constraint(equalTo: Rectangle.topAnchor, constant: 0).isActive = true
//        galleryCollectionView.backgroundColor = .orange
    }
    
    
    func SetUpRectangle(){
        Rectangle.translatesAutoresizingMaskIntoConstraints = false
        
        Rectangle.topAnchor.constraint(equalTo: galleryCollectionView.bottomAnchor, constant: 0).isActive = true
        Rectangle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 1).isActive = true
        Rectangle.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -1).isActive = true
        Rectangle.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -1).isActive = true
        Rectangle.heightAnchor.constraint(equalToConstant: 85).isActive = true
        
        Rectangle.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1)
    }
    
    
    func SetUpDivider(){
        Divider.translatesAutoresizingMaskIntoConstraints = false
        
        Divider.topAnchor.constraint(equalTo: Rectangle.topAnchor, constant: 0).isActive = true
        Divider.leftAnchor.constraint(equalTo: Rectangle.leftAnchor, constant: 0).isActive = true
        Divider.rightAnchor.constraint(equalTo: Rectangle.rightAnchor, constant: 0).isActive = true
        Divider.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        Divider.layer.borderWidth = 0.4
        Divider.layer.borderColor = UIColor(red: 0.702, green: 0.702, blue: 0.702, alpha: 1).cgColor
    }
 
    func SetUpGrid(){
        Grid.translatesAutoresizingMaskIntoConstraints = false
        
        Grid.titleLabel?.adjustsFontForContentSizeCategory = true
        Grid.setImage(UIImage(named: "Grid"), for: .normal)
        Grid.tintColor = .secondaryLabel
        Grid.setTitleColor(.secondaryLabel, for: .normal)
        Grid.heightAnchor.constraint(equalToConstant: 22.5).isActive = true
        Grid.widthAnchor.constraint(equalToConstant: 22.5).isActive = true
        Grid.leftAnchor.constraint(equalTo: NavGallery.leftAnchor, constant: ((UIScreen.main.bounds.width/3)/2)-11.25).isActive = true
        
        Grid.topAnchor.constraint(equalTo: Divider.bottomAnchor, constant: 8).isActive = true
        
    }
    func SetUpprofileFill(){
        profileFill.translatesAutoresizingMaskIntoConstraints = false
        
        profileFill.titleLabel?.adjustsFontForContentSizeCategory = true
        profileFill.setImage(UIImage(named: "Profile - Fill"), for: .normal)
        profileFill.tintColor = .secondaryLabel
        profileFill.setTitleColor(.secondaryLabel, for: .normal)
        profileFill.heightAnchor.constraint(equalToConstant: 22.75).isActive = true
        profileFill.widthAnchor.constraint(equalToConstant: 22.5).isActive = true
        profileFill.rightAnchor.constraint(equalTo: Rectangle.rightAnchor, constant: -((UIScreen.main.bounds.width/2)+11.25)).isActive = true
        profileFill.leftAnchor.constraint(equalTo: Rectangle.leftAnchor, constant: (UIScreen.main.bounds.width/2)-11.25).isActive = true
        profileFill.centerYAnchor.constraint(equalTo: Rectangle.centerYAnchor ,constant: -15).isActive = true
        profileFill.addTarget(self, action: #selector(moveProfile), for: .touchUpInside)
    }
    @objc func moveProfile() {
        let ProfileDesignVC = ProfileDesignViewController()
        ProfileDesignVC.modalTransitionStyle = .coverVertical
        ProfileDesignVC.modalPresentationStyle = .fullScreen
        self.present(ProfileDesignVC, animated: true , completion: nil)
    }
    @objc func backProfile() {
        self.presentingViewController?.dismiss(animated: true)
    }
}
