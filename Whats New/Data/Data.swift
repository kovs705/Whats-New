//
//  Data.swift
//  Whats New
//
//  Created by Kovs on 31.08.2022.
//

import SwiftUI

struct Feature: Codable {
     /// place properties of json features..
     
     let version: String
     let new: New
     
     struct New: Codable {
         let body: String
         let icon: String
         let title: String
         let subtitle: String
     }
 }

    // MARK: - Load features from JSON file:
let featuresData: [Feature] = load(fileName: "features.json")

    // MARK: - JSON loader

func load<T: Decodable>(fileName: String) -> T {
    let data: Data
    
    // getting data from main bundle:
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
        else {
            fatalError("Can't find \(fileName) in main bundle.")
        }
    
    // Attaching data from file to the "data" property
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(fileName) into data... - \n\(error)")
    }
    
    // Decode data, parse and return it to user:
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't decode data, pase \(fileName) as \(T.self): \n\(error)")
    }
}

