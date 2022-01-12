//
//  TransactionnListViewModel.swift
//  TechChallenge
//
//  Created by Shravan.Gundawar on 19/12/21.
//

import Foundation

class TransactionnListViewModel {
    
    var pinnedTransactions = [TransactionModel]()

    
    func updateList(filter: String) {
        debugPrint(filter)
    }
    
    func performPinActionOnTransaction(isPinned: Bool) {
        debugPrint("isPinned: \(isPinned)")
    }
    
    func getPinnedTransactionsTotalSpent() {
//        pinnedTransactions
    }
}
