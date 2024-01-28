//
//  PostData.swift
//  H4XOR
//
//  Created by 周祥鹏 on 2024/1/27.
//

import Foundation

// 定义返回的数据结构：没有处理当 key值不存在时产生的问题

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let url: String
    let points: Int
}
