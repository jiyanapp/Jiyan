//
//  Contribution-2.swift
//  JiYan
//
//  Created by 于书懿 on 2020/2/23.
//  Copyright © 2020 马诺. All rights reserved.
//

import SwiftUI

struct Contribution_2: View {
   @State var pickerSelection = 0
        
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack(spacing:30) {
                Simple_Introduction()
                Suixinlu()
                AllSentences(pickerSelection: $pickerSelection)
               // Neirong_Bianji(pickerSelection: $pickerSelection)
                ShequJianshe()
            }
            .frame(width: 450)
            .background(Image("矩形深")
            .resizable()
            .aspectRatio(contentMode: .fill)
            )
        }
    }
}

struct Contribution_2_Previews: PreviewProvider {
    static var previews: some View {
        Contribution_2()
    }
}
/*struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}*/

struct Simple_Introduction: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 18){
            Text("留下痕迹")
                .font(.custom("HYChangLiSongKeBen(Truing)", size: 50))
                .foregroundColor(.white)
            Text("在纪言，你的方言已经有来自 234 位志愿者的 300 条语音和 21 条方言文字。如果你也在这里留下你的痕迹的话，你的地区在首页的地图都会变得更加灿烂。")
                .font(.body)
                .foregroundColor(.white)
                .lineSpacing(10)
                .frame(width: 360, height: 130)
            Text("纪言是一个开放的平台，接纳并欢迎所有用户的修订。在您的首次编辑之前，我们推荐您花上一分钟来阅读一下这里的内容规范。")
                .font(.body)
                .foregroundColor(.white)
                .lineSpacing(10)
                .frame(width: 360, height: 130)
        }
    }
}

struct Suixinlu: View {
    var body: some View {
        VStack(spacing:30){
            HStack {
                Text("随心录")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.leading,50)
                Spacer()
            }
            VStack(spacing:32){
                Text("你在爪子?")
                    .font(.custom("HYChangLiSongKeBen(Truing)", size: 50))
                    .foregroundColor(.white)
                Text("询问他人做什么事情")
                    .foregroundColor(.white)
                Image("录音按钮")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .shadow(radius: 3)
                Text("在你准备好之后，按住按钮并用四川话朗读")
                    .font(.callout)
                    .fontWeight(.light)
                    .foregroundColor(.white)
            }
            .frame(width: 370, height: 350)
            .background(Color.white.opacity(0.3).cornerRadius(20))
        }
    }
}

struct ShequJianshe: View {
    @State  var Judge_show = false
     @State var number_right = 0
     @State var number_wrong = 0
//  @State var Judge_right = "对"
 //@State var Judge_wrong = "错"
    var body: some View {
        VStack(spacing:30){
            HStack {
                Text("社区建设")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                   .padding(.leading,50)
                Spacer()
            }
            VStack(spacing:32){
                HStack {
                    Text("      对于方言:")
                        .font(.callout)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                    
                    
                    Spacer()
                }
                
                Text("你在爪子?")
                    .font(.custom("HYChangLiSongKeBen(Truing)", size: 50))
                    .foregroundColor(.white)
                HStack {
                    Text("   有志愿者想要更新其解释:")
                        .font(.callout)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                    Spacer()
                }
                Text("询问他人做什么事情")
                    .foregroundColor(Color("darkgrey"))
                
                Text("询问他人是不是在爪子这个地方")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .offset(x: 0, y: -20)
                
                Text("做出评价")
                    .font(.callout)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                
                VStack {
                    HStack{
                       // Judge_tab(number: $number_right,Judge: "对")
                        /*VStack {
                            Image("对")
                                .resizable()
                                .frame(width: 50, height: 50)
                            onTapGesture {
                               // self.Judge_show.toggle()
                                self.number_right += 1
                            }
                            Text("number")
                            
                        }*/
                        Spacer()
                       /*VStack {
                           Image("错")
                               .resizable()
                               .frame(width: 50, height: 50)
                           onTapGesture {
                              // self.Judge_show.toggle()
                            self.number_wrong += 1
                           }
                           Text("number")
                           
                       }*/
                    }
                    
                }
                .padding(.leading,100)
                                   .padding(.trailing,100)
            }
            .frame(width: 370, height: 480)
            .background(Color.white.opacity(0.3).cornerRadius(20))
        }
    }
}

struct Neirong_Bianji: View {
    var content = ["基本用语", "人称代词", "数词量词","情绪用语","特色长句"]
              @Binding var pickerSelection : Int
    var body: some View {
       
        VStack() {
            HStack {
                Text("内容编辑")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.leading,50)
                Spacer()
            }
            Picker(selection: $pickerSelection, label: Text("")){
                Text(content[0]).tag(0)
                Text(content[1]).tag(1)
                Text(content[2]).tag(2)
                Text(content[3]).tag(3)
                Text(content[4]).tag(4)
            }.pickerStyle(SegmentedPickerStyle()).foregroundColor(Color("darkgrey"))
                .frame(width:370)
        /*
           List{
                if(pickerSelection == 0){Text("123")}
                else if(pickerSelection == 1){Text("456")}
            }
 */
            .frame(width: 370, height: 350)
            .opacity(0.27)
            .cornerRadius(20)
            
            
        }
    }
}

struct Judge_tab: View {
   // @Binding var Judge : String
    @Binding var number : Int
    var Judge :String
    var body: some View {
        VStack {
            Image(Judge)
                .resizable()
                .frame(width: 50, height: 50)
            onTapGesture {
               // self.Judge_show.toggle()
                self.number += 1
            }
            Text("number")
            
        }
    }
}





/*
struct SimpleProgressBar : View {
    @State var currentProgress: CGFloat = 0.0
     var timer = Timer()
    var body : some View {
        VStack{
            ZStack(alignment: .leading){
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.gray)
                    .frame(width: 280, height: 6)
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.white)
                    .frame(width: 280*currentProgress, height: 20)
            }
           
        }
    }
    
  
}
*/
