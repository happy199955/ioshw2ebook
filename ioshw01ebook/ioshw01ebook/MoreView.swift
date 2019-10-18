//
//  MoreView.swift
//  ioshw01ebook
//
//  Created by User08 on 2019/10/17.
//  Copyright © 2019 ntou. All rights reserved.
//

import SwiftUI

struct MoreView: View {
    var body: some View{
        VStack{
            Text("企鵝很可愛吧！\n     謝謝欣賞")
            .font(.largeTitle)
            .foregroundColor(.primary)
            .offset(x: 5, y: 160)
            Image("thx")
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .frame(width: 400, height: 600)
            .offset(x: 0, y: 2)
        }
    }
}

struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        Pages()
    }
}
