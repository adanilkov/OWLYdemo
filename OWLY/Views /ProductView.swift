//
//  ProductView.swift
//  OWLY
//
//  Created by Alex Danilkovas on 12/25/22.
//

import SwiftUI

struct ProductView: View {
    var product: Product
    var body: some View {
        ScrollView {
            VStack(spacing: -35) {
                Image(product.image)
                    .resizable()
                    .scaledToFill()
//                    .overlay(
//                        Image(systemName: "chevron.backward")
//                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
//                            .padding(35)
//                    )
                HStack(spacing: 30){
                    VStack (alignment: .leading) {
                        Text("$\(product.bidPrice, specifier: "%.2f")")
                        Text("Current Bid")
                            .fontWeight(.thin)
                            .font(.caption)
                    }
                    VStack (alignment: .trailing){
                        HStack (spacing: 3){
                            Image(systemName: "clock")
                            Text("\(product.timeRemaining)h 02m 35s") //change time format -- hardcoded as of now
                        }
                        Text("Auction Ends")
                            .fontWeight(.thin)
                            .font(.caption)
                    }
                }
                .padding()
                .background(.ultraThickMaterial)
                .cornerRadius(10)
                .shadow(radius: 8)
            }
            VStack (alignment: .leading){
                Text(product.name)
                    .font(.title)
                    .fontWeight(.light)
                Text("This is a temporary hardcoded description of the product purely for demo purposes.")
                    .font(.caption)
                    .fontWeight(.ultraLight)
            }
            .padding(.leading, 25)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Rectangle().frame(width:330, height: 1).foregroundColor(.gray)
            
            HStack(spacing: 20) {
                VStack(alignment: .leading) {
                    Text("Condition")
                        .font(.caption2)
                        .fontWeight(.ultraLight)
                    
                    Text("Lightly Used")
                        .fontWeight(.light)
                }
                
                VStack(alignment: .leading) {
                    Text("Size")
                        .font(.caption2)
                        .fontWeight(.ultraLight)
                    
                    Text("Small")
                        .fontWeight(.light)
                }
                
                VStack(alignment: .leading) {
                    Text("Starting Bid")
                        .font(.caption2)
                        .fontWeight(.ultraLight)
                    
                    Text("10.00 USD")
                        .fontWeight(.light)
                }
                
                VStack(alignment: .leading) {
                    Text("Buyout")
                        .font(.caption2)
                        .fontWeight(.ultraLight)
                    
                    Text("\(product.buyoutPrice, specifier: "%.2f") USD")
                        .fontWeight(.light)
                }
            }.frame(maxHeight: .infinity, alignment: .bottom)
            Rectangle().frame(width:330, height: 1).padding(5).foregroundColor(.gray)
            
            VStack(alignment: .leading) {
                Text("Bidders")
                    .padding(.leading)
                    .padding(.top)
                    .fontWeight(.semibold)
                HStack {
                    Text("Bidder #1")
                        .fontWeight(.thin)
                    Spacer()
                    Rectangle()
                        .frame(width: 60)
                        .foregroundColor(.yellow)
                        .cornerRadius(20)
                        .overlay(
                            Text("15.00")
                                .foregroundColor(.gray)
                                .bold()
                        )
                }.padding(.leading).padding(.trailing)
                
                HStack {
                    Text("Bidder #2")
                        .fontWeight(.thin)
                    Spacer()
                    Rectangle()
                        .frame(width: 60)
                        .foregroundColor(.yellow)
                        .cornerRadius(20)
                        .overlay(
                            Text("12.00")
                                .foregroundColor(.gray)
                                .bold()
                        )
                }.padding(.leading).padding(.trailing)
                
                HStack {
                    Text("Bidder #1")
                        .fontWeight(.thin)
                    Spacer()
                    Rectangle()
                        .frame(width: 60)
                        .foregroundColor(.yellow)
                        .cornerRadius(20)
                        .overlay(
                            Text("10.00")
                                .foregroundColor(.gray)
                                .bold()
                        )
                }.padding(.leading).padding(.trailing)
            }
            .padding(.bottom)
        }
        .ignoresSafeArea()
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: productList[7])
    }
}
