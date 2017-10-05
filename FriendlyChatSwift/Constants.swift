//  FriendlyChatSwift
//
//  Created by Kenton D. Raiford on 10/4/17.
//  Copyright © 2017 Google Inc. All rights reserved.
//

struct Constants {

  struct NotificationKeys {
    static let SignedIn = "onSignInCompleted"
  }

  struct Segues {
    static let SignInToFp = "SignInToFP"
    static let FpToSignIn = "FPToSignIn"
  }

  struct MessageFields {
    static let name = "name"
    static let text = "text"
    static let photoURL = "photoURL"
    static let imageURL = "imageURL"
  }
}
