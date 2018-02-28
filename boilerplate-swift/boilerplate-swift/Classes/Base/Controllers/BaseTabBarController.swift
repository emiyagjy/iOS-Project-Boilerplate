//
//  BaseTabBarController.swift
//  boilerplate-swift
//
//  Created by GujyHy on 2018/2/28.
//  Copyright © 2018年 Gujy. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
       
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addChildViewControllers()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - private methods
    func addChildViewControllers(){
        
        setupOneChildViewContrller("首页", image: "", selectedImage: "", controller:JYHomeViewController())
        
        setupOneChildViewContrller("测试1", image: "", selectedImage: "", controller:UIViewController())
        
        setupOneChildViewContrller("测试2", image: "", selectedImage: "", controller:UIViewController())

    }
    /// 添加一个控制器
    func setupOneChildViewContrller(_ title:String,
                                    image:String,
                                    selectedImage:String,
                                    controller:UIViewController){
        
        controller.tabBarItem.title = title
        controller.title = title
        
        controller.tabBarItem.image = UIImage(named: image)?.withRenderingMode(.alwaysTemplate)
        controller.tabBarItem.selectedImage = UIImage(named: selectedImage)?.withRenderingMode(.alwaysOriginal)
        
        let naviController = UINavigationController(rootViewController: controller)
        self.addChildViewController(naviController)
    }
}
