//
//  ContentView.swift
//  TavernPub SwiftUI
//
//  Created by Admin on 5.02.23.
//

import SwiftUI

struct ContentView: View {
    let background = LinearGradient(
        colors: [Color.blue, Color.yellow],
        startPoint: .top, endPoint: .bottom)
    @ObservedObject var VM = ViewModel()
    
    var body: some View {
        ZStack {
            ScrollView {
                Text("Tavern Pub")
                    .padding()
                    .font(.title)
                    .fontDesign(.monospaced)
                Spacer (minLength: 410)
                ForEach(VM.beerEmptyArray) {Beer in
                    HStack {
                        Spacer()
                        Text(Beer.beerName)
                            .font(.title)
                        Spacer ()
                        VStack(alignment: .trailing) {
                            Text(Beer.remains)
                            Text(Beer.country)
                            Text(Beer.price)
                        }
                        Image(systemName: "arrow.forward")
                            .imageScale(.large)
                            .foregroundColor(.black)
                            .padding(16)
                    }
                    .frame(height: 80)
                }
                .navigationBarTitle("Testing", displayMode: .inline)
            }
            .background(background)
            .navigationBarTitle("Testing", displayMode: .inline)
        }
    }
}

struct AlekandryjaBeer: View {
    var body: some View {
        ZStack{
            Text("Hi")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
