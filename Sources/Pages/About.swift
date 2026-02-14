import Foundation
import Ignite

struct About: StaticPage {
    var title = ""

    var body: some HTML {
        MainNavBar()
        Section {
            Text("<br>") 
            .margin(.top, 80)
            .margin(.bottom, 80)
        }
        MainFooter()
    }
}
