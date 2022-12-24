//
//  SideMenuOptionView.swift
//  OWLY
//
//  Created by Alex Danilkovas on 12/24/22.
//

import SwiftUI

struct SideMenuOptionView: View {
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: "person")
                .frame(width: 24, height: 24)
            
            Text("Profile")
                .font(.system(size: 15, weight: .semibold))
            
            
        }.padding()
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView()
    }
}
