//
//  FacebookLoginView.swift
//  Reminders
//
//  Created by Justin Zhang on 11/26/19.
//  Copyright © 2019 Justin Zhang. All rights reserved.
//

import SwiftUI
import FacebookLogin
//#import <FBSDKCoreKit/FBSDKCoreKit.h>
//#import <FBSDKLoginKit/FBSDKLoginKit.h>
import FBSDKCoreKit
import FBSDKLoginKit



struct FacebookLoginView: View {
    var facebookLogin = SocialLogin()

    var body: some View {
        VStack {
//            Text("Facebook Login").font(.footnote)
                showEmail()
                Button(action: facebookLogin.attemptLogin, label: {
                    Image("FacebookLogo")
                        .border(Color.pink)
                })
                    .frame(width: 40, height: 40)
                    .cornerRadius(8.0)
                    .border(Color.green)
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
        }
        .navigationBarTitle("Log In With Facebook")
    }

    private func showEmail() -> Text {
//        if ([FBSDKAccessToken currentAccessToken]) {
        if AccessToken.isCurrentAccessTokenActive {
//            AccessToken.current.
            // SHOW EMAIL HERE
            let email = Profile.current?.firstName
            facebookLogin.setupUserDetails()
            return Text("hi")
        }
        else {
            //DONT SHOW EMAIL
            return Text("")
        }
    }
}

struct SocialLogin: UIViewRepresentable {

    var name: String = ""
    var email: String = ""

    func makeUIView(context: UIViewRepresentableContext<SocialLogin>) -> UIView {
        return UIView()
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<SocialLogin>) {}

//    func attemptLoginFb(completion: @escaping (_ result: LoginManagerLoginResult?, _ error: Error?) -> Void) {
//        let fbLoginManager: LoginManager = LoginManager()
//        fbLoginManager.logOut()
//        fbLoginManager.logIn(permissions: ["email"], from: UIApplication.shared.windows.last?.rootViewController) { (result, error) -> Void in
//            completion(result, error)
//        }
//    }

    func attemptLogin() {
        let loginManager = LoginManager()
        loginManager.logOut()
        loginManager.logIn(permissions: ["email"], from: UIApplication.shared.windows.last?.rootViewController)
    }

    func setupUserDetails() {
        let request = GraphRequest(graphPath: "me", parameters: ["fields":"email,name"],
                                   tokenString: AccessToken.current?.tokenString,
                                   version: nil,
                                   httpMethod: HTTPMethod(rawValue: "GET"))

        request.start { (test, result, error) in
            if(error == nil) {
                print(result)
                print(type(of: result))
            }
        }

//        let connection = GraphRequestConnection()
//        connection.add(GraphRequest(graphPath: "/me")) { httpResponse, result, error  in
//          switch result {
//          case .success(let response):
//            print("Graph Request Succeeded: \(response)")
//          case .failed(let error):
//            print("Graph Request Failed: \(error)")
//          }
//        }
//        connection.start()
    }
}


struct FacebookLoginView_Previews: PreviewProvider {
    static var previews: some View {
        FacebookLoginView()
    }
}
