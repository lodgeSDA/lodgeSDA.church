import Foundation
import Ignite

struct Media: StaticPage {
    var title = "Media"

    var body: some HTML {
        Section {
            Text("Media")
                .font(.title1)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)

            Text("Watch sermons, Sabbath School recaps, and inspirational content from our church family.")
                .font(.body)
                .horizontalAlignment(.center)
                .margin(.bottom, 40)

            // Live Stream
            Text("Live Stream")
                .font(.title2)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)

            Text("Join us live every Sabbath for Divine Service.")
                .font(.body)
                .horizontalAlignment(.center)
                .foregroundStyle(.secondary)
                .margin(.bottom, 15)

            // TODO: Replace with actual YouTube live stream channel URL
            Include("livestream-embed.html")
                .margin(.bottom, 40)

            Divider()

            // Sermons
            Text("Sermons")
                .font(.title2)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)
                .margin(.top, 30)

            Text("Catch up on recent sermons and messages.")
                .font(.body)
                .horizontalAlignment(.center)
                .foregroundStyle(.secondary)
                .margin(.bottom, 15)

            // TODO: Replace placeholder YouTube IDs with actual sermon videos
            Grid {
                videoCard(youtubeId: "VIDEO_ID_1", title: "Recent Sermon")
                videoCard(youtubeId: "VIDEO_ID_2", title: "Recent Sermon")
                videoCard(youtubeId: "VIDEO_ID_3", title: "Recent Sermon")
            }
            .columns(3)
            .margin(.bottom, 40)

            Divider()

            // Sabbath School Lesson Recap
            Text("Sabbath School Lesson Recap")
                .font(.title2)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)
                .margin(.top, 30)

            Text("Review and discussion of the weekly Sabbath School lesson.")
                .font(.body)
                .horizontalAlignment(.center)
                .foregroundStyle(.secondary)
                .margin(.bottom, 15)

            // TODO: Replace placeholder YouTube IDs with actual Sabbath School recap videos
            Grid {
                videoCard(youtubeId: "SS_VIDEO_ID_1", title: "Sabbath School Recap")
                videoCard(youtubeId: "SS_VIDEO_ID_2", title: "Sabbath School Recap")
            }
            .columns(3)
            .margin(.bottom, 40)

            Divider()

            // Motivational / Inspirational
            Text("Inspirational Videos")
                .font(.title2)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)
                .margin(.top, 30)

            Text("Short messages of encouragement and hope.")
                .font(.body)
                .horizontalAlignment(.center)
                .foregroundStyle(.secondary)
                .margin(.bottom, 15)

            // TODO: Replace placeholder YouTube IDs with actual inspirational videos
            Grid {
                videoCard(youtubeId: "INSPIRE_ID_1", title: "Inspirational Message")
                videoCard(youtubeId: "INSPIRE_ID_2", title: "Inspirational Message")
            }
            .columns(3)
            .margin(.bottom, 20)
        }
        .margin(.top, 100)
        .margin(.bottom, 80)
    }

    private func videoCard(youtubeId: String, title: String) -> some HTML {
        Card {
            // TODO: Replace VIDEO_ID placeholders with actual YouTube video IDs
            Text("<iframe width=\"100%\" height=\"200\" src=\"https://www.youtube.com/embed/\(youtubeId)\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen style=\"border-radius: 8px;\"></iframe>")
            Text(title)
                .font(.title5)
                .fontWeight(.semibold)
                .margin(.top, 10)
        }
        .class("shadow-sm")
        .padding(10)
    }
}
