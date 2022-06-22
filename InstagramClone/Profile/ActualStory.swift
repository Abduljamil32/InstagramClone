//
//  ActualStory.swift
//  InstagramClone
//
//  Created by Avaz Mukhitdinov on 16/05/22.
//

import SwiftUI

struct ActualStory: View {
    var body: some View {
        VStack{
            ZStack{
                Image("im_user1").resizable().cornerRadius(40)
                    .frame(width: 70, height: 70)
                RoundedRectangle(cornerRadius: 40)
                    .stroke(.gray.opacity(0.3), lineWidth: 2)
                    .frame(width: 70, height: 70)
                    .padding(.top, 5).padding(.leading, 5).padding(.trailing, 5).padding(.bottom, 5)
            }
            Text("My Story").lineLimit(1).font(.system(size: 15))
        }
    }
}

struct ActualStory_Previews: PreviewProvider {
    static var previews: some View {
        ActualStory()
    }
}
