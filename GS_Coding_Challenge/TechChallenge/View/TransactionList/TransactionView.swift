//
//  TransactionView.swift
//  TechChallenge
//
//  Created by Adrian Tineo Cabello on 27/7/21.
//

import SwiftUI

struct TransactionView: View {
    let transaction: TransactionModel
    let isExpanded: Bool
    @State private var transactionListVM = TransactionnListViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text(transaction.category.rawValue)
                    .font(.headline)
                    .foregroundColor(transaction.category.color)
                Spacer()
                Image("pinned")
                    .frame(width: 20.0, height: 30.0, alignment: .center)
                    .scaledToFit()
            }
            if isExpanded {
                
                HStack {
                    transaction.image
                        .resizable()
                        .frame(
                            width: 60.0,
                            height: 60.0,
                            alignment: .top
                        )
                    
                    VStack(alignment: .leading) {
                        Text(transaction.name)
                            .secondary()
                        Text(transaction.accountName)
                            .tertiary()
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("$\(transaction.amount.formatted())")
                            .bold()
                            .secondary()
                        Text(transaction.date.formatted)
                            .tertiary()
                    }
                }
                .padding(8.0)
                .background(Color.accentColor.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 8.0))
                
            }
        }
        
    }
}
#if DEBUG
//struct TransactionView_Previews: PreviewProvider {
//    static var previews: some View {
//        VStack {
//            TransactionView(transaction: ModelData.sampleTransactions[0])
//            TransactionView(transaction: ModelData.sampleTransactions[1])
//        }
//        .padding()
//        .previewLayout(.sizeThatFits)
//    }
//}
#endif
