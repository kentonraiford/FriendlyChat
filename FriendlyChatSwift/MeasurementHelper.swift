//  FriendlyChatSwift
//
//  Created by Kenton D. Raiford on 10/4/17.
//  Copyright © 2017 Google Inc. All rights reserved.
//

import Firebase

class MeasurementHelper: NSObject {

    static func sendLoginEvent() {
        Analytics.logEvent(AnalyticsEventLogin, parameters: nil)
    }
    
    static func sendLogoutEvent() {
        Analytics.logEvent("logout", parameters: nil)
    }
    
    static func sendMessageEvent() {
        Analytics.logEvent("message", parameters: nil)
    }
}
