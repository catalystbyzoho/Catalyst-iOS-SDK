//
//  ZCatalystUpdateQuery.swift
//  Pods
//
//  Created by Senthilkumar Selvaraj on 17/12/25.
//

import Foundation

public struct ZCatalystUpdateQuery {
    
    var query: String
    
    init(builder: Builder) {
        self.query = builder.query
    }
    
    public struct Builder {
        var query: String = ""
        private var hasSet: Bool = false
        
        public init(tableName: String) {
            query = "UPDATE \(tableName)"
        }
        
        public mutating func set(column: String, value: Any) -> Builder {
            if !hasSet {
                query += " SET "
                hasSet = true
            } else {
                query += ", "
            }
            query += "\(column) = \(formatValue(value))"
            return self
        }
        
        public mutating func `where`(column: String, comparator: Comparator, value: Any) -> Builder {
            query += " WHERE \(column) \(comparator.rawValue) \(formatValue(value)) "
            return self
        }
        
        public mutating func and(column: String, comparator: Comparator, value: Any) -> Builder {
            query += " AND \(column) \(comparator.rawValue) \(formatValue(value)) "
            return self
        }
        
        public  mutating func or(column: String, comparator: Comparator, value: Any) -> Builder {
            query += " OR \(column) \(comparator.rawValue) \(formatValue(value)) "
            return self
        }
        
        public mutating func build() -> ZCatalystUpdateQuery {
            query += ";"
            return ZCatalystUpdateQuery(builder: self)
        }
        
        func formatValue(_ value: Any) -> String {
            if value is String {
                return "'\(value)'"
            }
            return "\(value)"
        }
    }
}
