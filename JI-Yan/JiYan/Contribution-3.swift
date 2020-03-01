//
//  Contribution-3.swift
//  JiYan
//
//  Created by 于书懿 on 2020/2/23.
//  Copyright © 2020 马诺. All rights reserved.
//

import SwiftUI

struct Contribution_3: View {
     
    @State var thumbsup = "hand.thumbsup"
       @State var numberofGood = 0
       @State var thumbsdown = "hand.thumbsdown"
       @State var numberofBad = 0
       @State var bookmark = "bookmark"
       @State var numberofBookmark = 0
     /*
     var audio_list = [list_content(name: "小明", date: "2018-7-8"),
       list_content(name: "小红", date: "2015-7-1"),
       list_content(name: "小花", date: "2010-1-0")]
    */
       var body: some View {
           VStack {
            topwords().offset(x: 0, y: -100)
               List(updateData) { update in
                 // NavigationView{
                 //     NavigationLink(destination: Text("1"))
                 //     {
                   HStack {
                       Text(update.name).foregroundColor(.black)
                       Spacer()
                       Text(update.date).foregroundColor(.black)
                       buttomforThumbs1(thumbs: self.$thumbsup, number:self.$numberofGood , icon_after: "hand.thumbsup.fill")
                       buttomforThumbs1(thumbs: self.$thumbsdown, number:self.$numberofBad , icon_after: "hand.thumbsdown.fill")
                        buttomforThumbs1(thumbs: self.$bookmark, number:self.$numberofBookmark , icon_after: "bookmark.fill")
                   }.background(Image("矩形深").resizable().frame(width: 420, height: 53).opacity(0.7))
                   //.background(Color.black)
            }.frame(width: 420, height: 280)
            //       }
             //  }
              
             
           } .background(Image("矩形深").resizable().aspectRatio(contentMode: .fill))
               
       }
}

struct Contribution_3_Previews: PreviewProvider {
    static var previews: some View {
        Contribution_3()
    }
}
struct Update: Identifiable {
  var id = UUID()
  var name : String
  var date : String
    var thumbsup : String
    var thumbsdown : String
    var bookmark : String
    
}
let updateData  = [
Update(name: "小明", date: "2017年5月23日", thumbsup:"hand.thumbsup" , thumbsdown: "hand.thumbsdown", bookmark: "收藏"),
    Update(name: "小明", date: "2017年5月23日", thumbsup:"hand.thumbsup" , thumbsdown: "hand.thumbsdown", bookmark: "收藏"),
      Update(name: "小明", date: "2017年5月23日", thumbsup:"hand.thumbsup" , thumbsdown: "hand.thumbsdown", bookmark: "收藏"),
      Update(name: "小明", date: "2017年5月23日", thumbsup:"hand.thumbsup" , thumbsdown: "hand.thumbsdown", bookmark: "收藏"),
      Update(name: "小明", date: "2017年5月23日", thumbsup:"hand.thumbsup" , thumbsdown: "hand.thumbsdown", bookmark: "收藏"),
      Update(name: "小明", date: "2017年5月23日", thumbsup:"hand.thumbsup" , thumbsdown: "hand.thumbsdown", bookmark: "收藏")
]

