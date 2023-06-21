//
//  listRow.swift
//  CardGame
//
//  Created by apprenant60 on 20/06/2023.
//

import SwiftUI

struct listRow: View {
    var stock: Stock
    var body: some View {
        HStack{
            Text("\(Image(systemName:stock.icon))")
                .font(.system(size: 40))
            VStack(alignment: .leading){
                Text(stock.title)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                Text(stock.subtitle)
                    .foregroundColor(.gray)
            }
            Spacer()
            VStack(){
                Text("\(stock.value)")
                HStack{
                    Text("\(Image(systemName:stock.arrowpoint))")
                    Text("\(stock.subvalue)")
                }.foregroundColor(.gray)
            }
        }
    .frame(width: 350, height: 75)
   
    }
}

struct listRow_Previews: PreviewProvider {
    static var previews: some View {
        listRow(stock: Stock(icon: "heart", title: "hi", subtitle: "sup", value: "10", subvalue:" 0.5", arrowpoint: "arrow.up"))
    }
}
