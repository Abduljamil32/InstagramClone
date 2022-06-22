

import SwiftUI

struct PublishScreen: View {
    
   
    
    
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var selectedImage: UIImage?
    @State private var isImagePickerDisplay = false
    @State var caption = ""
    @State private var showActionSheet = false
    
    func uploadPost(){
        if caption.isEmpty || selectedImage == nil{
            return
        }
    }
    
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    ZStack{
                        if selectedImage != nil{
                            Image(uiImage: selectedImage!)
                                .resizable()
                                .frame(maxWidth: UIScreen.width, maxHeight: UIScreen.width).scaledToFill()
                            VStack{
                                HStack{
                                    Spacer()
                                    Button(action: {
                                        selectedImage = nil
                                    }, label: {
                                        Image(systemName: "xmark.square").resizable().scaledToFit().frame(width: 25, height: 25)
                                    }).padding()
                                }
                                Spacer()
                            }
                        }else{
                            Button(action: {
                                showActionSheet = true
                            }, label: {
                                Image(systemName: "camera").resizable().scaledToFit()
                                    .frame(width: 40, height: 40)
                            })
                            .actionSheet(isPresented: $showActionSheet) {
                                ActionSheet(
                                    title: Text("Actions"),
                                    buttons: [
                                        .cancel { print(self.showActionSheet) },
                                        .default(Text("Pick Photo")){
                                            self.sourceType = .photoLibrary
                                            self.isImagePickerDisplay.toggle()
                                        },
                                        .default(Text("Take Photo")){
                                            self.sourceType = .camera
                                            self.isImagePickerDisplay.toggle()
                                        },
                                    ]
                                )
                            }.sheet(isPresented: self.$isImagePickerDisplay) {
                                ImagePickerView(selectedImage: self.$selectedImage, sourceType: self.sourceType)
                            }
                        }
                        
                    }
                    .frame(maxWidth: UIScreen.width, maxHeight: UIScreen.width)
                    .background(Color.gray.opacity(0.2))
                    
                    VStack{
                        TextField("Caption", text: $caption)
                            .font(Font.system(size: 17, design: .default))
                            .frame(height: 45)
                        Divider()
                    }.padding(.top, 10).padding(.leading, 20).padding(.trailing, 20)
                    
                    Spacer()
                }
            }
            .navigationBarItems(trailing:
                                    Button(action: {
                self.uploadPost()
         
            }, label: {
                Image(systemName: "square.and.arrow.up").font(.system(size:20))
            })
            )
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct PublishScreen_Previews: PreviewProvider {
    static var previews: some View {
        PublishScreen()
    }
}
