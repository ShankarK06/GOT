//
//  NetworkModel.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import UIKit

public enum CustomError: Error {
    case networkReachabilityError , statusCode(Int,String) , customError(String) , defaultError(Error)
}

extension CustomError: LocalizedError {
    public var errorDescription: (errorMessage: String, errorCode: String) {
        switch self {
        case .networkReachabilityError:
            return (NSLocalizedString("You appear to be offline!", comment: "My error"),"")
        case .statusCode(let code , let errorString) :
            switch code {
            case 400 :
                return (NSLocalizedString(errorString, comment: "My error"),"400")
            case 500...599 :
                return (NSLocalizedString("Something went wrong, please try again later.", comment: "My error"),"")
            default :
                return ("","")
            }
        case .customError(let errorString) :
            return (NSLocalizedString(errorString, comment: "My error"),"")
        case .defaultError(let error) :
            return (NSLocalizedString(error.localizedDescription, comment: "My error"),"")
        }
    }
}

class NetworkModel: NSObject {

    static let sharedInstance = NetworkModel()
    
    private override init()
    {
        
    }
    
     func getRequest(method : String, requestDict : [String : Any]?, params : String) -> URLRequest {
        
//        let originalString = params
//        let urlString = originalString.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
        let url = URL(string: params)
        var request = URLRequest(url: url!)
        request.httpMethod = method
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        return request
    }


    func makeRequest(request: URLRequest, completion: @escaping (_ data: Data?,_ response: URLResponse?,_ error: CustomError?) -> ()) {
        
        let reachability = Reachability()!
        if reachability.isReachable {
            let config = URLSessionConfiguration.default
            let session = URLSession(configuration: config)
            session.dataTask(with: request) { (data, response, error) in
                if let httpResponse = response as? HTTPURLResponse {
                    if httpResponse.statusCode == 420 {
                        return
                    } else if httpResponse.statusCode != 200 {
                        let error = CustomError.statusCode(400, "Error while fetching")
                        completion(nil , response , error)
                        return
                    }
                }
                guard let err = error else {
                    completion(data , response , nil)
                    return
                }
                let error = CustomError.defaultError(err)
                completion(nil , response , error)
                }.resume()
        }else{
            
        }
        
    }
    
}
