//
//  ContentView.swift
//  Counter
//
//  Created by junsuk on 2023/09/01.
//

import SwiftUI

struct ContentView: View {
    @State
    var count = 0
    
    var body: some View {
        Spacer()
        
        VStack {
            Text("\(count)")
                .font(.largeTitle)
        }
        
        Spacer()
        
        HStack {
            Spacer()
            Button(action: {
                count = count + 1
            }, label: {
                Text("+").font(.headline)
            }).padding(32)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
