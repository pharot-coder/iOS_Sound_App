//
//  ContentView.swift
//  Shared
//
//  Created by Leng Sopharot on 30/11/21.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
   @State var audioPlayer:AVAudioPlayer?
    var body: some View {
        VStack{

            HStack(spacing:0){
                Button(action: {
                    //Getting Url
                    let url = Bundle.main.url(forResource: "a", withExtension: "mp3")
                    //Make sure that we've got the url otherwise aborted
                    guard url != nil else{
                        return
                    }
                    //Create audio play sound
                    do {
                        audioPlayer = try AVAudioPlayer.init(contentsOf: url!)
                        audioPlayer?.play()
                    }
                    catch
                    {
                        print("eror")
                    }
                    
                }, label: {
                    Text("A")
                        .bold()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                })
                Button(action: {
                    //Getting Url
                    let url = Bundle.main.url(forResource: "b", withExtension: "mp3")
                    //Make sure that we've got the url otherwise aborted
                    guard url != nil else{
                        return
                    }
                    //Create audio play sound
                    do {
                        audioPlayer = try AVAudioPlayer.init(contentsOf: url!)
                        audioPlayer?.play()
                    }
                    catch
                    {
                        print("eror")
                    }
                }, label: {
                    Text("B")
                        .bold()
                        .frame(minWidth:0,maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                })

            }
            HStack(spacing:0){
                Button(action: {
                    //Getting Url
                    let url = Bundle.main.url(forResource: "c", withExtension: "mp3")
                    //Make sure that we've got the url otherwise aborted
                    guard url != nil else{
                        return
                    }
                    //Create audio play sound
                    do {
                        audioPlayer = try AVAudioPlayer.init(contentsOf: url!)
                        audioPlayer?.play()
                    }
                    catch
                    {
                        print("eror")
                    }
                }, label: {
                    Text("C")
                        .bold()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                })

                Button(action: {
                    //Getting Url
                    let url = Bundle.main.url(forResource: "d", withExtension: "mp3")
                    //Make sure that we've got the url otherwise aborted
                    guard url != nil else{
                        return
                    }
                    //Create audio play sound
                    do {
                        audioPlayer = try AVAudioPlayer.init(contentsOf: url!)
                        audioPlayer?.play()
                    }
                    catch
                    {
                        print("eror")
                    }
                }, label: {
                    Text("D")
                        .bold()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                })
                
            }

        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
