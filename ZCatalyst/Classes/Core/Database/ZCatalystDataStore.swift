//
//  Database.swift
//  Catalyst
//
//  Created by Giridhar on 29/05/19.
//

import Foundation



/// The Database type allows you to access the Zoho Catalyst Database
public struct ZCatalystDataStore
{
    public func getZCatalystTable(tableIdentifier : String)->ZCatalystTable{
        
        return ZCatalystTable(tableIdentifier: tableIdentifier);
    }
    
    public func execute( query : ZCatalystSelectQuery, completion: @escaping (Result<[ [ String : Any ] ], ZCatalystError>) -> Void)
    {
        APIHandler().executeZCQL( query : query.query, isOLAP: false, completion : completion )
    }
    
    public func executeOLAPQuery( query : ZCatalystSelectQuery, completion: @escaping (Result<[ [ String : Any ] ], ZCatalystError>) -> Void)
    {
        APIHandler().executeZCQL( query : query.query, isOLAP: true, completion : completion )
    }
    public func execute( query : ZCatalystInsertQuery, completion: @escaping (Result<[ [ String : Any ] ], ZCatalystError>) -> Void)
    {
        APIHandler().executeZCQL( query : query.query, isOLAP: false, completion : completion )
    }
    
    public func executeOLAPQuery( query : ZCatalystInsertQuery,  completion: @escaping (Result<[ [ String : Any ] ], ZCatalystError>) -> Void)
    {
        APIHandler().executeZCQL( query : query.query, isOLAP: true, completion : completion )
    }
    public func execute( query : ZCatalystUpdateQuery, completion: @escaping (Result<[ [ String : Any ] ], ZCatalystError>) -> Void)
    {
        APIHandler().executeZCQL( query : query.query, isOLAP: false, completion : completion )
    }
    
    public func executeOLAPQuery( query : ZCatalystUpdateQuery, completion: @escaping (Result<[ [ String : Any ] ], ZCatalystError>) -> Void)
    {
        APIHandler().executeZCQL( query : query.query, isOLAP: true, completion : completion )
    }
    public func execute( query : ZCatalystDeleteQuery, completion: @escaping (Result<[ [ String : Any ] ], ZCatalystError>) -> Void)
    {
        APIHandler().executeZCQL( query : query.query, isOLAP: false, completion : completion )
    }
    
    public func executeOLAPQuery( query : ZCatalystDeleteQuery, completion: @escaping (Result<[ [ String : Any ] ], ZCatalystError>) -> Void)
    {
        APIHandler().executeZCQL( query : query.query, isOLAP: true, completion : completion )
    }
    
    public func execute( query : String, completion: @escaping (Result<[ [ String : Any ] ], ZCatalystError>) -> Void)
    {
        APIHandler().executeZCQL( query : query, isOLAP: false, completion : completion )
    }
    
    public func executeOLAPQuery( query : String, completion: @escaping (Result<[ [ String : Any ] ], ZCatalystError>) -> Void)
    {
        APIHandler().executeZCQL( query : query, isOLAP: true, completion : completion )
    }
    
    
}
