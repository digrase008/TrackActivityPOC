//
//  Activity.swift
//  TrackActivity
//
//  Created by apple on 10/06/24.
//

import Foundation

struct Activity: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let imageName: String
}

