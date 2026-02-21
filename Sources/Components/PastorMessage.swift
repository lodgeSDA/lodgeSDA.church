import Foundation
import Ignite

struct PastorMessage: HTML {

    var body: some HTML {
        Section {
            Text {
                "<br>"
                Emphasis("A Message from our Pastor: <br>")
                "Hello and "
                Strong("welcome")
                " to the website of lodge causeway church.<br>"
                Strong("God ")
                "is good, All the time,"
                "<br>"
                "and All the time,"
                Strong(" God ")
                "is good!"
            }
            .horizontalAlignment(.center)
            .margin(.top, 80)
            .margin(.bottom, 80)
        }
        .margin(.top, 80)
  }
}
