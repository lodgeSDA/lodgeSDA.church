import Foundation
import Ignite

struct Blog: StaticPage {
    var title = "All Posts"
    var description = "All blog posts"
    var path = "blog"

    var body: some HTML {
        Text("All Posts")
            .font(.title1)
            .margin(.bottom, 20)
        
        Text("Archive of all musings and articles")
            .font(.lead)
            .foregroundStyle(.secondary)
            .margin(.bottom, 30)
       
        Divider()
            .margin(.vertical, 15)
        
        Link("post", target: "/posts/2024-10-16-post/")
        Text("October 16, 2024")
            .foregroundStyle(.secondary)        
    }
}
