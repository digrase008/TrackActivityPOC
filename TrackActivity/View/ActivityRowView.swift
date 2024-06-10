//
//  ActivityRowView.swift
//  TrackActivity
//
//  Created by apple on 10/06/24.
//

import SwiftUI


struct ActivityRowView: View {
    let activities: [Activity]
    
    var body: some View {
        HStack(spacing: 5) {
            ForEach(activities, id: \.name) { activity in
                VStack {
                    Image(activity.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                    
                    Text(activity.name)
                        .font(.headline)
                }
            }
        }
        .padding()
    }
}

struct ActivityRowView_Previews: PreviewProvider {
    static var previews: some View {
        let activities = [
            Activity(name: "Push Ups", imageName: "pushups"),
            Activity(name: "Sit Ups", imageName: "situps"),
            Activity(name: "Jumping Jacks", imageName: "jumpingjacks"),
            Activity(name: "Squats", imageName: "squats")
        ]
        return ActivityRowView(activities: activities)
    }
}

