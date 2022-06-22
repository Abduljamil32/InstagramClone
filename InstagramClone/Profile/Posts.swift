
import SwiftUI

struct Posts: View {
    
    
    
    @State var im_posts1: String = ""
    @State var im_posts2: String = ""
    @State var im_posts3: String = ""
    @State var im_posts4: String = ""
    @State var im_posts5: String = ""
    @State var im_posts6: String = ""
    @State var im_posts7: String = ""
    @State var im_posts8: String = ""
    @State var im_posts9: String = ""
    @State var im_posts10: String = ""
    
    var body: some View {
        
        
        
        VStack(alignment: .leading, spacing: 3){
            HStack(spacing: 3){
                Image(im_posts1).resizable().scaleEffect()
                    .frame(width: UIScreen.main.bounds.width/3, height: 150)
                Image(im_posts2).resizable().scaleEffect()
                    .frame(width: UIScreen.main.bounds.width/3, height: 150)
                Image(im_posts3).resizable().scaleEffect()
                    .frame(width: UIScreen.main.bounds.width/3, height: 150)
            }.lineLimit(1).multilineTextAlignment(.leading)
            HStack(spacing: 3){
                Image(im_posts4).resizable().scaleEffect()
                    .frame(width: UIScreen.main.bounds.width/3, height: 150)
                Image(im_posts5).resizable().scaleEffect()
                    .frame(width: UIScreen.main.bounds.width/3, height: 150)
                Image(im_posts6).resizable().scaleEffect()
                    .frame(width: UIScreen.main.bounds.width/3, height: 150)
            }
            HStack(spacing: 3){
                Image(im_posts7).resizable().scaleEffect()
                    .frame(width: UIScreen.main.bounds.width/3, height: 150)
                Image(im_posts8).resizable().scaleEffect()
                    .frame(width: UIScreen.main.bounds.width/3, height: 150)
                Image(im_posts9).resizable().scaleEffect()
                    .frame(width: UIScreen.main.bounds.width/3, height: 150)
            }
            HStack(spacing: 3){
                Image(im_posts10).resizable().scaleEffect()
                    .frame(width: UIScreen.main.bounds.width/3, height: 150)
            }
            
            
        }
    }
}

struct Posts_Previews: PreviewProvider {
    static var previews: some View {
        Posts()
    }
}
