//  FriendlyChatSwift
//
//  Created by Kenton D. Raiford on 10/4/17.
//  Copyright © 2017 Google Inc. All rights reserved.
//

import UIKit

import Firebase
import GoogleSignIn

@objc(SignInViewController)
class SignInViewController: UIViewController, GIDSignInUIDelegate {
  @IBOutlet weak var signInButton: GIDSignInButton!
  var handle: AuthStateDidChangeListenerHandle?

  override func viewDidLoad() {
    super.viewDidLoad()
    GIDSignIn.sharedInstance().uiDelegate = self
    GIDSignIn.sharedInstance().signInSilently()
    handle = Auth.auth().addStateDidChangeListener() { (auth, user) in
        if user != nil {
            MeasurementHelper.sendLoginEvent()
            self.performSegue(withIdentifier: Constants.Segues.SignInToFp, sender: nil)
        }
    }
}

  deinit {
    if let handle = handle {
        Auth.auth().removeStateDidChangeListener(handle)
    }
  }

    @IBAction func signOut(_ sender: UIButton) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            dismiss(animated: true, completion: nil)
        } catch let signOutError as NSError {
            print ("Error signing out: \(signOutError.localizedDescription)")
        }
    }

}
