//
//  SelectACardBonusView.swift
//  SelectACard
//
//  Created by dimitri on 14/10/2024.
//
import SwiftUI

struct SelectACardBtnBonusView: View {
    @State var choice = "questionmark"
    @State var color: Color = .black
    
    var body: some View {
        VStack {
            HStack {
                // As de Pique
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 100, height: 150)
                        .foregroundStyle(.black)
                    
                    VStack {
                        Image(systemName: "suit.spade.fill")
                            .font(.largeTitle)
                            .padding(.bottom, 5)
                        Text("As de pique")
                            .font(.footnote)
                            .bold()
                    }
                    .foregroundStyle(.white)
                }
                .shadow(radius: 10, x: 0, y: 10)
                .padding()
                .onTapGesture {
                    choice = (choice == "suit.spade.fill") ? "questionmark" : "suit.spade.fill"
                    color = (choice == "questionmark") ? .black : .black
                }

                // As de Coeur
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 100, height: 150)
                        .foregroundStyle(.red)
                        .shadow(radius: 10, x: 0, y: 10)
                    
                    VStack {
                        Image(systemName: "suit.heart.fill")
                            .font(.largeTitle)
                            .padding(.bottom, 5)
                        Text("As de Coeur")
                            .font(.footnote)
                            .bold()
                    }
                    .foregroundStyle(.white)
                }
                .padding()
                .onTapGesture {
                    choice = (choice == "suit.heart.fill") ? "questionmark" : "suit.heart.fill"
                    color = (choice == "questionmark") ? .black : .red
                }
            }

            // Image de la carte choisie
            Image(systemName: choice)
                .foregroundStyle(color)
                .font(.system(size: 50))
                .fontWeight(.bold)
                .shadow(radius: 10, x: 0, y: 10)

            HStack {
                // As de Carreau
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 100, height: 150)
                        .foregroundStyle(.red)
                        .shadow(radius: 10, x: 0, y: 10)
                    
                    VStack {
                        Image(systemName: "suit.diamond.fill")
                            .font(.largeTitle)
                            .padding(.bottom, 5)
                        Text("As de carreau")
                            .font(.footnote)
                            .bold()
                    }
                    .foregroundStyle(.white)
                }
                .padding()
                .onTapGesture {
                    choice = (choice == "suit.diamond.fill") ? "questionmark" : "suit.diamond.fill"
                    color = (choice == "questionmark") ? .black : .red
                }

                // As de Trèfle
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 100, height: 150)
                        .foregroundStyle(.black)
                        .shadow(radius: 10, x: 0, y: 10)
                    
                    VStack {
                        Image(systemName: "suit.club.fill")
                            .font(.largeTitle)
                            .padding(.bottom, 5)
                        Text("As de trèfle")
                            .font(.footnote)
                            .bold()
                    }
                    .foregroundStyle(.white)
                }
                .padding()
                .onTapGesture {
                    choice = (choice == "suit.club.fill") ? "questionmark" : "suit.club.fill"
                    color = (choice == "questionmark") ? .black : .black
                }
            }
        }
    }
}

#Preview {
    SelectACardBtnBonusView()
}
