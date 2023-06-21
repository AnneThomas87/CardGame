//
//  ExoOne.swift
//  CardGame
//
//  Created by apprenant60 on 20/06/2023.
//

import SwiftUI

struct ExoOne: View {
    var body: some View {
        VStack {
            
            HStack {
                
                ButtonView(buttonIcon: "diamond.fill", buttonColor: .black, buttonText: "13,77 ETH")
                
                Spacer()
                
                ButtonView(buttonIcon: "plus", buttonColor: .black, buttonText: "Add money")
            }
            Text("Total Balance")
           
            Text("$25,291;50")
                .font(.largeTitle)
                .multilineTextAlignment(.leading)
               
            HStack {
                
                ButtonView(buttonIcon: "arrow.down.circle.fill", buttonColor: .red, buttonText: "Buy")
                
                Spacer()
                
                ButtonView(buttonIcon: "arrow.up.circle.fill", buttonColor: .red, buttonText: "Sell")
            }
                    List{
                        Text("Watchlist")
                        Text("")
                    
                }
//                .background(.yellow)
        }
        
        .background(.yellow)
        
    }
    
    
}

struct ExoOne_Previews: PreviewProvider {
    static var previews: some View {
        ExoOne()
    }
}

struct ButtonView: View {
    
    let buttonIcon : String
    let buttonColor : Color
    let buttonText : String
    

    
    var body: some View {
        
        Button {

        } label: {
            Image(systemName: buttonIcon)
            Text(buttonText)
        }
        .buttonStyle(.borderedProminent)
        .tint(buttonColor)
        .padding()
        
    }
}
