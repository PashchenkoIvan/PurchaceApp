//
//  RealmHelper.swift
//  PurchaceApp
//
//  Created by Пащенко Иван on 12.07.2024.
//

import Foundation
import RealmSwift

class PurchaseObject: Object {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var text: String
    @Persisted var cost: Double
    @Persisted var timestamp: Date
}

extension PurchaseObject {
    static func getAllPurchases() -> [PurchaseObject] {
        let realm = try! Realm()
        return Array(realm.objects(PurchaseObject.self))
    }
}

extension PurchaseObject {
    static func addPurchase(text: String = "Nothing", cost: Double = 0.0) {
        let newPurchase = PurchaseObject()
        
        newPurchase.text = text
        newPurchase.cost = cost
        newPurchase.timestamp = Date()
        
        let realm = try! Realm()
        
        try! realm.write {
            realm.add(newPurchase)
        }
    }
}

extension PurchaseObject {
    static func deletePurchase(withId id: ObjectId) {
        let realm = try! Realm()
        if let purchaseToDelete = realm.object(ofType: PurchaseObject.self, forPrimaryKey: id) {
            try! realm.write {
                realm.delete(purchaseToDelete)
            }
        }
    }
}


