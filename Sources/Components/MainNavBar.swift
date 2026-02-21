import Foundation
import Ignite

enum NavOption: String, CaseIterable {
    case about = "About"
    case contact = "Contact"
    case events = "Events"
    case media = "Media"
    case ministries = "Ministries"
    
    @MainActor var path: any StaticPage {
        switch self {
        case .about:
            return About()
        case .contact:
            return Contact()
        case .events:
            return Events()
        case .media:
            return Media()
        case .ministries:
            return Ministries()
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
