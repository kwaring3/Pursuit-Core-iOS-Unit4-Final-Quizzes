//
//  APIClient.swift
//  Quizzes
//
//  Created by Kevin Waring on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

//struct APIClient {
//    static func getInfo(completionHandler: @ escaping (AppError?,
//        [Quiz]?)-> Void) {
//        NetworkHelper.shared.performDataTask(endpointURLString:"https://quizzes-9ff59.firebaseio.com/.json") { (appError, data) in
//            if appError != nil {
//                completionHandler(AppError.badURL("Bad Url"), nil )
//            }
//            if let data = data {
//                do{
//                    let bookData = try JSONDecoder().decode(Results.self, from: data)
//                    completionHandler(appError, bookData.results)
//                } catch {
//                    completionHandler(appError,nil)
//                }
//            }
//        }
//}
//}
