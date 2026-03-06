import Foundation
import Ignite

struct PastorMessage: HTML {

    var body: some HTML {
        Section {
            Text {
                "<br>"
                Emphasis("A Message from our Pastor:<br>")
                "<br>"
                "Wherever you are in life right now full of faith, full of questions, or somewhere in between we want you to know something simple and life changing:"
                "<br><br>"
                "You are deeply loved by "
                Strong("God.")
                "<br><br>"
                "The heart of the Christian message is not religion, rules, or rituals. It is a relationship with "
                Strong("Jesus Christ")
                " – the One who came so that we might have life, forgiveness, freedom, and lasting hope."
                "<br><br>"
                "Perhaps you've been searching for purpose."
                "<br>"
                "Perhaps you've been carrying guilt or regret."
                "<br>"
                "Perhaps you feel far from "
                Strong("God.")
                "<br><br>"
                "The good news is this: you are not beyond His reach."
                "<br><br>"
                Strong("Jesus")
                " meets us right where we are. He brings peace to anxious hearts, healing to broken places, and light into the darkest moments. His grace is not earned – it is received. His invitation is open to everyone."
                "<br><br>"
                "No matter your background, your past, or your doubts, there is a place for you here. Our church is a community of imperfect people discovering the transforming love of a perfect Saviour. We would be honoured to walk with you as you explore faith, ask questions, and encounter "
                Strong("God")
                " for yourself."
                "<br><br>"
                "If you've never taken the step to trust "
                Strong("Christ,")
                " you can begin today. Simply open your heart to Him in prayer. Ask Him to forgive you, to lead you, and to make you new. He promises that those who seek Him will find Him."
                "<br><br>"
                "We invite you to join us – in worship, in fellowship, and in discovering the hope that changes everything."
                "<br><br>"
                "You are welcome."
                "<br>"
                "You are wanted."
                "<br>"
                "You are invited."
                "<br><br>"
                "With hope and expectation,"
                "<br>"
                "Pastor Robis da Silva"
            }
            .horizontalAlignment(.center)
            .margin(.top, 80)
            .margin(.bottom, 80)
        }
        .margin(.top, 80)
  }
}
