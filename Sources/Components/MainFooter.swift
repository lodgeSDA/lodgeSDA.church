import Foundation
import Ignite

struct MainFooter: HTML {

  var body: some HTML {
    Text("SDA Church - Bristol Lodge Causeway")
      .horizontalAlignment(.center)
      .font(.body)
      .fontWeight(.light)

    Link("South England Conference", target: "https://sec.adventist.uk/")
      .horizontalAlignment(.center)
      .font(.body)
      .fontWeight(.ultraLight)
      .textDecoration(.none)

    Link("Github", target: "https://www.github.com/lodgeSDA/LodgeSDA.church")
      .horizontalAlignment(.center)
      .font(.body)
      .fontWeight(.ultraLight)
      .textDecoration(.none)
  }
}
