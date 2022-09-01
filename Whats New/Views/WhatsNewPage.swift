//
//  WhatsNewPage.swift
//  Whats New
//
//  Created by Kovs on 02.09.2022.
//

import SwiftUI

struct WhatsNewPage: View {
    
    
    var body: some View {
        NavigationView {
            Spacer()
            
            
            VStack(alignment: .center, spacing: 10) {
                Text("What's new?")
                    .font(.largeTitle)
                Text("Version 1.2")
                    .font(.title)
                    .foregroundColor(.gray)
                
                
                VStack {
                    
                }
            }
            // end of VStack
            
            
            Spacer()
        }
        // end of NavView
    }
}

struct WhatsNewPage_Previews: PreviewProvider {
    static var previews: some View {
        WhatsNewPage()
    }
}
