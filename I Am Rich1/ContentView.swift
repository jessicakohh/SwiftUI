//
//  ContentView.swift
//  I Am Rich1
//
//  Created by juyeong koh on 2022/09/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Color(.systemTeal)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    Text("I Am Rich")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    Image("diamond")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200, alignment: .center)
                }
            }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

