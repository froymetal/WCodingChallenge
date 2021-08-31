//
//  DropDown.swift
//  WCodingChallenge
//
//  Created by Froy on 8/31/21.
//

import SwiftUI

struct citiesDropDown: View{
    @State var isExpanded = false
    @State var selectedCity = "List"

    var body: some View{
        VStack(alignment: .center, spacing: 15){
            Text("Select a City:")
                .font(.title)

            DisclosureGroup("\(selectedCity)", isExpanded: $isExpanded){
                ForEach(cities, id: \.self){ city in
                    Text("\(city)")
                        .font(.title3)
                        .padding(.all)
                        .onTapGesture {
                            self.selectedCity = city
                            withAnimation(){
                                self.isExpanded.toggle()
                            }

                        }
                }
            }.accentColor(.white)
            .font(.title2)
            .foregroundColor(.white)
            .padding(.all)
            .background(Color.blue)
            .cornerRadius(10.0)

            Spacer()
        }.padding(.all)
    }
}
