
import SwiftUI

struct MainScreen: View {
    
//    @Binding var tabSelection: Int
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Divider().frame(width: .infinity, height: 2)
                        .foregroundColor(.gray.opacity(0.3))
                        .padding(.top, 0)
                    HStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                VStack{
                                    ZStack(alignment: .bottomTrailing){
                                    Image("im_profile").resizable().cornerRadius(50).frame(width: 67, height: 67)
                                            .overlay(RoundedRectangle(cornerRadius: 40).stroke(.gray, lineWidth: 1))
                                    Image(systemName: "plus").frame(width: 15, height: 15)
                                        .foregroundColor(.white)
                                        .background(.blue)
                                        .cornerRadius(30)
                                    }.padding(.top, 5)
                                    Text("Ваше истории").frame(width: 110, height: 20)
                                        .padding(.leading, 5).padding(.top, 5)
                                }
                                StoryScreen(username: "Adam_001", newStory: true, userImage: "im_user1")
                                StoryScreen(username: "Max01", newStory: true, userImage: "im_user2")
                                StoryScreen(username: "RRR777", newStory: true, userImage: "im_user1")
                                StoryScreen(username: "Cr_7", newStory: false, userImage: "im_user2")
                                StoryScreen(username: "_MessI_", newStory: false, userImage: "im_user2")
                                StoryScreen(username: "Boom", newStory: true, userImage: "im_profile")
                                StoryScreen(username: "Layle_", newStory: false, userImage: "im_profile")
                                StoryScreen(username: "Boost_no1", newStory: false, userImage: "im_profile")
                                StoryScreen(username: "Leo_1", newStory: false, userImage: "im_user2")
                            }
                        }
                    }.padding(.bottom, 20)
                    
                    VStack{
                        PostScreen(userName: "Marta_lil", postImage: "im_post3", profileImg: "im_user1")
                        PostScreen(userName: "AlexXS", postImage: "im_post2", profileImg: "im_user2")
                        PostScreen(userName: "Adam_001", postImage: "im_post1", profileImg: "im_profile")
                    }.padding(.leading, 0).padding(.trailing, 0)
                    
                }
            }.padding(.top, 0)
                .navigationBarItems(trailing:
                                        Button(action: {
                  
                }, label: {
                    Image(systemName: "camera").font(.system(size:20))
                })
                )
                .navigationBarTitle("Instagram", displayMode: .inline)
        }.padding(.top, 0)
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
