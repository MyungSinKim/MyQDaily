//
//  NSObject+SystemShare.swift
//  MyQDaily
//
//  Created by 石冬冬 on 17/1/20.
//  Copyright © 2017年 sdd. All rights reserved.
//

import Foundation
import UIKit

extension NSObject {
    
    // 分享图片
    func shareWithImage(_ vc: UIViewController, image: UIImage) {
        /*
        // 得到文件URL
        let fileURL = returnURLWithFileName(fileName);
        
        // 可以传多张,添加到这个数组
        let urlArray = [fileURL];
        */
        
        // 可以传多张,添加到这个数组
        let urlArray = [image];
        
        
        let activityVC = UIActivityViewController.init(activityItems: urlArray, applicationActivities: nil);
        
        // 屏蔽那些模块
//        let cludeActivitys: [String] = []
//        
//        // 排除活动类型
//        activityVC.excludedActivityTypes = cludeActivitys as? [String] as! [UIActivityType]?;
        
        // 呈现分享界面
        vc.present(activityVC, animated: true) {
            
            //print("开始AirDrop分享");
        };
    }
    
    // 分享链接或者文字
    func shareWithLinkText(_ vc:UIViewController, text: String) {
        let urlArray = [text];
        
        
        let activityVC = UIActivityViewController.init(activityItems: urlArray, applicationActivities: nil);
        
        
        // 屏蔽那些模块
//        let cludeActivitys: [String] = []
//        
//        // 排除活动类型
//        activityVC.excludedActivityTypes = cludeActivitys as? [String] as! [UIActivityType]?;
        
        // 呈现分享界面
        vc.present(activityVC, animated: true) {
            
            //print("开始AirDrop分享");
        };
    }
    
    
    // MARK: 返回文件的URL
    /// 返回文件的URL
    fileprivate func returnURLWithFileName(_ fileName: String) -> URL {
        
        let arr = fileName.components(separatedBy: ".");
        
        let pathString = Bundle.main.path(forResource: arr.first, ofType: arr[1]);
        
        let fileURL = URL(fileURLWithPath: pathString!);
        
        return fileURL;
    }
}
