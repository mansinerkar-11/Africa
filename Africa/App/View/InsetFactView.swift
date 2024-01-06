//
//  InsetFactView.swift
//  Africa
//
//  Created by Mansi Nerkar on 8/25/23.
//

import SwiftUI

struct InsetFactView: View {
    //MARK PROPERTIES
    let animal:Animal
    
    //MARK BODY
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact,id:\.self) { item in
                    Text(item)
                }
            }//:Tabs
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148,idealHeight: 168,maxHeight: 180)
        }//: Box
    }
}

//MARK PREVIEW
struct InsetFactView_Previews: PreviewProvider {
    static let animals:  [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[0 ])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
