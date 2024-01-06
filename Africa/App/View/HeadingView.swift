//
//  headingview.swift
//  Africa
//
//  Created by Mansi Nerkar on 8/21/23.
//

import SwiftUI

struct HeadingView: View {
    //MARK PROPRTIES
    
    var headingImage: String
    var headingText: String
    //MARK BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

//MARK PREVIEW
struct HadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "wilderness in pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
