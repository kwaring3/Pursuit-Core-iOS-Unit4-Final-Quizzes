//
//  APIClient.swift
//  Quizzes
//
//  Created by Kevin Waring on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

struct APIClient {
    static func getQuizInfo(completionHandler: @ escaping (AppError?,
        [Quiz]?)-> Void) {
        NetworkHelper.shared.performDataTask(endpointURLString: "https://quizzes-9ff59.firebaseio.com/.json", httpMethod: "GET", httpBody: nil) { (appError, data) in
            if appError != nil {
                completionHandler(AppError.badURL("Bad Url"), nil )
            }
            if let data = data {
                do{
                    let quizData = try JSONDecoder().decode([Quiz].self, from: data)
                    completionHandler(appError, quizData.sorted(by: {$0.quizTitle < $1.quizTitle}))
                } catch {
                    completionHandler(appError,nil)
                }
            }
        }
}
}
