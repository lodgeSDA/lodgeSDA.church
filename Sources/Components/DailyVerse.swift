import Foundation
import Ignite

struct Verse {
    let reference: String
    let text: String
}

struct DailyVerse: HTML {
    private let verses: [Verse] = [
        Verse(reference: "John 3:16", text: "For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.")
    ]
    
    private func getDayOfYear() -> Int {
        let calendar = Calendar.current
        let dayOfYear = calendar.ordinality(of: .day, in: .year, for: Date()) ?? 1
        return dayOfYear
    }
    
    private func getTodaysVerse() -> Verse {
        let day = getDayOfYear()
        let index = day % verses.count
        return verses[index]
    }
    
    var body: some HTML {
        let verse = getTodaysVerse()
        
        Card {
            Text("Verse of the Day")
                .font(.title5)
                .fontWeight(.semibold)
                .margin(.bottom, 15)
            
            Quote {
                Text("\"\(verse.text)\"")
                    .margin(.bottom, 15)
                
                Text {
                    Emphasis("\(verse.reference)")
                    " "
                    Span("(NIV)")
                        .foregroundStyle(.secondary)
                }
                .horizontalAlignment(.trailing)
                .font(.body)
            }
        }
        .class("shadow-sm")
    }
}
