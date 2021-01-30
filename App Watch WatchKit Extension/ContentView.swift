//
//  ContentView.swift
//  App Watch WatchKit Extension
//
//  Created by Bruno Serrão on 30/01/21.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
//    var body: some View {
//        Text("Hello, World!")
//            .padding();
//    }
    
    @State private var selectedTab = 0
    @State private var galadriel: Image = Image("galadriel");
    @State private var gabriela: Image = Image("gabriela");
    @State private var jujuba: Image = Image("jujuba");
    
    

    var body: some View {
        TabView {
            galadriel
            .resizable()
            .frame(width: 160.0, height: 160.0)
            .onTapGesture {
                print("Cliquei na Galadriel")
                self.playCat(cat: "galadriel")
            }
            gabriela
            .resizable()
            .frame(width: 160.0, height: 160.0)
            .onTapGesture {
                print("Cliquei na Gabriela")
                self.playCat(cat: "gabriela")
            }
            jujuba
            .resizable()
            .frame(width: 160.0, height: 160.0)
            .onTapGesture {
                print("Cliquei na Galadriel")
                self.playCat(cat: "jujuba")
            }
        }
    }
    
    func playCat(cat: String) {
        if let meow = Bundle.main.path(forResource: cat, ofType: "mp3") {
            _ = try? AVAudioPlayer(contentsOf: URL (fileURLWithPath: meow))
        }
        else {
            print( cat + " audio não encontrado" )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
