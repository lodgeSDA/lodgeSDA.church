import Foundation
import Ignite

struct ServiceTimes: HTML {
    var body: some HTML {
        Card {
            Text("Regular Services")
                .font(.title3)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)
                .margin(.bottom, 20)

            Table {
                Row {
                    Column { Text("Sabbath School") }
                    Column { Text("Saturdays") }
                    Column { Text("9:45 AM") }
                }
                Row {
                    Column { Text("Divine Service") }
                    Column { Text("Saturdays") }
                    Column { Text("11:00 AM") }
                }
                Row {
                    // TODO: Replace with actual Zoom link
                    Column { Text("Monday Devotional (Zoom)") }
                    Column { Text("Mondays") }
                    Column { Text("7:00 PM") }
                }
                Row {
                    // TODO: Replace with actual Zoom link
                    Column { Text("Thursday Devotional (Zoom)") }
                    Column { Text("Thursdays") }
                    Column { Text("7:00 PM") }
                }
            }
            .tableStyle(.stripedRows)

            Text {
                Emphasis("All are welcome to join us. Contact us for Zoom meeting details.")
            }
            .font(.body)
            .foregroundStyle(.secondary)
            .horizontalAlignment(.center)
            .margin(.top, 15)
        }
        .class("shadow-sm")
        .margin(.top, 20)
        .margin(.bottom, 20)
    }
}
