import Foundation
import Ignite

struct Verse {
    let reference: String
    let text: String
}

struct DailyVerse: HTML {
    private let verses: [Verse] = [
        Verse(reference: "John 3:16", text: "For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life."),
        Verse(reference: "Jeremiah 29:11", text: "For I know the plans I have for you,\" declares the Lord, \"plans to prosper you and not to harm you, plans to give you hope and a future."),
        Verse(reference: "Philippians 4:13", text: "I can do all this through him who gives me strength."),
        Verse(reference: "Proverbs 3:5-6", text: "Trust in the Lord with all your heart and lean not on your own understanding; in all your ways submit to him, and he will make your paths straight."),
        Verse(reference: "Isaiah 41:10", text: "So do not fear, for I am with you; do not be dismayed, for I am your God. I will strengthen you and help you; I will uphold you with my righteous right hand."),
        Verse(reference: "Romans 8:28", text: "And we know that in all things God works for the good of those who love him, who have been called according to his purpose."),
        Verse(reference: "Joshua 1:9", text: "Have I not commanded you? Be strong and courageous. Do not be afraid; do not be discouraged, for the Lord your God will be with you wherever you go."),
        Verse(reference: "Psalm 46:1", text: "God is our refuge and strength, an ever-present help in trouble."),
        Verse(reference: "Matthew 11:28", text: "Come to me, all you who are weary and burdened, and I will give you rest."),
        Verse(reference: "Psalm 118:24", text: "The Lord has done it this very day; let us rejoice today and be glad."),
        Verse(reference: "2 Timothy 1:7", text: "For the Spirit God gave us does not make us timid, but gives us power, love and self-discipline."),
        Verse(reference: "Isaiah 40:31", text: "but those who hope in the Lord will renew their strength. They will soar on wings like eagles; they will run and not grow weary, they will walk and not be faint."),
        Verse(reference: "Psalm 37:4", text: "Take delight in the Lord, and he will give you the desires of your heart."),
        Verse(reference: "Romans 12:12", text: "Be joyful in hope, patient in affliction, faithful in prayer."),
        Verse(reference: "Psalm 34:8", text: "Taste and see that the Lord is good; blessed is the one who takes refuge in him."),
        Verse(reference: "John 16:33", text: "I have told you these things, so that in me you may have peace. In this world you will have trouble. But take heart! I have overcome the world."),
        Verse(reference: "Psalm 55:22", text: "Cast your cares on the Lord and he will sustain you; he will never let the righteous be shaken."),
        Verse(reference: "Proverbs 16:3", text: "Commit to the Lord whatever you do, and he will establish your plans."),
        Verse(reference: "Psalm 119:105", text: "Your word is a lamp for my feet, a light on my path."),
        Verse(reference: "Hebrews 11:1", text: "Now faith is confidence in what we hope for and assurance about what we do not see."),
        Verse(reference: "Matthew 19:26", text: "Jesus looked at them and said, \"With man this is impossible, but with God all things are possible.\""),
        Verse(reference: "Psalm 28:7", text: "The Lord is my strength and my shield; my heart trusts in him, and he helps me. My heart leaps for joy, and with my song I praise him."),
        Verse(reference: "Romans 15:13", text: "May the God of hope fill you with all joy and peace as you trust in him, so that you may overflow with hope by the power of the Holy Spirit."),
        Verse(reference: "Isaiah 26:3", text: "You will keep in perfect peace those whose minds are steadfast, because they trust in you."),
        Verse(reference: "Psalm 121:2", text: "My help comes from the Lord, the Maker of heaven and earth."),
        Verse(reference: "James 1:12", text: "Blessed is the one who perseveres under trial because, having stood the test, that person will receive the crown of life that the Lord has promised to those who love him."),
        Verse(reference: "Psalm 91:2", text: "I will say of the Lord, \"He is my refuge and my fortress, my God, in whom I trust.\""),
        Verse(reference: "1 Peter 5:7", text: "Cast all your anxiety on him because he cares for you."),
        Verse(reference: "Psalm 62:6", text: "Truly he is my rock and my salvation; he is my fortress, I will not be shaken."),
        Verse(reference: "John 14:27", text: "Peace I leave with you; my peace I give you. I do not give to you as the world gives. Do not let your hearts be troubled and do not be afraid."),
        Verse(reference: "Psalm 27:1", text: "The Lord is my light and my salvation— whom shall I fear? The Lord is the stronghold of my life— of whom shall I be afraid?"),
        Verse(reference: "Proverbs 18:10", text: "The name of the Lord is a fortified tower; the righteous run to it and are safe."),
        Verse(reference: "Isaiah 43:2", text: "When you pass through the waters, I will be with you; and when you pass through the rivers, they will not sweep over you. When you walk through the fire, you will not be burned; the flames will not set you ablaze."),
        Verse(reference: "Psalm 16:8", text: "I keep my eyes always on the Lord. With him at my right hand, I will not be shaken."),
        Verse(reference: "Romans 5:5", text: "And hope does not put us to shame, because God's love has been poured out into our hearts through the Holy Spirit, who has been given to us."),
        Verse(reference: "Psalm 31:24", text: "Be strong and take heart, all you who hope in the Lord."),
        Verse(reference: "Psalm 147:3", text: "He heals the brokenhearted and binds up their wounds."),
        Verse(reference: "Psalm 56:3", text: "When I am afraid, I put my trust in you."),
        Verse(reference: "Ecclesiastes 3:1", text: "There is a time for everything, and a season for every activity under the heavens:"),
        Verse(reference: "Psalm 138:3", text: "When I called, you answered me; you greatly emboldened me."),
        Verse(reference: "Psalm 145:9", text: "The Lord is good to all; he has compassion on all he has made."),
        Verse(reference: "Lamentations 3:22-23", text: "Because of the Lord's great love we are not consumed, for his compassions never fail. They are new every morning; great is your faithfulness."),
        Verse(reference: "Deuteronomy 31:6", text: "Be strong and courageous. Do not be afraid or terrified because of them, for the Lord your God goes with you; he will never leave you nor forsake you."),
        Verse(reference: "Psalm 9:9", text: "The Lord is a refuge for the oppressed, a stronghold in times of trouble."),
        Verse(reference: "Psalm 18:2", text: "The Lord is my rock, my fortress and my deliverer; my God is my rock, in whom I take refuge, my shield and the horn of my salvation, my stronghold."),
        Verse(reference: "Psalm 33:20", text: "We wait in hope for the Lord; he is our help and our shield."),
        Verse(reference: "Psalm 103:2", text: "Praise the Lord, my soul, and forget not all his benefits"),
        Verse(reference: "Psalm 112:7", text: "They will have no fear of bad news; their hearts are steadfast, trusting in the Lord."),
        Verse(reference: "Psalm 130:5", text: "I wait for the Lord, my whole being waits, and in his word I put my hope."),
        Verse(reference: "Nahum 1:7", text: "The Lord is good, a refuge in times of trouble. He cares for those who trust in him,"),
        Verse(reference: "Zephaniah 3:17", text: "The Lord your God is with you, the Mighty Warrior who saves. He will take great delight in you; in his love he will no longer rebuke you, but will rejoice over you with singing."),
        Verse(reference: "Matthew 5:16", text: "In the same way, let your light shine before others, that they may see your good deeds and glorify your Father in heaven."),
        Verse(reference: "Luke 1:37", text: "For no word from God will ever fail."),
        Verse(reference: "John 8:12", text: "When Jesus spoke again to the people, he said, \"I am the light of the world. Whoever follows me will never walk in darkness, but will have the light of life.\""),
        Verse(reference: "Romans 10:17", text: "Consequently, faith comes from hearing the message, and the message is heard through the word about Christ."),
        Verse(reference: "1 Corinthians 16:14", text: "Do everything in love."),
        Verse(reference: "Galatians 6:9", text: "Let us not become weary in doing good, for at the proper time we will reap a harvest if we do not give up."),
        Verse(reference: "Ephesians 3:20", text: "Now to him who is able to do immeasurably more than all we ask or imagine, according to his power that is at work within us,"),
        Verse(reference: "Colossians 3:23-24", text: "Whatever you do, work at it with all your heart, as working for the Lord, not for human masters, since you know that you will receive an inheritance from the Lord as a reward. It is the Lord Christ you are serving."),
        Verse(reference: "Hebrews 13:8", text: "Jesus Christ is the same yesterday and today and forever.")
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
