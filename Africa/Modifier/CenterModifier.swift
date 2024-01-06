//
//  CenterModifier.swift
//  Africa
//
//  Created by Mansi Nerkar on 9/25/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body (content: Content) -> some View
    {
        HStack {
            Spacer ()
            content
            Spacer ()
        }
    }
}
