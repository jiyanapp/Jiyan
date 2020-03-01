//
//  Contribution-1.swift
//  Contribution
//
//  Created by 于书懿 on 2020/2/6.
//  Copyright © 2020 于书懿. All rights reserved.
//





 
import SwiftUI

struct Contribution_1: View {
    @State var showingPopover1 = false
    @State var showingPopover2 = false
    @State var showingPopover3 = false
    @State var showingPopover4 = false
   
    @State var tab_word1 = "编辑文本"
    @State var tab_word2 = "浏览已有录音"
    @State var tab_word3 = "上一句"
       @State var tab_word4 = "下一句"
    
    var body: some View {
        ZStack {
            VStack{
                VStack(alignment: .center,spacing: 24) {
                    topwords().offset(x: 0, y: -50)
                    tab1(showingPopover: $showingPopover1, tab_word: $tab_word1)
                    
                        .popover(isPresented: $showingPopover1)
                        {
                            tab1_content()
                    }
                   
                    tab11(show: $showingPopover2, tab_word: $tab_word2)
                    
                        
                    HStack {
                        tab2(showingPopover: $showingPopover3, tab_word: $tab_word3)
                            .offset(x: -24, y: 0)
                        tab2(showingPopover: $showingPopover4, tab_word: $tab_word4)
                        .offset(x: 24, y: 0)
                    }
                     
                }
                
                VStack (alignment: .center,spacing: 34){
                    Image("录音按钮")
                        .resizable()
                        .frame(width: 120, height: 120)
                    Text("在你准备好之后，请用四川话录音")
                    Image("波形")
                }.background(Image("bottom")
                    .resizable()
                    .frame(width: 700, height: 370)
                    .aspectRatio(contentMode: .fill)
                )
                .offset(x: 0, y: 89)
            }
            .frame(width: 450)
            .background(Image("矩形深")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
            )
            Contribution_3().offset(y: showingPopover2 ? 0 : 900)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
        }
    }
}

struct Contribution_1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct topwords: View {
    var body: some View {
        VStack (spacing:35 ){
            Text("你在爪子")
                .font(.custom("HYChangLiSongKeBen(Truing)",size:50))
                .foregroundColor(.white)
            Text("询问他人在做什么事情")
                .foregroundColor(.white)
        }
    }
}

struct tab1: View {
    @Binding var showingPopover : Bool
    @Binding var tab_word : String
    var body: some View {
        Button(action: {
            self.showingPopover = true
        }) {
            Text(tab_word)
               .frame(width: 300, height: 45)
                .foregroundColor(.black)
                .background(Color.white
                    .opacity(0.8)
            )
                .cornerRadius(15)
                .shadow(color: Color("Cardcolor"), radius: 15)
        }
    }
}
struct tab11: View {
    @Binding var show : Bool
    @Binding var tab_word : String
    var body: some View {
       // NavigationLink(destination: Contribution_3()) {
  
            Button(action: {
                self.show.toggle()
                })
             {
                    Text(tab_word)
                       .frame(width: 300, height: 45)
                        .foregroundColor(.black)
                        .background(Color.white
                            .opacity(0.8)
                    )
                        .cornerRadius(15)
                        .shadow(color: Color("Cardcolor"), radius: 15)
           //  }
            }
           
    }
}
struct tab2: View {
    @Binding var showingPopover : Bool
    @Binding var tab_word : String
    var body: some View {
        Button(action: {
            self.showingPopover = true
        }) {
            Text(tab_word)
               .frame(width: 120, height: 45)
                .foregroundColor(.black)
                .background(Color.white
                .opacity(0.8))
                .cornerRadius(15)
                .shadow(color: Color("Cardcolor"), radius: 15)
        }
    }
}

struct Titlewords1: View {
    var body: some View {
        VStack {
            HStack {
                Text("编辑文本")
                    .font(.custom("HYChangLiSongKeBen(Truing)",size:50))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.leading,80)
                Spacer()
            }
            .padding(.top,100)
            Spacer()
        }
    }
}

struct Textfield: View {
  //var textfield_words_title : String
@Binding var textfield_words_top : String
@Binding var textfield_words_inside : String
    var body: some View {
       
        VStack {
            Section {
                TextField(textfield_words_top,text: $textfield_words_inside)
            }
        
            .frame(width:300 , height:50)
            .background(Color.white)
        
        }
    }
}


struct tab1_content: View {
    @State var textfield_words_top1 = "方言标题"
    @State var textfield_words_inside1 = ""
    @State var textfield_words_top2 = "普通话标题"
    @State var textfield_words_inside2 = ""
    var body: some View {
        VStack() {
            Titlewords1()
            VStack(alignment: .leading,spacing: 40){
                Text("方言标题")
                    .font(.title)
                    .foregroundColor(.white)
                Textfield(textfield_words_top: self.$textfield_words_top1, textfield_words_inside: self.$textfield_words_inside1)
                Text("普通话标题")
                    .font(.title)
                    .foregroundColor(.white)
                Textfield(textfield_words_top: self.$textfield_words_top2, textfield_words_inside: self.$textfield_words_inside2)
            }.offset(x: 0, y: -300)
            
        }
        .background(Image("矩形深").resizable().aspectRatio(contentMode: .fill))
        .opacity(0.8)
    }
}

struct Titlewords2: View {
    var body: some View {
       
            VStack {
                HStack {
                    Text("你在爪子")
                        .font(.custom("HYChangLiSongKeBen(Truing)",size:50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.leading,80)
                    Spacer()
                }
                .padding(.top,100)
                Spacer()
                
            }
        
    }
}

struct buttomforThumbs1: View {
    @Binding var thumbs : String
    @Binding var number : Int
    var icon_after :String
    var body: some View{
        Button(action:{})
        {
            VStack{
                Image(systemName: thumbs)
                    .foregroundColor(.white)
                    .onTapGesture {
                        self.number += 1
                        self.thumbs = self.icon_after
                }
                Text("\(number)")
                    .foregroundColor(.white)
            }
        }
    }
}
