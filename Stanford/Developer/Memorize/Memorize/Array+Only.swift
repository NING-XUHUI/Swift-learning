//
//  Array+Only.swift
//  Memorize
//
//  Created by 宁旭晖 on 2021/2/19.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
