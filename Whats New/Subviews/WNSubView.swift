//
//  WNSubView.swift
//  Whats New
//
//  Created by Kovs on 02.09.2022.
//

import SwiftUI

struct WNSubView: View {
    var body: some View {
        
        
        HStack(alignment: .center, spacing: 20) {
            Spacer()
            // icon:
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.blue)
                    .frame(width: 50, height: 50)
                Image(systemName: "scribble")
                    .foregroundColor(.white)
                    .font(.title)
            }
            
            VStack(alignment: .leading) {
                Text("Apple pencil 3")
                    .font(.body)
                    .bold()
                Text("Supported")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .bold()
                Text("Available for iPad Pro and other platforms")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .lineLimit(2)
            }
            
            Spacer()
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width, height: 70)
        // end of HStack
    }
}

struct WNSubView_Previews: PreviewProvider {
    static var previews: some View {
        WNSubView()
            .previewLayout(.fixed(width: 322, height: 75))
    }
}
