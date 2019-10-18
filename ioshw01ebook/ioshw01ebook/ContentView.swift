//
//  ContentView.swift
//  ioshw01ebook
//
//  Created by User08 on 2019/10/17.
//  Copyright © 2019 ntou. All rights reserved.
//

import SwiftUI

struct FirstView: View {
   var body: some View {
     NavigationView {
        VStack{
            NavigationLink(destination: ListView()) {
                VStack {
                    Text("Press me!")
                        .font(.largeTitle)
                        .foregroundColor(.primary)
                        .offset(x: 10, y: 20)
                    Image("all")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .navigationBarTitle("Penguin Family")
                        .frame(width: 400, height: 300)
                        .offset(x: 0, y: -10)
                    }.background(Color.yellow)
                }
            }
        }
    }
}


struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        Pages()
    }
}

// RoleRow for TableViewCell
struct RoleRow: View {
    var roles: Role
    var body: some View {
        HStack {
            Image(roles.name)
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80)
            .clipped()
            VStack(alignment: .leading) {
            Text(roles.name)
            }
            Spacer()                                        //調成螢幕寬度
      
        }
           
    }
}

//利用previewLayout調整preview的尺寸
struct RoleRow_Previews: PreviewProvider {
    static var previews: some View {
        RoleRow(roles: roles[0])
            .previewLayout(.fixed(width:300, height:70))
    }
}

//公主List列表
struct ListView: View {
     
    var body: some View {
        List(0..<roles.count) { (index) in
            NavigationLink(destination: DetailView(roles: roles[index])){
                RoleRow(roles: roles[index])
            }
            .navigationBarTitle("Penguinsssssss")
           .background(Image("texture").opacity(0.3))
           
            }

    .listRowInsets(EdgeInsets(top: 30, leading: 0, bottom: 30, trailing: 30))
    //指定上下左右距離
}
}
    //公主Detail檔案
struct DetailView: View {
       var roles: Role
        var body: some View {
              NavigationLink(destination: ContentView()){
            VStack {
                Text(roles.name)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                Text(roles.text)
                    .foregroundColor(.primary)
                Image(roles.name)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 400)//Image的寬度等於螢幕寬度
                .clipped()
                .padding()
            }
        }
    }
}
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(roles: roles[0])
         
    }
    
}




 

struct ContentView: View {
    var body: some View {
       
            VStack {
                NavigationLink(destination: IsleView()) {
                    VStack(spacing: 10){
                        Text("想看更多萌萌的企鵝嗎？")
                           .offset(x: 13, y: 150)
                            .accentColor(.secondary)
                            .font(Font.system(size:30))
                        Image("cute")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 600)
                    }
                    .background(Color.yellow)
                }
                
            }
        }
    }
struct IsleView: View {
   var body: some View {
    VStack(spacing:20){
        Text("那就一起來玩企鵝島吧！")
            .foregroundColor(.white)
            .font(Font.system(size: 30))
            .fontWeight(.heavy)
            .offset(x: 13, y: 140)
        Text("____________________________")
            .foregroundColor(.white)
            .font(Font.system(size: 25))
            .fontWeight(.heavy)
            .offset(x: 13, y: 140)
        Text("______________________")
        .foregroundColor(.white)
        .font(Font.system(size: 25))
        .fontWeight(.heavy)
        .offset(x: 10, y: 140)
        Text("________________")
        .foregroundColor(.white)
        .font(Font.system(size: 25))
        .fontWeight(.heavy)
        .offset(x: 10, y: 140)
        Text("__________")
        .foregroundColor(.white)
        .font(Font.system(size: 25))
        .fontWeight(.heavy)
        .offset(x: 10, y: 140)
        Text("____")
        .foregroundColor(.white)
        .font(Font.system(size: 25))
        .fontWeight(.heavy)
        .offset(x: 10, y: 140)
        Image("isle")
            .resizable()
            .scaledToFit()
            .frame(width: 400, height: 700)
            .offset(x: 0, y: -80)
        }
    .background(Color.gray)
    }
}
  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
