//
//  SheetView.swift
//  CardGame
//
//  Created by apprenant60 on 20/06/2023.
//

import SwiftUI

struct SheetView: View {
    @Binding var name: String
    @State var newname:String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Button(action: {
    dismiss()
            }) {
               Image(systemName: "xmark")
                    .font(.system(size: 40))
                    .foregroundColor(.teal)
            } .padding(.leading, 300)
            
            Spacer()
            Text("Entrer mon nouveau nom:")
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField("Nom", text: $newname)
                .frame(height: 50)
                .textFieldStyle(RoundedBorderTextFieldStyle())
               
    Spacer()
            Button(action: {
     name = newname
            }) {
                Text("Valider")
            }
            .padding(10)
                            .background(Color.teal)
                            .cornerRadius(10)
                            .foregroundColor(.white)
            
          
            
            
        }.padding()
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(name: .constant(""))
    }
}
