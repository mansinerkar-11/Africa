//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Mansi Nerkar on 8/16/23.
//

import Foundation

extension Bundle{
    func decode<T: Codable>(_ file: String ) -> T {
        // 1. locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Fail to locate \(file) in bundle")
        }
        
        //2. create the property for the data
        guard let data = try? Data(contentsOf: url)else{
            fatalError("Fail to load \(file) from bundle")
        }
        
        //3. create a decoder
        let decoder = JSONDecoder()
        
        //4. create the property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data)else{
            fatalError("Fail to decode \(file) from bundle")
        }
        
        //5. return ready-to-use data
        return loaded
    }
    
}
