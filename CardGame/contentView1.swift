//
//  contentView1.swift
//  CardGame
//
//  Created by apprenant60 on 20/06/2023.
//

import SwiftUI

struct ContentView1: View {
    static let myColor = Color("watremelon")
    
    var stocks: [Stock] = [
Stock(icon: "popcorn.circle.fill", title: "ETH", subtitle: "Ethereum", value: "$1,865.35", subvalue: "0.92%", arrowpoint: "arrow.up.right"),
Stock(icon:"x.circle.fill", title: "XRP", subtitle: "XRP", value: "$0,465.35", subvalue: "0.39%", arrowpoint: "arrow.down.backward"),
Stock(icon: "t.circle.fill", title: "USDT", subtitle: "Tether", value: "$1,00", subvalue: "0.21%", arrowpoint: "arrow.down.backward"),
Stock(icon:"flame.circle.fill", title: "BNB", subtitle: "BNB", value: "$365.35", subvalue: "1.22%", arrowpoint: "arrow.up.right")
  
    ]
    var body: some View {
        
        VStack {
            HStack{
                Image(systemName: "text.justify")
                Spacer()
                Image(systemName: "bell")
            }.fontWeight(.bold)
                .font(.title3)
            .padding(.bottom)
            //
            HStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 140, height: 45)
                    .foregroundColor(.white)
                    .overlay(){
                        HStack{
                            Image(systemName: "diamond.circle.fill")
                                .foregroundColor(.black)
                            Text("13,77 ETH")
                                .foregroundColor(.black)
                            Image(systemName: "chevron.down")
                        }
                    }
                Spacer()
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 140, height: 45)
                    .foregroundColor(.white)
                    .overlay(){
                        Text("Add money +")
                            .foregroundColor(.black)
                    }
            }
            .padding()
            
            Text("Total Balance")
                .font(.headline)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("$ 25,291.50")
                .font(.system(size: 65))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            //               Spacer()
            HStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 170, height: 60)
                    .foregroundColor(.white)
                    .overlay(){
                        HStack{
                            Text("Buy")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            Spacer()
                            Image(systemName: "arrow.down")
                                .frame(width:50, height:50)
                                .foregroundColor(.yellow)
                                .background(Color.black)
                                .cornerRadius(30)
                                .font(.system(size: 20))
    
                        }.padding(5)
                    }
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 170, height: 60)
                    .foregroundColor(.white)
                    .overlay(){
                        HStack{
                            
                            Spacer()
                            Text("Sell")
                                .fontWeight(.bold)
                            
                            Spacer()
                                .foregroundColor(.black);                            Image(systemName: "arrow.up")
                        
                                .frame(width:50, height:50)
                                .foregroundColor(.yellow)
                                .background(Color.black)
                                .cornerRadius(30)
                                .font(.system(size: 20))
                         
                          
                            
                        }.padding(4)
                    }
                  
            }
            .padding(.bottom,30)
           
         //tableau
                   
            
            HStack(){
                        Text("Watchlist")
                        Image(systemName: "chevron.right")
                            
                    }
                    .font(.system(size:25))
                    .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                    .frame(width: 380.0, height: 50.0)
               .background(Color.white)
               .cornerRadius(10)
               .padding(.bottom, -47)
               .fontWeight(.bold)
            
                List(stocks) { stock in
                    listRow(stock: stock)
                        .listRowSeparator(.hidden)
                        .ignoresSafeArea()
                       
                }
       .frame(width: 420.0, height: 500.0)
                    .scrollContentBackground(.hidden)
                   
             
                        
        }   .padding(.top, 110).padding()
            
            .background(ContentView1.myColor)
            .background(.yellow)
  }
            

        }
      
   

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}

