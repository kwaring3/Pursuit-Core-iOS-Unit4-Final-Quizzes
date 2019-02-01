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
//        NetworkHelper.shared.performDataTask(endpointURLString:"http://5c4d4c0d0de08100147c59b5.mockapi.io/api/v1/quizzes") { (appError, data) in
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
