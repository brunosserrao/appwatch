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
    
    @State var aVAudioPlayer: AVAudioPlayer!

    var body: some View {
        TabView {
            galadriel
            .resizable()
            .frame(width: 160.0, height: 160.0)
            .onTapGesture {
                print("Cliquei na Galadriel")
                playCat(cat: "galadriel")
            }
            gabriela
            .resizable()
            .frame(width: 160.0, height: 160.0)
            .onTapGesture {
                print("Cliquei na Gabriela")
                playCat(cat: "gabriela")
            }
            jujuba
            .resizable()
            .frame(width: 160.0, height: 160.0)
            .onTapGesture {
                print("Cliquei na Jujuba")
                playCat(cat: "jujuba")
            }
        }
    }
    
    func playCat(cat: String) {
        if let path = Bundle.main.path(forResource: cat, ofType: "mp3") {
            do {
                aVAudioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                aVAudioPlayer.play()
            } catch {
                print( "Could not find file")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
