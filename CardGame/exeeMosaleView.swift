//
//  exeeMosaleView.swift
//  CardGame
//
//  Created by apprenant60 on 20/06/2023.
//

import SwiftUI

struct exeeMosaleView: View {
   @State var name: String = "Adeline"
    @State private var showingSheet = false
   
    
    var body: some View {
        VStack{
            Spacer()
            Text("Bonjour, \(name)")
                .font(.largeTitle)
            Spacer()
                       
            Button{
                showingSheet.toggle()
            } label: {
                Text("Changer mon nom")
                    .padding(10)
                                    .background(Color.teal)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
            }  .sheet(isPresented: $showingSheet) {
                SheetView(name: $name)
               
            }
        }
    }
}

struct exeeMosaleView_Previews: PreviewProvider {
    static var previews: some View {
        exeeMosaleView()
    }
}
