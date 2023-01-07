//
//  ContentView.swift
//  OWLY
//
//  Created by Alex Danilkovas on 12/22/22.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        let columns = [GridItem(.adaptive(minimum: 200), spacing: 20)]
        NavigationView {
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: columns) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                    }
                }
                .padding(.bottom)
            }
            .searchable(text: $searchText, prompt: "Search Brandeis")
            .navigationBarTitleDisplayMode(.inline)
            
            
            //contains both top and bottom toolbar navigation
            .toolbar {
            
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text("Home")
                            .bold()
                        .accessibilityAddTraits(.isHeader)
                        Text("/  Brandeis")
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}, label: {
                        Image(systemName: "list.bullet")
                    })
                }
        
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}, label: {
                        Image(systemName: "slider.horizontal.3")
                    })
                }
                
                ToolbarItem(placement: .bottomBar) {
                    HStack (spacing: 80){
                        NavigationLink{AllBidsView()} label: {
                            VStack {
                                Image(systemName: "cart")
                                    .font(.system(size: 20))
                           
                                Text("My Bids")
                                    .font(.caption)
                            }
                        }

                        NavigationLink{ SellView() } label: {
                            VStack {
                                Image(systemName: "plus")
                                    .font(.system(size: 25))
                                Text("Sell")
                                    .font(.caption)
                            }
                        }
                        
                        NavigationLink{ProfileView()} label: {
                            VStack {
                                Image(systemName: "person.crop.circle")
                                    .font(.system(size: 20))
                                Text("Profile")
                                    .font(.caption)
                            }
                        }
                    }
                }

            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
    
}

func menuButtonAction() {
    
}
struct bottomBar {
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

