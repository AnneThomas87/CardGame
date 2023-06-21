//
//  SuitButtonOne.swift
//  CardGame
//
//  Created by apprenant60 on 19/06/2023.
//

import SwiftUI

struct SuitButton: View {
    @Binding var selectedIcon: String
    var label: String
    var color: Color
    var systemImage: String
    
    var body: some View {
        Button {
            selectedIcon = systemImage
        } label: {
            Label(label, systemImage: systemImage)
        }
        .padding()
        .background(color)
        .cornerRadius(40)
        .foregroundColor(.black)
        //        .frame(width: 100, height:100)
    }
}

struct SuitButton_Previews: PreviewProvider {
    static var previews: some View {
        SuitButton(selectedIcon: .constant(""), label: "fleche", color: .purple, systemImage: "arrow.down.circle.fill")
    }
}
