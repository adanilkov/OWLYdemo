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
                VStack (alignment: .center, spacing: -15){
                    Image(product.image)
                        .resizable()
                        .scaledToFit()
                        .clipped()
                        .cornerRadius(10)
                    VStack(alignment: .leading) {
                        Text(product.name)
                            .bold()
                            .padding(0.5)
                        Text("Current Bid: $\(product.bidPrice, specifier: "%.2f")")
                            .font(.caption2)
                        Text("Buyout: $\(product.buyoutPrice, specifier: "%.2f")")
                            .font(.caption2)
                    }
                    .padding()
                    .frame(width: 180, alignment: .leading)
                    .background(.ultraThickMaterial)
                    .cornerRadius(10)
                }
            }
            .shadow(radius: 3)
        }.frame(width:180)


    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[1])
    }
}
