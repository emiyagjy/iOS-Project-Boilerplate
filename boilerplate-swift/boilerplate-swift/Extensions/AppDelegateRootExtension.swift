
//
//  AppRootExtension.swift
//  boilerplate-swift
//
//  Created by GujyHy on 2018/2/28.
//  Copyright © 2018年 Gujy. All rights reserved.
//

import UIKit

extension AppDelegate {
    
    //  MARK: 全局设置UITabBar,UINaviBar样式
    
    func setAppTheme() {
        self.setNaviBarTheme()
        self.setTabBarItemTheme()
    }
    
    /**
     * 全局设置UINaviBar样式
     */
    fileprivate func setNaviBarTheme(){
        // NavigationBar Color
        // 方法一: 有色差
//        UINavigationBar.appearance().barTintColor = UIColor.red
        // 方法二： 设置背景图
        let image = UIImage.imageWithColor(UIColor(hex: "cc0000"))
        UINavigationBar.appearance().setBackgroundImage(image, for: UIBarMetrics.default) // e10000
        
        // Navigation Bar Text
        UINavigationBar.appearance().titleTextAttributes =
            [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 17),
             NSAttributedStringKey.foregroundColor:UIColor.yellow]
        
        
    }
    /**
     * 全局设置UITabBar样式
     */
    fileprivate func setTabBarItemTheme(){
        
        let attriNor = [NSAttributedStringKey.foregroundColor:UIColor(hex: "767676"),
                        NSAttributedStringKey.font:UIFont.systemFont(ofSize: 12)]
        
        let attriSel = [NSAttributedStringKey.foregroundColor:UIColor(hex: "fb4747"),
                        NSAttributedStringKey.font:UIFont.systemFont(ofSize: 12)]
        
        UITabBarItem.appearance().setTitleTextAttributes(attriNor, for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes(attriSel, for: .selected)
    }

    //  MARK: 初始化 window,tabBar,设置rootViewController

    /**
     *  tabBar实例化
     */
    func setTabBarController() {
        
        let tabBar              = BaseTabBarController()
        self.rootViewController = tabBar
    }
    
    /**
     *  window实例化
     */
    func setAppWindows(){
        
        self.window                  = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = .white
    }
    
    /**
     *  设置根视图
     */
    func setRootViewController() {
        
        self.window?.rootViewController = self.rootViewController //
        self.window?.makeKeyAndVisible()
    }
    
    /**
     *  首次启动引导轮播图
     */
    func createGuildeScrollView(){
        
    }
    
}
