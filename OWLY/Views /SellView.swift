//
//  SellView.swift
//  OWLY
//
//  Created by Alex Danilkovas on 1/2/23.
//

import SwiftUI

struct SellView: View {
    @State private var image = UIImage()
    @State private var showSheet = false
    

    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.black, style: StrokeStyle(lineWidth: 1, dash: [5]))
                    .frame(width: UIScreen.screenWidth - 10, height: 190)
                    .offset(y:20)
                Image(systemName: "photo.on.rectangle")
                    .font(.system(size:60))
                    .fontWeight(.light)
                RoundedRectangle(cornerRadius: 7)
                    .stroke(Color.black, lineWidth: 3)
                    .frame(width: 100, height: 100)
                Text("Add Product Photos")
                    .offset(y: 80)
            }.onTapGesture {
                showSheet = true
            }
            .sheet(isPresented: $showSheet) {
                ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
            }
            
            
            VStack (alignment: .leading){
                Text("Add Tags")
                    .padding(.top)
                    .fontWeight(.semibold)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack() {
                        ForEach(presetTags) { tag in
                            ProductTagComponent(tag: tag)
                        }
                    }
                    .padding(2)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)

        }
    }
}

struct SellView_Previews: PreviewProvider {
    static var previews: some View {
        SellView()
    }
}
