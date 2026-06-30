//
//  ZCatalystDeleteQuery.swift
//  Pods
//
//  Created by Senthilkumar Selvaraj on 17/12/25.
//

import Foundation

public struct ZCatalystDeleteQuery{
    
    var query:String
    
    init(builder:Builder){
        self.query=builder.query
    }
    
    public struct Builder{
        var query: String = ""
        
        public init() {}
        
        public mutating func from(tableName: String) -> Builder {
            query += "DELETE FROM \(tableName)"
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
        public mutating func or(column: String, comparator: Comparator, value: Any) -> Builder {
            query += " OR \(column) \(comparator.rawValue) \(formatValue(value)) "
            return self
        }
        
        public mutating func build() -> ZCatalystDeleteQuery {
            query += ";"
            return ZCatalystDeleteQuery(builder:self)
        }
        func formatValue(_ value: Any) -> String {
            if value is String {
                return "'\(value)'"
            }
            return "\(value)"
        }
    }
}
