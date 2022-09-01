//
//  WhatsNewPage.swift
//  Whats New
//
//  Created by Kovs on 02.09.2022.
//

import SwiftUI

struct WhatsNewPage: View {

    @EnvironmentObject var userData: UserData
    @Environment(\.presentationMode) var presentationMode
    var featureObject: Feature
    
    var firstFeatureObject = "1.1"
    
    var body: some View {
        NavigationView {
            VStack(spacing: 70) {
                Spacer()
                
                VStack {
                    Text("What's new?")
                        .font(.largeTitle)
                        .bold()
                    Text("Version \(featureObject.version)")
                        .font(.title)
                        .foregroundColor(.gray)
                }
                
                
                VStack(alignment: .center, spacing: 10) {
                    ForEach(featureObject.new, id: \.self) { newFeature in
                        WNSubView(feature: newFeature)
                    }
                }
                .padding(.horizontal)
                
                
                Button(action: {
                    // print("That worked, you sunnawabeach")
                    self.presentationMode.wrappedValue.dismiss()
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
                
                Spacer()
                Spacer()
            .padding(.vertical)
            // end of VStack
            }
            
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.ultraThickMaterial)
                            .frame(width: 30, height: 30)
                        Image(systemName: "multiply")
                            .foregroundColor(.gray)
                            .font(.body)
                    }
                    
                })
            }
        }
        // .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        #if os(iOS)
        .navigationViewStyle(.stack)
        #endif
        //end of NavView
    }
}

struct WhatsNewPage_Previews: PreviewProvider {
    static var previews: some View {
        let userData = UserData()
        return WhatsNewPage(featureObject: userData.features[0])
            .environmentObject(UserData())
    }
}
