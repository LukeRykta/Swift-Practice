//
//  WatchConnectivityFunctions.swift
//  firstApp Watch App
//
//  Created by Nicholas Schultz on 3/19/23.
//

import Foundation
import WatchConnectivity


class WatchSession : NSObject, WCSessionDelegate{
    var session: WCSession
    
    init(session: WCSession = .default) {
        self.session = session
        super.init()
        self.session.delegate = self
        session.activate()
    }
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
}
