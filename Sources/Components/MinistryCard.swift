import Foundation
import Ignite

struct MinistryCard: HTML {
    let iconName: String
    let title: String
    let description: String

    var body: some HTML {
        Card {
            Image(systemName: iconName, description: "\(title) ministry icon")
                .foregroundStyle(Color(hex: "#B67F21"))
                .font(.title1)
                .margin(.bottom, 10)

            Text(title)
                .font(.title4)
                .fontWeight(.semibold)
                .margin(.bottom, 8)

            Text(description)
                .font(.body)
                .foregroundStyle(.secondary)
        }
        .horizontalAlignment(.center)
        .class("shadow-sm")
        .padding(20)
    }
}
