import Foundation
import Ignite

struct Home: StaticPage {
    var title = ""

    var body: some HTML {
        MainNavBar()
        Section {
            Text("<br>")
            Emphasis("A Message from our Pastor: ")
            Text {
                "Hello and welcome to lodge causeway church."
                "<br>"
                Strong("God")
                "is good, All the time,"
                "<br>"
                "and All the time,"
                Strong("God")
                "is good!"
            }
            Include("daily-verse.html")
            .margin(.top, 80)
            .margin(.bottom, 80)
        }
        MainFooter()
    }
}
