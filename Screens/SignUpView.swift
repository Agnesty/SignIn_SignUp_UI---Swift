import SwiftUI

struct SignUpView: View {
    
    @State private var name: String = ""
    @State private var password: String = ""
    @State private var email: String = ""
    @State private var cpassword: String = ""
    @State var isLinkActive = false
    
    var body: some View {
        NavigationView {
            ZStack (alignment: .topLeading) {
                Color.gray.opacity(0.05).ignoresSafeArea()
                VStack {
                    VStack (spacing: 40) {
                        ZStack {
                            Ellipse()
                                .frame(width: 458, height: 420)
                                .padding(.trailing, -500)
                                .foregroundColor(.green)
                                .padding(.top, -200)
                            Text("Create \nAccount")
                                .foregroundColor(.orange)
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 20)
                                .padding(.top, 100)
                        }
                        VStack (spacing: 20) {
                            VStack (spacing: 20) {
                                CustomTextField(
                                    placeholder: "Name", imageName: "person", bColor: Color.gray, tOpacity: 1, value: $name)
                                CustomTextField(
                                    placeholder: "Email", imageName: "mail", bColor: Color.gray, tOpacity: 1, value: $email)
                                CustomTextField(
                                    placeholder: "Password", imageName: "person.badge.key", bColor: Color.gray, tOpacity: 1, value: $password)
                                CustomTextField(
                                    placeholder: "Confirm Password", imageName: "person.badge.key", bColor: Color.gray, tOpacity: 1, value: $cpassword)
                            }
                            VStack (alignment: .trailing) {
                                Button(
                                    action: {},
                                    label: {
                                        CustomButton(title: "Sign Up", bgColor: Color.green)
                                    })
                            }.padding(.horizontal, 20)
                            
                            HStack {
                                Button(
                                    action: {},
                                    label: {
                                        Image(systemName:
                                                //SocialMedia
                                              "figure.socialdance")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .padding(.horizontal, 60)
                                        .padding(.vertical, 15)
                                        .background(.gray.opacity(0.3))
                                        .cornerRadius(15)
                                    }
                                )
                                Spacer()
                                Button(
                                    action: {},
                                    label: {
                                        Image(systemName:
                                                //SocialMedia
                                              "figure.socialdance")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .padding(.horizontal, 60)
                                        .padding(.vertical, 15)
                                        .background(.gray.opacity(0.3))
                                        .cornerRadius(15)
                                    }
                                )
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                    Spacer()
                    HStack {
                        Text("Already have an account?")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                        NavigationLink(destination: LoginView(), isActive: $isLinkActive) {
                            Button(
                                action: {
                                    self.isLinkActive = true
                                },
                                label: {
                                    Text("Sign In")
                                        .font(.system(size: 18))
                                        .foregroundColor(.green)
                                        .fontWeight(.bold)
                                }
                            )
                            
                        }
                    }
                    .frame(height: 63)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(.orange)
                    .ignoresSafeArea()
                }
                TopBarView()
            }
            .edgesIgnoringSafeArea(.bottom)
        }
        .navigationBarHidden(true)
        
    }
    
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}


