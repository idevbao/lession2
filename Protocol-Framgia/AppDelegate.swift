//
//  AppDelegate.swift
//  Protocol-Framgia
//
//  Created by nguyen.van.bao on 03/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit
import MapKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

//MARK: - Create HomeViewController Code
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:
        //Thuộc tính này có vai trò theo dõi trạng thái của cửa sổ ứng dụng. Thuộc tính nay là  optional nên có thể nil.

        [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        //let homeViewController = HomeViewController()
//       let storyboard = UIStoryboard(name: "Main", bundle: nil)
        window = UIWindow(frame:UIScreen.main.bounds)
// su dung storyboard
//        let controller = storyboard.instantiateViewController(withIdentifier: "mainHome")
        let VCdotXib = BaiTap4ViewController(nibName: "BaiTap4ViewController", bundle: nil)
        window?.rootViewController = VCdotXib
        window?.makeKeyAndVisible()
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        print(" Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state...Inactive : Tại trạng thái Active, nếu chương trình nhận được các sự kiện từ hệ thống như có tin nhắn mới, có điện thoại thì ứng dụng sẽ chuyển sang trạng thái Inactive")
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("Khi người dùng ấn phim Home, chương trình sẽ chuyển sang trạng thái background, ở trạng thái này ứng dụng hoàn toàn ko hiểu thị với người dùng, tuy nhiên các dòng lệnh vẫn được thực thi. Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.")
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        print(" Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background. được gọi sau khi từ trạng thái backgound sang trạng thái active trong qúa trình chuyển từ background trở lại active")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        print("Khởi động lại mọi tác vụ đã bị tạm dừng (hoặc chưa bắt đầu) trong khi ứng dụng không hoạt động. Nếu ứng dụng trước đó ở chế độ nền, hãy làm mới tùy chọn giao diện người dùng.")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

