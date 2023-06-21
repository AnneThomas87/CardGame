//
//  ExerciceOne.swift
//  CardGame
//
//  Created by apprenant60 on 19/06/2023.
//

import SwiftUI

struct ExerciceOne: View {
    
    @State var selectedSuit = "suit.heart.fill"
        
        var body: some View {
            
           
            VStack(spacing: 80){
                HStack(spacing: 80) {
                    SuitButton(selectedIcon: $selectedSuit, label: "13,77 ETH",
                               color: .white, systemImage: "location.north.circle.fill")
                    
                    
                    SuitButton(selectedIcon: $selectedSuit, label: "Add money", color: .white, systemImage: "plus")
                }
                
                Text("Total Balance")
                  
                   
                
//                    .background(.yellow)
                Text("$25,291.50")
                    .font(.largeTitle)
                   
//                              //                Image(systemName: selectedSuit)
                HStack(spacing: 80) {
                    SuitButton(selectedIcon: $selectedSuit, label: "Buy", color: .white, systemImage: "arrow.down.circle.fill")
                    
                    SuitButton(selectedIcon: $selectedSuit, label: "Sell", color: .white, systemImage: "arrow.up.circle.fill")
                    
                }
                //                .background(.yellow)
                

                                          List{
                    
                                              SuitButton(selectedIcon: $selectedSuit, label: "Watchlist", color: .white, systemImage: "")
                                              SuitButton(selectedIcon: $selectedSuit, label: "ETH", color: .white, systemImage: "drop.circle.fill")
                                              SuitButton(selectedIcon: $selectedSuit, label: "XPR", color: .white, systemImage: "x.circle.fill")
                                              SuitButton(selectedIcon: $selectedSuit, label: "USDT", color: .white, systemImage: "t.circle.fill")
                                              SuitButton(selectedIcon: $selectedSuit, label: "BNB", color: .white, systemImage: "diamond.fill")
                                                  
          
                }
                

                     
                 }
        
            .background(.yellow)
          
        }
   
    
}
   
struct ExerciceOne_Previews: PreviewProvider {
    static var previews: some View {
        ExerciceOne()
    }
}
