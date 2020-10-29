//
//  NewsAppDataManager.swift
//  NewsApp
//
//  Created by Ernest DeFoy on 10/28/20.
//

import Foundation

class NewsAppDataManager: BaseDataManager { }

// MARK:- NewsAPI

extension NewsAppDataManager {
    func newsApiTopHeadlines(params: [String: String], _ completion: @escaping ((RequestStatus, NewsAPI.TopHeadlines?) -> Void)) {
        let endpoint = NewsAPI.topHeadlines
        let urlString = endpoint.url
        let combinedParams = ["country": "us", "apiKey": endpoint.key].merged(with: params)

        let request = createRequest(urlString, combinedParams, nil)
        
        dataTask(request, completion)
    }
    
    func newsApiTopHeadlines(page: Int, _ completion: @escaping ((RequestStatus, NewsAPI.TopHeadlines?) -> Void)) {
        let endpoint = NewsAPI.topHeadlines
        let urlString = endpoint.url
        let params = ["country": "us", "apiKey": endpoint.key, "page": String(page)]

        let request = createRequest(urlString, params, nil)
        
        dataTask(request, completion)
    }
}

// MARK:- NYTimes API

extension NewsAppDataManager {
    
    func nyTimesMostPopularEmailed(_ completion: @escaping ((RequestStatus, NYTimesAPI.MostPopularModel?) -> Void)) {
        let urlString = NYTimesAPI.MostPopular.emailed.url
        let key = NYTimesAPI.key
        let params = ["api-key": key]

        let request = createRequest(urlString, params, nil)
        
        dataTask(request, completion)
    }
    
    func nyTimesMostPopularFacebook(_ completion: @escaping ((RequestStatus, NYTimesAPI.MostPopularModel?) -> Void)) {
        let urlString = NYTimesAPI.MostPopular.facebook.url
        let key = NYTimesAPI.key
        let params = ["api-key": key]

        let request = createRequest(urlString, params, nil)
        
        dataTask(request, completion)
    }

    func nyTimesMostPopularViewed(_ completion: @escaping ((RequestStatus, NYTimesAPI.MostPopularModel?) -> Void)) {
        let urlString = NYTimesAPI.MostPopular.viewed.url
        let key = NYTimesAPI.key
        let params = ["api-key": key]

        let request = createRequest(urlString, params, nil)
        
        dataTask(request, completion)
    }
}
