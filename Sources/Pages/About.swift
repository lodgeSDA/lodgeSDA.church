import Foundation
import Ignite

struct About: StaticPage {
    var title = "About"

    var body: some HTML {
        Section {
            // Mission
            Text("Our Mission")
                .font(.title1)
                .fontWeight(.semibold)
                .margin(.top, 20)

            Text("As Seventh-day Adventists, our mission drives everything we do. Rooted in Christ\u{2019}s love and the teachings of the Bible, we are committed to serving others, transforming lives, and building communities of hope. Through education, humanitarian work, health initiatives, and spiritual guidance, we aim to inspire faith and create lasting impact in the lives we touch\u{2014}both locally and globally.")
                .font(.body)
                .horizontalAlignment(.center)
                .margin(.bottom, 30)

            // Vision
            Text("Our Vision")
                .font(.title1)
                .fontWeight(.semibold)

            Text("To be a vibrant, Christ-centred community that reflects God\u{2019}s love to every person in Bristol and beyond. We envision a church where lives are transformed by the gospel, families are strengthened, and every member is equipped to serve and share the hope found in Jesus Christ.")
                .font(.body)
                .horizontalAlignment(.center)
                .margin(.bottom, 30)

            // History
            Text("Our History")
                .font(.title1)
                .fontWeight(.semibold)

            // TODO: Replace with actual church history
            Text("The Lodge Causeway Seventh-day Adventist Church has been a part of the Bristol community for many years. From humble beginnings, our congregation has grown into a diverse and welcoming family united by faith. Over the decades, we have been committed to worship, community outreach, and sharing the everlasting gospel. Our church continues to evolve while holding firm to the timeless truths of Scripture.")
                .font(.body)
                .horizontalAlignment(.center)
                .margin(.bottom, 40)

            Divider()

            // Church Leaders
            Text("Our Leaders")
                .font(.title1)
                .fontWeight(.semibold)
                .margin(.top, 30)
                .margin(.bottom, 20)

            Grid {
                // TODO: Replace names and roles with actual leadership details
                leaderCard(image: "/images/pastor.jpg", name: "Pastor Robis da Silva", role: "Pastor")
                leaderCard(image: "/images/des.jpg", name: "Des", role: "Elder")
                leaderCard(image: "/images/allan.jpg", name: "Allan", role: "Elder")
                leaderCard(image: "/images/ruth.jpg", name: "Ruth", role: "Elder")
            }
            .columns(4)
            .margin(.bottom, 40)

            Divider()

            // Tithes and Donations
            Text("Support Our Mission")
                .font(.title2)
                .fontWeight(.semibold)
                .margin(.top, 30)

            Text("Your generous contributions help us continue our work in the community and beyond.")
                .font(.body)
                .horizontalAlignment(.center)
                .margin(.bottom, 15)

            Link("Tithes and Donations", target: "https://sec.adventist.uk/giving/tithes-offerings-and-donations")
                .linkStyle(.button)
        }
        .horizontalAlignment(.center)
        .margin(.top, 100)
        .margin(.bottom, 80)
    }

    private func leaderCard(image: String, name: String, role: String) -> some HTML {
        Card {
            Image(image, description: "Photo of \(name)")
                .resizable()
                .cornerRadius(8)
                .margin(.bottom, 10)

            Text(name)
                .font(.title5)
                .fontWeight(.semibold)

            Text(role)
                .font(.body)
                .foregroundStyle(.secondary)
        }
        .horizontalAlignment(.center)
        .class("shadow-sm")
        .padding(15)
    }
}
