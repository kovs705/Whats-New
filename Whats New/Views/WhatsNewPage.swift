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
            
            VStack(spacing: 70) {
                VStack {
                    Text("What's new?")
                        .font(.largeTitle)
                        .bold()
                    Text("Version 1.2")
                        .font(.title)
                        .foregroundColor(.gray)
                }
                
                
                VStack(alignment: .center, spacing: 25) {
                    WNSubView()
                    WNSubView()
                    WNSubView()
                    WNSubView()
                    WNSubView()
                }
                .padding(.horizontal)
                
                
                Button(action: {
                    
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: UIScreen.main.bounds.width - 80, height: 50)
                        Text("Continue")
                            .font(.body)
                            .bold()
                            .foregroundColor(.white)
                    }
                })
            }
            .padding(.vertical)
            // end of VStack
            
            
        }
        #if os(iOS)
        .navigationViewStyle(.stack)
        #endif
        //end of NavView
    }
}

struct WhatsNewPage_Previews: PreviewProvider {
    static var previews: some View {
        WhatsNewPage()
    }
}
