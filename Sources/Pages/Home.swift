import Foundation
import Ignite

struct Home: StaticPage {
    var title = ""

    var body: some HTML {
        WelcomeHero()
        ServiceTimes()
        Include("sabbath-sunset.html")
        PastorMessage()
        DailyVerse()
    }
}
