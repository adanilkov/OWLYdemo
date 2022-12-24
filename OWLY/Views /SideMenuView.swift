//
//  SideMenuView.swift
//  OWLY
//
//  Created by Alex Danilkovas on 12/24/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
        ZStack {
            VStack {
                //implement header if needed at a later time
                
                HStack(spacing: 16) {
                    Image(systemName: "person")
                        .frame(width: 24, height: 24)
                    Text("Profile")
                        .font(.system(size: 15, weight: .semibold))
                    
                    Spacer()
                }.padding()
                
            }
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
