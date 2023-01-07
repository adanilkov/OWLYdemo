//
//  productTags.swift
//  OWLY
//
//  Created by Alex Danilkovas on 1/7/23.
//

import SwiftUI

struct ProductTagComponent: View {
    @State var isSelected = false
    var tag: Tag
    var body: some View {
        Button(action: {
            isSelected.toggle()
        }, label: {
            LazyVStack {
                LazyHStack { //using these lazy stacks in order to create an automatic frame around each word
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black, lineWidth: 1)
                        if (isSelected) {
                            RoundedRectangle(cornerRadius: 15)
                                .foregroundColor(tag.tagColorSelected)
                        } else {
                            RoundedRectangle(cornerRadius: 15)
                                .foregroundColor(tag.tagColorUnselected)
                        }

                        Text(tag.tagName)
                            .font(.system(size: 10, weight: .light))
                            .padding(4)
                    }
                }
            }
        })
    }
}

struct productTagComponent_Previews: PreviewProvider {
    static var previews: some View {
        ProductTagComponent(tag: presetTags[0])
    }
}
