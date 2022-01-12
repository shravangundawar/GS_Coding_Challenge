//
//  FilteringButtonsView.swift
//  TechChallenge
//
//  Created by Shravan.Gundawar on 19/12/21.
//

import SwiftUI

struct FilteringButtonsView: View {
    @State private var transactionListVM = TransactionnListViewModel()

    var filterColor: [Color] = [.black, .green, .pink, .orange, .blue, .purple]
    var filterTitle: [String] =
    ["all", "food", "health", "entertainment", "shopping", "travel"]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(0..<filterTitle.count) { i in
                    Text("\(filterTitle[i])")
                        .foregroundColor(Color.white)
                        .font(.title2)
                        .fontWeight(.bold)
                        .onTapGesture {
                            debugPrint(filterTitle[i])
                            transactionListVM.updateList(filter: filterTitle[i])
                        }
                        .padding()
                        .background(filterColor[i])
                        .frame( height: 40.0)
                        .cornerRadius(20.0)

                }
            }
        }
        .frame(height: 80.0)
        .background(Color.accentColor.opacity(0.8))

    }
}

struct FilteringButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            FilteringButtonsView()
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
