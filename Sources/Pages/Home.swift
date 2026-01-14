import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        Text("<br>")

        Link("Lodge Causeway Seventh Day Adventists", target: "/")
            .foregroundStyle(.secondary)
            .font(.title1)

        Text("<br>")

        MainFooter()
    }
}
