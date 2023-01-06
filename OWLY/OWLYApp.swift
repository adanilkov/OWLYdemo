//
//  OWLYApp.swift
//  OWLY
//
//  Created by Alex Danilkovas on 12/22/22.
//

import SwiftUI

@main
struct OWLYApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
