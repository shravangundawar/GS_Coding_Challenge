//
//  TransactionListView.swift
//  TechChallenge
//
//  Created by Adrian Tineo Cabello on 27/7/21.
//

import SwiftUI

struct TransactionListView: View {
    let transactions: [TransactionModel] = ModelData.sampleTransactions
    let isPinned: Bool
    @State private var unpinnedTransaction: Set<TransactionModel> = []
    @State private var transactionListVM = TransactionnListViewModel()

    func toggle(transaction: TransactionModel) {
        print("Selected \(transaction.id)")
        transactionListVM.pinnedTransactions = transactions
        if unpinnedTransaction.contains(transaction) {
            unpinnedTransaction.remove(transaction)
        } else {
            unpinnedTransaction.insert(transaction)
        }
    }
    
    func updateFilteredList(filter: String) {
        debugPrint(filter)
    }
    
    var body: some View {
        
        VStack {
            FilteringButtonsView()
                .onTapGesture {
                    updateFilteredList(filter: "123")
                }

            List {
                ForEach(transactions) { transaction in
                    TransactionView(transaction: transaction, isExpanded: !self.unpinnedTransaction.contains(transaction))
                        .onTapGesture {
                            toggle(transaction: transaction)
                        }
                }
            }
            .listStyle(PlainListStyle())
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Transactions")
            
            FloatingSumView()
                .padding()
        }
    }
    
   
}

#if DEBUG
struct TransactionListView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionListView(isPinned: false)
    }
}
#endif
