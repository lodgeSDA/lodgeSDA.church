import Foundation
import Ignite

struct Contact: StaticPage {
    var title = "Contact Us"

    var body: some HTML {
        Section {
            Text("Contact Us")
                .font(.title1)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)

            Text("We'd love to hear from you. Whether you have questions, need prayer, or want to visit, please don't hesitate to get in touch.")
                .font(.body)
                .horizontalAlignment(.center)
                .margin(.bottom, 40)

            Grid {
                // Location Card
                Card {
                    Image(systemName: "geo-alt-fill", description: "Location icon")
                        .foregroundStyle(Color(hex: "#B67F21"))
                        .font(.title1)
                        .margin(.bottom, 10)

                    Text("Our Location")
                        .font(.title4)
                        .fontWeight(.semibold)

                    // TODO: Replace with actual church address
                    Text("Lodge Causeway")
                        .font(.body)
                    Text("Bristol, BS16 3RD")
                        .font(.body)
                    Text("United Kingdom")
                        .font(.body)
                        .foregroundStyle(.secondary)
                }
                .horizontalAlignment(.center)
                .class("shadow-sm")
                .padding(20)

                // Contact Info Card
                Card {
                    Image(systemName: "envelope-fill", description: "Email icon")
                        .foregroundStyle(Color(hex: "#B67F21"))
                        .font(.title1)
                        .margin(.bottom, 10)

                    Text("Get in Touch")
                        .font(.title4)
                        .fontWeight(.semibold)

                    // TODO: Replace with actual email
                    Link("info@lodgesda.church", target: "mailto:info@lodgesda.church")
                        .font(.body)
                        .margin(.bottom, 5)

                    // TODO: Replace with actual phone number
                    Text("Phone: 0117 000 0000")
                        .font(.body)
                        .foregroundStyle(.secondary)
                }
                .horizontalAlignment(.center)
                .class("shadow-sm")
                .padding(20)

                // Social Media Card
                Card {
                    Image(systemName: "share-fill", description: "Social media icon")
                        .foregroundStyle(Color(hex: "#B67F21"))
                        .font(.title1)
                        .margin(.bottom, 10)

                    Text("Follow Us")
                        .font(.title4)
                        .fontWeight(.semibold)

                    // TODO: Replace with actual Facebook URL
                    Link(target: "https://www.facebook.com/YOUR_PAGE") {
                        Image(systemName: "facebook", description: "Facebook")
                        " Facebook"
                    }
                    .font(.body)
                    .margin(.bottom, 5)

                    // TODO: Replace with actual Instagram URL
                    Link(target: "https://www.instagram.com/YOUR_PAGE") {
                        Image(systemName: "instagram", description: "Instagram")
                        " Instagram"
                    }
                    .font(.body)
                }
                .horizontalAlignment(.center)
                .class("shadow-sm")
                .padding(20)
            }
            .columns(3)
            .margin(.bottom, 40)

            // Google Map
            Text("Find Us")
                .font(.title2)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)
                .margin(.top, 20)

            // TODO: Update the map embed URL in Includes/google-map.html with your actual Google Maps embed
            Include("google-map.html")
        }
        .margin(.top, 100)
        .margin(.bottom, 80)
    }
}
