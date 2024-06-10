import SwiftUI

struct LandingPageView: View {
    let activities: [[Activity]] = [
        [Activity(name: "Push Ups", imageName: "pushups"), Activity(name: "Sit Ups", imageName: "situps")],
        [Activity(name: "Jumping Jacks", imageName: "jumpingjacks"), Activity(name: "Squats", imageName: "squats")]
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                ForEach(activities, id: \.self) { activityRow in
                                    ActivityRowView(activities: activityRow)
                                }
                
                Spacer()
                
                NavigationLink(destination: StartActivityView()) {
                    Text("Start Activity")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .padding()
            }
            .navigationTitle("Activities")
        }
    }
}

struct LandingPageView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPageView()
    }
}
