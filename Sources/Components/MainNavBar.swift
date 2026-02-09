import Foundation
import Ignite

enum NavOption: String, CaseIterable {
    case about = "About"
    case contact = "Contact"
    case schedule = "Schedule"
    case gallery = "Gallery"
    case prayerRequests = "Prayer Requests"
    
    var path: String {
        switch self {
        case .about:
            return "/about"
        case .contact:
            return "/contact"
        case .schedule:
            return "/schedule"
        case .gallery:
            return "/gallery"
        case .prayerRequests:
            return "/prayer-requests"
        }
    }
}

struct MainNavBar: HTML {
    var body: some HTML {
        NavigationBar(logo: logo) {
            for option in NavOption.allCases {
                Link(option.rawValue, target: option.path)
            }
        }
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.light)
        .position(.fixedTop)
    }
    
    private var logo: some InlineElement {
        Image("/images/logo.png", description: "The Seventh Day Adventist Logo for Lodge Causeway Church.")
            .resizable()
            .frame(width: 250)
    }
}
