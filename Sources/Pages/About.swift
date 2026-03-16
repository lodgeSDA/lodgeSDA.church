import Foundation
import Ignite

struct About: StaticPage {
    var title = ""

    var body: some HTML {
        Section {
            Text(Strong("Mission")).font(.title1)
            
                   
            Text("As Seventh-day Adventists, our mission drives everything we do. Rooted in Christ’s love and the teachings of the Bible, we are committed to serving others, transforming lives, and building communities of hope. Through education, humanitarian work, health initiatives, and spiritual guidance, we aim to inspire faith and create lasting impact in the lives we touch—both locally and globally.").font(.body)
            
            Link("Tithes and Donations", target: "https://sec.adventist.uk/giving/tithes-offerings-and-donations")
                .linkStyle(.button)

            Carousel {
                Slide(background: "/images/des.jpg") {
                    Text("Placeholder")
                        .font(.title2)
                    
                    Text("Elder")
                        .font(.body)
                    
                    Link("Twitter Account", target: "https://youtu.be/dQw4w9WgXcQ?si=z8jh_MCltN5ishev")
                        .linkStyle(.button)

                }.backgroundOpacity(0.5)
            }
        }
    }
}
