//
//  modaleView.swift
//  CardGame
//
//  Created by apprenant60 on 20/06/2023.
//

import SwiftUI

struct modaleView: View {
    @State private var isModalPresented = false
    
    var body: some View {
        
        VStack {
            Spacer()
            Text("Bonjour Adeline!")
                .font(.largeTitle)
            Spacer()
            
            Button(action: {
                isModalPresented = true
                
            }){
                Text("Changer de nom")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $isModalPresented, onDismiss: {
                
            }){
//                                modaleSheet()
            }
        }
    }

//            struct modaleSheet: View
//    var body: some View {

//        Text("Contenu")
//            .font(.title)
//            .padding()
    }
//        }
    

struct modaleView_Previews: PreviewProvider {
    static var previews: some View {
        modaleView()
    }
}
