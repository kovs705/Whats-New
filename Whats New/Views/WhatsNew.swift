//
//  WhatsNew.swift
//  Whats New
//
//  Created by Kovs on 06.11.2022.
//


import SwiftUI
import WhatsNewPack

struct WhatsNew: View {

    @EnvironmentObject var userData: UserData
    @Environment(\.presentationMode) var presentationMode
    var featureObject: Feature
    
    var firstFeatureObject = "1.1"
    
    var body: some View {
//        NavigationView {
            VStack(spacing: 70) {
                Spacer()
                Spacer()
                
                VStack {
                    Text("What's new?")
                        .font(.largeTitle)
                        .bold()
                    Text("Version \(featureObject.version)")
                        .font(.title)
                        .foregroundColor(.gray)
                }
                
                
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(featureObject.new, id: \.self) { newFeature in
                        WNSubView(feature: newFeature)
                            .frame(width: UIScreen.main.bounds.width-20)
                    }
                }
                .frame(width: UIScreen.main.bounds.width)
                // .padding(.horizontal)
                
                
                Button(action: {
                    // print("That worked, you sunnawabeach")
                    // self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 350, height: 50)
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
//
//        }
//
//        // .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)
//        #if os(iOS)
//        .navigationViewStyle(.stack)
//        #endif
//        //end of NavView
    }
}

struct WhatsNew_Previews: PreviewProvider {
    static var previews: some View {
        let userData = UserData()
        return WhatsNew(featureObject: userData.features[0])
            .previewDevice("iPhone 14 Pro")
            .environmentObject(UserData())
    }
}
