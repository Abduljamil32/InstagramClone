

import SwiftUI

struct StoryScreen: View {
    
    @State var username: String = ""
    @State var newStory: Bool = true
    @State var userImage: String = ""
    
    var body: some View {
        VStack{
            
            ZStack{
                Image(userImage).resizable().cornerRadius(50).frame(width: 67, height: 67)
                RoundedRectangle(cornerRadius: 40)
                    .stroke(.gray.opacity(0.3), lineWidth: 2)
                    .frame(width: 70, height: 70)
                    .padding(.top, 5).padding(.leading, 5).padding(.trailing, 5).padding(.bottom, 5)
                if newStory{
                    ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(.red, lineWidth: 2)
                            .frame(width: 70, height: 70)
                    }.padding(.top, 5).padding(.leading, 5).padding(.trailing, 5).padding(.bottom, 5)
                }
            }
            
            Text("\(username)")
            //    _________________________________________________
        }
    }
}


struct StoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        StoryScreen()
    }
}
