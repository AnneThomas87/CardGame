//
//  ShowView.swift
//  CardGame
//
//  Created by apprenant60 on 20/06/2023.
//

//import SwiftUI
//
//struct ShowView: View {
//    @State var name: String = "Adeline"
//    @State var isChangeNameOn: Bool = false
//
//    var body: some View {
//        ZStack {
//            VStack {
//                Spacer()
//                Text("Bonjour, " + name)
//                    .font(.largeTitle)
//
//                Spacer()
//
//                Button(action: { isChangeNameOn.toggle() }) {
//                    Text("Changer mon nom")
//                        .foregroundColor(.white)
//                        .padding()
//                        .background(Color.cyan)
//                        .cornerRadius(8)
//                }.sheet(isPresented: $isChangeNameOn) {
//                    SheetView()
//                }
//            }
//        }
//    }
//}
//
//struct SheetView: View {
//    var body: some View {
//        
//        Spacer()
//        Text("Entrer mon nouveau nom:")
//        Spacer()
//        Button(action: {
//            
//        }){
//            Text("valider")
//                .foregroundColor(.white)
//                .padding()
//                .background(Color.blue)
//                .cornerRadius(10)
//        }
//    }
//}
//struct ShowView_Previews: PreviewProvider {
//    static var previews: some View {
//        ShowView()
//    }
//}
