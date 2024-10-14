//
//  SelectACardView.swift
//  SelectACard
//
//  Created by dimitri on 14/10/2024.
//

import SwiftUI

struct SelectACardView: View {
    var body: some View {
        VStack{
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 100, height: 150)
                        .foregroundStyle(.black)
                    VStack {
                        Image(systemName:"suit.spade.fill")
                            .font(  .largeTitle)
                            .padding(.bottom,5)
                        Text("As de pique")
                            .font(.footnote)
                            .bold()
                    }
                    .foregroundStyle(.white)
                }
                .shadow(radius: 10, x: 0, y: 10)
                .padding()
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 100, height: 150)
                        .foregroundStyle(.red)
                        .shadow(radius: 10, x: 0, y: 10)
                    VStack {
                        Image(systemName:"suit.heart.fill")
                            .font(.largeTitle)
                            .padding(.bottom,5)
                        Text("As de Coeur")
                            .font(.footnote)
                            .bold()
                    }
                    .foregroundStyle(.white)
                }
              
                .padding()
            }
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 100, height: 150)
                        .foregroundStyle(.red)
                        .shadow(radius: 10, x: 0, y: 10)
                    VStack {
                        Image(systemName:"suit.diamond.fill")
                            .font(  .largeTitle)
                            .padding(.bottom,5)
                        Text("As de carreau")
                            .font(.footnote)
                            .bold()
                    }
                    .foregroundStyle(.white)
                }
                .padding()
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 100, height: 150)
                        .foregroundStyle(.black)
                        .shadow(radius: 10, x: 0, y: 10)
                    VStack {
                        Image(systemName:"suit.club.fill")
                            .font(  .largeTitle)
                            .padding(.bottom,5)
                        Text("As de trèfle")
                            .font(.footnote)
                            .bold()
                    }
                    .foregroundStyle(.white)
                }
                .padding()
            }
        }
    }
}

#Preview {
    SelectACardView()
}
