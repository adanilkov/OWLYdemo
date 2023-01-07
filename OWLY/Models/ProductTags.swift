//
//  PresetTags.swift
//  OWLY
//
//  Created by Alex Danilkovas on 1/7/23.
//

import Foundation
import SwiftUI

struct Tag: Identifiable {
    var id = UUID()
    var tagName: String
    var tagColorUnselected: Color?
    var tagColorSelected: Color?
}

var presetTags = [Tag(tagName: "Shoes", tagColorUnselected: .clear, tagColorSelected: .cyan),
                  Tag(tagName: "Furniture", tagColorUnselected: .clear, tagColorSelected: .cyan),
                  Tag(tagName: "Electronics", tagColorUnselected: .clear, tagColorSelected: .cyan),
                  Tag(tagName: "Clothing", tagColorUnselected: .clear, tagColorSelected: .cyan),
                  Tag(tagName: "Men's", tagColorUnselected: .clear, tagColorSelected: .cyan),
                  Tag(tagName: "Women's", tagColorUnselected: .clear, tagColorSelected: .cyan),
                  Tag(tagName: "Applience", tagColorUnselected: .clear, tagColorSelected: .cyan)]


