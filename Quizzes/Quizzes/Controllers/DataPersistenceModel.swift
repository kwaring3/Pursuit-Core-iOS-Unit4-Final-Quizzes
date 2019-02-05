//
//  DataPersistenceModel.swift
//  Quizzes
//
//  Created by Kevin Waring on 2/3/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

final class DataPersistenceModel {
    private static var filename = "Quiz.plist"
    static var mainQuiz = [Favorite]()

    private init() {}
    
    static func save() {
        let path = DataPersistenceManager.filepathToDocumentsDiretory(filename: filename)
        do {
            let data = try PropertyListEncoder().encode(mainQuiz)
            try data.write(to: path, options: Data.WritingOptions.atomic)
        } catch {
            print("Property list encoding error (error)")
        }
    }
    static func add1(quiz: Favorite) {
        mainQuiz.append(quiz)
        save()
    }
    static func get() -> [Favorite] {
        let path = DataPersistenceManager.filepathToDocumentsDiretory(filename: filename).path
        if FileManager.default.fileExists(atPath: path) {
            if let data = FileManager.default.contents(atPath: path) {
                do {
                    mainQuiz = try PropertyListDecoder().decode([Favorite].self, from: data).sorted(by: {$0.createdAt > $1.createdAt})
                } catch {
                    print("Property list decode error: (error)")
                }
            } else {
                print("Data does not exist...")
            }
        } else {
            print("(filename) does not exist...")
            mainQuiz.removeAll()
            save()
        }
        return mainQuiz
    }
    static func deleteQuiz(index: Int) {
        mainQuiz.remove(at: index)
        save()
    }
    
}
