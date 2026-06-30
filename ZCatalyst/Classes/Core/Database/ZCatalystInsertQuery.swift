//
//  ZCatalystInsertQuery.swift
//  Pods
//
//  Created by Senthilkumar Selvaraj on 17/12/25.
//
import Foundation

public struct ZCatalystInsertQuery{
    
    var query : String
    
    init(builder: Builder) {
        self.query = builder.query;
    }
    
    
    public struct Builder{
        var query : String = String()
        private var columns: [String] = []
        private var values: [Any] = []
        private let tableName: String
        
        public init(tableName:String){
            self.tableName=tableName
        }
        
        public mutating func build() -> ZCatalystInsertQuery
        {
            var queryString = "INSERT INTO \(self.tableName) "
            
            if !self.columns.isEmpty {
                queryString += "(\(self.columns.joined(separator: ", "))) "
            }
            
            if !self.values.isEmpty {
                let formattedValues = self.values
                    .map { self.formatValue($0) }
                    .joined(separator: ", ")
                queryString += "VALUES (\(formattedValues));"
            }
            
            self.query = queryString
            return ZCatalystInsertQuery( builder : self )
        }
        
        
       public mutating func setColumnValue(column: String, value: Any) -> Builder {
            columns.append(column)
            values.append(value)
            return self
        }
        public mutating func values(_ valuesList: [Any]) -> Builder {
            if !columns.isEmpty {
                columns.removeAll()
            }
            if !values.isEmpty {
                values.removeAll()
            }
            values.append(contentsOf: valuesList)
            return self
        }
        
        private func formatValue(_ value: Any) -> String {
            if value is String || value is Bool {
                return "'\(value)'"
            }
            return "\(value)"
        }
    }
    
}
