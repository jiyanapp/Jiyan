//
//  ContentView.swift
//  JiYan
//
//  Created by 马诺 on 2020/2/2.
//  Copyright © 2020 马诺. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show2 = false
    var body: some View {
        ZStack {
            VStack {
                Text("纪言")
                    .font(.custom("HYChangLiSongKeBen(Truing)", size: 65))
                    .foregroundColor(.white)
                Text("点击地图开始探索。")
                    
                    
                    .fontWeight(.heavy)
                    .padding(.top, 30)
                    .foregroundColor(.white)
                Text("为你的方言做出贡献以点亮地图。")
                    .font(.custom("PingFang SC", size: 20))
                    .fontWeight(.heavy)
                    .padding(.top)
                    .foregroundColor(.white)
                Image("MapGreenWithLights")
                    .padding(.trailing, 50.0)
                    .padding(.top, 50)
                    .offset(x: 0, y: -20)
                tabbar1(showing: self.$show2)
                .offset(x: 0, y: -430)
            }
        .offset(x: 0, y: 480)
            .background(Image("矩形")
            .resizable()
            .aspectRatio(contentMode: .fill)
            
            )
        Contribution_2()
                        .offset( y: show2 ? 0 : 1300)
                           .animation(.linear)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
