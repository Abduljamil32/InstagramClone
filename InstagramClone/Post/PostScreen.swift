//
//  PostScreen.swift
//  InstagramClone
//
//  Created by Avaz Mukhitdinov on 15/05/22.
//

import SwiftUI

struct PostScreen: View {
    
    @State var userName:String = ""
    @State var postImage: String = ""
    @State var profileImg: String = ""
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(profileImg).resizable().frame(width: 60, height: 60).cornerRadius(40)
                Spacer()
                Image(systemName: "ellipsis").font(.system(size: 30)).padding(.trailing, 5)
            }
            
            Text("\(userName)").font(.system(size: 18)).padding(.leading, 5).padding(.bottom, 5)
            
            Image(postImage).resizable().frame(width: .infinity, height: 350)
            HStack{
                Image(systemName: "heart").font(.system(size: 25)).padding(.leading, 5)
                Image(systemName: "message").font(.system(size: 25))
                Spacer()
                Image(systemName: "bookmark").font(.system(size: 25)).padding(.trailing, 5)
            }
    
            Text(" \(userName): Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.").lineLimit(3).padding(.leading, 5).padding(.trailing, 5)
            Text("Смотреть все комментарии(20)").foregroundColor(.gray).padding(.top, 1)
            Text("5 часов назад").foregroundColor(.gray).font(.system(size: 15))
        }
    }
}

struct PostScreen_Previews: PreviewProvider {
    static var previews: some View {
        PostScreen()
    }
}
