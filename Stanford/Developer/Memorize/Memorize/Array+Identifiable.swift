//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by 宁旭晖 on 2021/2/19.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
