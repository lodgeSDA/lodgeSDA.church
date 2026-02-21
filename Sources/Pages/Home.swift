import Foundation
import Ignite

struct Home: StaticPage {
    var title = ""

    var body: some HTML {
        PastorMessage()
        Include("sabbath-sunset.html")
        DailyVerse()
    }
}
