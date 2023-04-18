//
//  fetchData.swift
//  sampleApp
//
//  Created by Haziz on 18/04/23.
//

import Foundation


extension URLSession {
    func fetchData(at url: URL, completion: @escaping (Result<allProductsFromAPIType, Error>) -> Void) {
    self.dataTask(with: url) { (data, response, error) in
      if let error = error {
        completion(.failure(error))
      }

      if let data = data {
        do {
            let fetched = try JSONDecoder().decode(allProductsFromAPIType.self, from: data)
            let (products) = fetched
          completion(.success(products))
        } catch let decoderError {
          completion(.failure(decoderError))
        }
      }
    }.resume()
  }
}
