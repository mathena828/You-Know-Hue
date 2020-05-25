//
//  ContentView.swift
//  You Know Hue
//
//  Created by Mathena Angeles on 5/23/20.
//  Copyright © 2020 Mathena Angeles. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var red:Double = 0
    @State private var green:Double = 0
    @State private var blue:Double = 0
    var body: some View {
        VStack {
            Text("\(getHex(self.red,self.blue,self.green))").scaleEffect(1.5)
            Rectangle().frame(width:200,height:200).foregroundColor(Color(red: red/255, green: green/255, blue: blue/255)).border(Color(red: red/255, green: green/255, blue: blue/255), width:1)
            VStack{
                SliderView(color:$red,label:"Red")
                           SliderView(color:$green,label:"Green")
                           SliderView(color:$blue,label:"Blue")
                
            }.padding(.bottom,50)
            Button(action: {
                self.generateRandom()
            }) {
                Text("Random").bold().padding(.horizontal,35).padding(.vertical,10).foregroundColor(.white).background(Color.blue).scaleEffect(1.5).cornerRadius(50)
            }
        }.padding()
    }
    func getHex(_ r:Double, _ b:Double, _ g:Double) -> String {
       let hex = "#" + String(format:"%02X", Int(r)) + String(format:"%02X", Int(g)) + String(format:"%02X", Int(b))
       return hex
    }
    func generateRandom() {
        self.red = Double(Int.random(in: 0...255))
        self.green = Double(Int.random(in: 0...255))
        self.blue = Double(Int.random(in: 0...255))
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
