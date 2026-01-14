import Foundation
import Ignite

struct MainFooter: HTML {

  var body: some HTML {
    Column {
      Text {
      }
      .horizontalAlignment(.center)
      .font(.body)
      .fontWeight(.semibold)

      Text("Lodge Causeway Seventh Day Adventist Church")
        .horizontalAlignment(.center)
        .font(.body)
        .fontWeight(.light)
        .border(.white, width: 1, edges: .top)

      Link("South England Conference", target: "https://sec.adventist.uk/")
    }
  }
}
