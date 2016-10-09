//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Rama Milaneh on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
class Jet:Plane {
    override func climb() {
        let newAltitude = self.altitude + 0.2*self.maxAltitude
        if newAltitude <= self.maxAltitude && self.inFlight {
            self.altitude = newAltitude
            super.decelerate()
        }else if newAltitude>self.maxAltitude && self.inFlight{
            self.altitude = self.maxAltitude
            super.decelerate()
        }
    }
    
    override func dive() {
        let newAltitude = self.altitude - 0.2*self.maxAltitude
        if newAltitude >= 0 && self.inFlight {
            self.altitude = newAltitude
            super.accelerate()
        }else if newAltitude < 0 && self.inFlight{
            self.altitude = 0
            super.accelerate()
        }

    }
    func afterburner(){
        if self.speed == self.maxSpeed && self.inFlight {
            self.speed = 2*self.maxSpeed
        }
    }
}
