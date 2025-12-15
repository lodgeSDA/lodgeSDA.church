import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        Text("<br>")

        Link("Lodge Causeway Seventh Day Adventists", target: "/")
            .foregroundStyle(.white)
            .font(.title1)

        Text("<br>")
    }
}
