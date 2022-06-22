//
//  ProfileScreen.swift
//  InstagramClone
//
//  Created by Avaz Mukhitdinov on 16/05/22.
//

import SwiftUI

struct ProfileScreen: View {
    
    @State var profileName: String = "1_Abduljamil"
    @State var userName: String = "Abduljamil"
    @State var followers: Int = 5
    @State var publications: Int = 999
    @State var followings: Int = 99
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment: .leading){
                    HStack{
                        Image("im_profile").resizable().frame(width: 100, height: 100).cornerRadius(40)
                            .padding(.leading, 10)
                        
                        VStack(alignment: .leading, spacing: 0){
                            Text("\(userName)").font(.system(size: 27)).padding(.top, 5)
                            Text("Junior IOS Developer \n Swift, UIKit, SwiftUI, XIB").lineLimit(6).foregroundColor(.black.opacity(0.8))
                                .frame(width: .infinity/2, height: 70)
                        }.padding(.leading, 20)
                    }
                    
//                  posts, followers, followings
                    
                    HStack{
                        Spacer()
                        VStack{
                            Text("\(followers)").bold()
                            Text("Публикации")
                        }
                        VStack{
                            Text("\(publications)").bold()
                            Text("Подписчики")
                        }
                        VStack{
                            Text("\(followings)").bold()
                            Text("Подписки")
                        }
                        Spacer()
                    }.padding(.bottom, 15).padding(.top, 15)
                    
//                  profile settings
                    
                    HStack{
                        Spacer()
                        Text("Редактироваь профиль")
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray.opacity(0.4), lineWidth: 2)
                            .frame(width: 330, height: 30))
                        Spacer()
                        Image(systemName: "person.badge.plus").font(.system(size: 26))
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray.opacity(0.4), lineWidth: 2))
                            .padding(.trailing, 10)
                    }
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(alignment: .center){
                            ActualStory()
                            ActualStory()
                            ActualStory()
                            ActualStory()
                            VStack{
                            ZStack(alignment: .center){
                                Image(systemName: "plus").resizable().cornerRadius(40)
                                    .frame(width: 25, height: 30)
                                    
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(.gray.opacity(0.3), lineWidth: 2)
                                    .frame(width: 70, height: 70)
                                    .padding(.top, 5).padding(.leading, 5).padding(.trailing, 5).padding(.bottom, 5)
                                
                            }.padding(.bottom, 0).padding(.top, 0)
                                Text("Добавить").font(.system(size: 15))
                        }
                        }
                    }
                }
                Divider().padding(.top, 10)
                HStack{
                    Image(systemName: "tablecells").frame(width: 30, height: 30).font(.system(size: 28))
                        .padding(.leading, 50).foregroundColor(.black.opacity(0.8))
                    Spacer()
                    Image(systemName: "photo.tv").frame(width: 30, height: 30).font(.system(size: 28))
                        .foregroundColor(.black.opacity(0.5))
                    Spacer()
                    Image(systemName: "person.crop.square").frame(width: 30, height: 30).font(.system(size: 28))
                        .padding(.trailing, 50).foregroundColor(.black.opacity(0.5))
                }
                Divider()
                VStack{
                    Posts(im_posts1: "im_posts1", im_posts2: "im_posts2", im_posts3: "im_posts3", im_posts4: "im_posts4", im_posts5: "im_posts1", im_posts6: "", im_posts7: "", im_posts8: "", im_posts9: "", im_posts10: "")
                }
            }
            .navigationBarItems(leading: Text("\(profileName)").bold().font(.system(size: 30)))
            .navigationBarItems(trailing:
                HStack{
                    Image(systemName: "plus.app").frame(width: 30, height: 30).font(.title)
                    .padding(.trailing, 15)
                    Image(systemName: "list.dash").frame(width: 30, height: 30).font(.title)
                })
            }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
