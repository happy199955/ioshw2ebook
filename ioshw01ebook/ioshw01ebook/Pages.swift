//
//  Pages.swift
//  ioshw01ebook
//
//  Created by User08 on 2019/10/17.
//  Copyright © 2019 ntou. All rights reserved.
//

import SwiftUI

struct Pages: View {
    var body: some View{
        TabView{
            FirstView().tabItem {
                Image(systemName: "house.fill")
                Text("主頁")
            }
            
            MoreView().tabItem {
                Image(systemName: "info.circle.fill")
                Text("更多")
            }
        }
    }
}


struct Pages_Previews: PreviewProvider {
    static var previews: some View {
        Pages()
    }
}

