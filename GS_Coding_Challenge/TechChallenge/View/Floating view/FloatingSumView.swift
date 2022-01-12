//
//  FloatingSumView.swift
//  TechChallenge
//
//  Created by Shravan.Gundawar on 19/12/21.
//

import SwiftUI

struct FloatingSumView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("all")
                    .font(.system(.headline))
                    .fontWeight(.regular)
                    .foregroundColor(Color.green)
            }
            HStack {
                Text("Total Spent:")
                    .font(.system(.subheadline))
                    .fontWeight(.regular)
                Spacer()
                Text("$472.08")
                    .font(.system(.subheadline))
                    .fontWeight(.bold)

            }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 8.0)
                    .stroke(Color.accentColor, lineWidth: 2)
            )
    }
}

struct FloatingSumView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            FloatingSumView()
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
