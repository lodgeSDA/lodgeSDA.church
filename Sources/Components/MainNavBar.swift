import Foundation
import Ignite

struct MainNavBar: HTML {
    var body: some HTML {
        NavigationBar(logo: logo) {
            Link("About", target: About())
            Link("Contact", target: Contact())
            Link("Events", target: Events())
            Link("Media", target: Media())
            Link("Ministries", target: Ministries())
        }
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.light)
        .position(.fixedTop)
        .background(Color(hex: "#F2BFB1"))
    }
    
    private var logo: some InlineElement {
        Image("/images/logo.png", description: "The Seventh Day Adventist Logo for Lodge Causeway Church.")
            .resizable()
            .frame(width: 250)
    }
}
