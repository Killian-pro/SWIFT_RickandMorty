//
//  RMService.swift
//  RickandMorty
//
//  Created by Cluzel Killian on 08/09/2023.
//

import Foundation

final class RMService{
    
    static let shared = RMService()

    private init() {}
    
    enum RMServiceError: Error {
        case failedToCreateRequest
        case failedToGetData
    }
    
    public func execute<T: Codable>(_ request: RMRequest,
                                    expecting type: T.Type,
                                    completion: @escaping (Result<T, Error>)-> Void)
    {
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest)
        {
            data, _,error in return
            guard let data = data, error == nil else
            {
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            
            do
            {
                let json = try JSONSerialization.jsonObject(with: data)
                print(String(describing: json))
            }
            catch
            {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    private func request(from rmRequest: RMRequest) -> URLRequest?
    {
        guard let url = rmRequest.url else { return nil}
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
}
