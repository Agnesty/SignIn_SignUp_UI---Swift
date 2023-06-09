import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State var isLinkActive = false
    
    var body: some View {
        NavigationView {
            ZStack (alignment: .topLeading) {
                VStack {
                    VStack (spacing: 40) {
                        ZStack {
                            Ellipse()
                                .frame(width: 510, height: 478)
                                .padding(.leading, -200)
                                .foregroundColor(.orange)
                                .padding(.top, -200)
                            Ellipse()
                                .frame(width: 458, height: 420)
                                .padding(.trailing, -500)
                                .foregroundColor(.green)
                                .padding(.top, -200)
                            Text("Welcome \nBack")
                                .foregroundColor(.white)
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 20)
                        }
                        VStack (spacing: 30) {
                            VStack (spacing: 30) {
                                CustomTextField(
                                    placeholder: "Email", imageName: "mail", bColor: Color.gray, tOpacity: 0.6, value: $email)
                                CustomTextField(
                                    placeholder: "Password", imageName: "person.badge.key", bColor: Color.gray, tOpacity: 0.6, value: $password)
                            }
                            VStack (alignment: .trailing) {
                                Text("Forgot Password")
                                    .fontWeight(.medium)
                                NavigationLink( destination: SignUpView(), isActive: $isLinkActive) {
                                    Button(
                                        action: {
                                            self.isLinkActive = true
                                        },
                                        label: {
                                            CustomButton(title: "Sign In", bgColor: Color.green)
                                        })
                                }
                            }
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
                        Text("Don't have an account?")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                        
                        Button(
                            action: {},
                            label: {
                                Text("Sign Up")
                                    .font(.system(size: 18))
                                    .foregroundColor(.green)
                                    .fontWeight(.bold)
                            }
                        )
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
