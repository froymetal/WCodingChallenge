//
//  ContentView.swift
//  WCodingChallenge
//
//  Created by Froy on 8/31/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.lightGray)
                .ignoresSafeArea()
            citiesDropDown()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

