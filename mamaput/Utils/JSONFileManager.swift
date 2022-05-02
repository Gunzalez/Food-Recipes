//
//  JSONFileManager.swift
//  mamaput
//
//  Created by Ségun Konibire on 03/05/2022.
//

import Foundation


class JSONFileManager {
    static func load<T: Decodable>(_ filename: String) -> T {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
            fatalError("Could not find \(filename) in main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Could not load \(filename) from main bundle.")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Could not parse the file \(filename).")
        }
        
    }
}
