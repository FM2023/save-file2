//
//  ContentView.swift
//  HelloXcodeSwift
//
//  Created by 이은권 on 2023/01/01.
//

import SwiftUI

struct ContentView: View {
    @State var data: String = "0"
    
    var body: some View {
        VStack {
            HStack {
                Text("이성현")
                    .font(.largeTitle)
                    .bold()
                Image(systemName: "heart")
                    .foregroundColor(.red)
                    .bold()
                Text("전채리")
                    .font(.largeTitle)
                    .bold()
            }
            Text(data)
                .bold()
                .foregroundColor(.green)
                Button {
                    data = "\(Int.random(in:1...45))"
                } label: {
                    Text("update")
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View { ContentView()
    }
}
