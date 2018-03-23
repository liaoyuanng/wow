#!/usr/bin/env xcrun swift
//
//  main.swift
//  Wow
//
//  Created by Ju Liaoyuan on 2018/3/22.
//  Copyright © 2018年 Ju Liaoyuan. All rights reserved.
//

import Foundation

let args = CommandLine.arguments
let fileManager = FileManager.default
// see https://jekyllrb.com/docs/frontmatter/ or https://www.jekyll.com.cn/docs/frontmatter/
let yaml = "---\nlayout: post\ntitle:\ntags:\ncategories:\n---"



class JekyllPostCreator {
    class func creator () {
        
        var targetPath = String()
        var name = String()
        
        for arg in args {
            switch arg {
            case "-p":
                if args.index(of: arg)! + 1 < args.count {
                    targetPath = args[args.index(of: arg)! + 1]
                } else {
                    print("path is nil")
                    return
                }
            case "-n":
                if args.index(of: arg)! + 1 < args.count {
                    name = args[args.index(of: arg)! + 1]
                } else {
                    print("name is nil")
                    return
                }
            default:
                break;
            }
        }
        
        if targetPath.isEmpty {
            targetPath = (fileManager.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent("WOW_POSTS").path)!
            // create default path
            if !fileManager.fileExists(atPath: targetPath) {
                do {
                    try fileManager.createDirectory(at: URL.init(fileURLWithPath: targetPath), withIntermediateDirectories: false, attributes: nil)
                } catch {
                    print(error)
                }
                
            }
        }
        
        let targetURL = URL.init(fileURLWithPath: targetPath)
        
        if targetURL.isFileURL {
            
            // Make sure the folder exists
            if !fileManager.fileExists(atPath: targetPath) {
                print("Folder does not exist")
                return
            }
            
            let filePath = targetURL.appendingPathComponent(getCurrentTime() + "-" + name + ".md").path
            
            // Make sure the file does not exists
            if fileManager.fileExists(atPath: filePath) {
                print("The file already exists. Duplicate creation may lose data!")
                return
            }

            let success = fileManager.createFile(atPath: filePath, contents: yaml.data(using: .utf8), attributes: nil)
            if success {
                print("🎉Create success! open => " + targetPath)
            } else {
                print("Oops...create failure, please try again")
            }
            
        } else {
            print("The path does not exist or is not a folder")
        }
        
        
    }
    
    class func getCurrentTime () -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone.current
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: date)
    }
}

JekyllPostCreator.creator()

