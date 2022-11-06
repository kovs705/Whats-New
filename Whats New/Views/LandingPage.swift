//
//  ContentView.swift
//  Whats New
//
//  Created by Kovs on 31.08.2022.
//

import SwiftUI
import WhatsNewPack

// okay, it's been a while since I wrote in SwiftUI, so it can be tough when I'll work
// with this app and page, but let's make some starting points;

// 1 - Landing page with a button to open a modal VC (random color send with a push)
// 2 - modal VC should has a VStack with a button
// 3 - Add a Json file to work with base words of "Whats new"
// 4 - A Data file to work with Json
// 5 - TextFields with an ability to change some texts in the app?

struct LandingPage: View {
    
    // MARK: - States properties
    @State private var showNew: Bool = false
    @EnvironmentObject var userData: UserData
    
    let object = featuresData[0]
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                Spacer()
                
                NavigationLink(destination: WhatsNew(featureObject: object).environmentObject(UserData()), label: {
                    ZStack(alignment: .center) {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.blue)
                        Text("Tap me!")
                            .foregroundColor(.white)
                            .font(.body)
                            .bold()
                    }
                    .frame(width: UIScreen.main.bounds.width - 80, height: 50)
                })
                .padding(.vertical)
                
//                Button(action: {
//                    showNew.toggle()
//                }, label: {
//                    ZStack(alignment: .center) {
//                        RoundedRectangle(cornerRadius: 20)
//                            .fill(.blue)
//                        Text("Tap me!")
//                            .foregroundColor(.white)
//                            .font(.body)
//                            .bold()
//                    }
//                    .frame(width: UIScreen.main.bounds.width - 80, height: 50)
//
//                })
//                .sheet(isPresented: $showNew) {
//                    WhatsNewPage(featureObject: object).environmentObject(UserData())
//                }
//                .padding(.vertical)
                
            }
            // end of VStack
            .navigationTitle("Landing Page")
        }
        .navigationBarTitleDisplayMode(.large)
        // end of NavView
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage().environmentObject(UserData())
    }
}
