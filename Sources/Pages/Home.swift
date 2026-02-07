import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        Text("<br>")

        Image("/images/logo.png", description: "The Seventh Day Adventist Logo for Lodge Causeway Church.")
        .frame(width: 250)
        .margin(.bottom, 30)

        Text("<br>")

        Link("Lodge Causeway Church SDA", target: "/")
            .foregroundStyle(.secondary)
            .font(.title1)

        Text("<br>")

        MainFooter()
    }
}
