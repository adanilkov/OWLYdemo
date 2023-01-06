//
//  ProductCard.swift
//  OWLY
//
//  Created by Alex Danilkovas on 12/24/22.
//

import SwiftUI

struct ProductCard: View {
    var product: Product
    var body: some View {
        NavigationLink{ProductView(product: product)} label: {
            VStack(spacing: -2) {
                VStack (alignment: .center, spacing: -85){
                    Image(product.image)
                        .resizable()
                        .scaledToFit()
                        .clipped()
                        .cornerRadius(4)
                    VStack(alignment: .leading) {
                        HStack(spacing: 3){
                            Text(product.name)
                                .bold()
                            Spacer()
                            Image(systemName: "clock")
                            Text("\(product.timeRemaining)h")
                        }
                        Text("Current Bid: $\(product.bidPrice, specifier: "%.2f")")
                            .font(.caption2)
                        Text("Buyout: $\(product.buyoutPrice, specifier: "%.2f")")
                            .font(.caption2)
                    }
                    .padding()
                    .frame(width: UIScreen.screenWidth - 30, alignment: .leading)
                    .background(.regularMaterial)
                    .cornerRadius(10)
                }
            }
            .shadow(radius: 3)
        }.frame(width: UIScreen.screenWidth - 10).padding(5)


    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[1])
    }
}
