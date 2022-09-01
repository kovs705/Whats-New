//
//  WNSubView.swift
//  Whats New
//
//  Created by Kovs on 02.09.2022.
//

import SwiftUI

struct WNSubView: View {
    
    var feature: Feature.New
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 20) {
            Spacer()
            // icon:
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.blue)
                    .frame(width: 50, height: 50)
                Image(systemName: feature.icon)
                    .foregroundColor(.white)
                    .font(.title)
            }
            
            VStack(alignment: .leading) {
                Text(feature.title)
                    .font(.body)
                    .bold()
                Text(feature.subtitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .bold()
                Text(feature.body)
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
        WNSubView(feature: featuresData[0].new[0])
            .previewLayout(.fixed(width: 322, height: 75))
    }
}
