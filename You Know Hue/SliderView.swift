//
//  SliderView.swift
//  You Know Hue
//
//  Created by Mathena Angeles on 5/23/20.
//  Copyright © 2020 Mathena Angeles. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    @Binding var color:Double
    var label:String
    var body: some View {
        VStack{
            Slider(value: $color, in: 0...255, step:1)
            Text("\(label): \(Int(color))").scaleEffect(1.5)
        }
        
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(color: Binding.constant(0), label: "Color").padding()
    }
}
