# Description:
#  Listens for "htwf" keyword and sends a quote by Dale Carnegie
#
# Configuration:
#  none
#
# Commands:
#   hubot htwf
#
# Notes:
#   htwf is a good book
#
# Author:
#   sunils34

module.exports = (robot) ->
    robot.hear /htwf?(.*)/i, (msg) ->
        quotes = [
            'It isn\'t what you have or who you are or where you are or what you are doing that makes you happy or unhappy. It is what you think about it.',
            "Don't be afraid of enemies who attack you. Be afraid of the friends who flatter you.",
            "You can make more friends in two months by becoming interested in other people than you can in two years by trying to get other people interested in you.",
            "Success is getting what you want..Happiness is wanting what you get.",
            "Most of the important things in the world have been accomplished by people who have kept on trying when there seemed to be no hope at all.",
            "Any fool can criticize, condemn and complain--and most do.",
            "Remember, today is the tomorrow you worried about yesterday.",
            "When we hate our enemies, we are giving them power over us: power over our sleep, our appetites, our blood pressure, our health, and our happiness.",
            "People rarely succeed unless they havefun in what they are doing.",
            "If you are not in the process of becoming the person you want to be, you are automatically engaged in becoming the person you don't want to be.",
            "It isn't what you have, or who you are, or where you are, or what you are doing that makes you happy or unhappy. It is what you think about.",
            "Knowledge isn’t power until it is applied.",
            "Even god doesn't propose to judge a man till his last days, why should you and I?",
            "You can conquer almost any fear if you will only make up your mind to do so. For remember, fear doesn't exist anywhere except in the mind.",
            "When dealing with people, remember you are not dealing with creatures of logic, but with creatures bristling with prejudice and motivated by pride and vanity.",
            "Any fool can criticize, condemn and complain - and most fools do. But it takes character and self control to be understanding and forgiving.",
            "Our thoughts make us what we are.",
            "Talk to someone about themselves and they'll listen for hours.",
            "One reason why birds and horses are not unhappy is because they are not trying to impress other birds and horses.",
            "Be wiser than other people if you can; but do not tell them so.",
            "No matter what happens, always be yourself.",
            "Remember, happiness doesn't depend upon who you are or what you have, it depends solely upon what you think.",
            "Nothing can bring you peace but yourself.",
            "If you can't sleep, then get up and do something instead of lying there and worrying. It's the worry that gets you, not the loss of sleep.",
            "When dealing with people, let us remember we are not dealing with creatures of logic.  We are dealing with creatures of emotion, creatures bristling with prejudices and motivated by pride and vanity.",
            "Be more concerned with your character than with your reputation, for your character is what you are, while your reputation is merely what others think you are.",
            "...the best possible way to prepare for tomorrow is to concentrate with all your intelligence, all your enthusiasm, on doing today's work superbly today. That is the only possible way you can prepare for the future.",
            "One of the tragic things I know about human nature is that all of us tend to put off living. We are all dreaming of some magical rose garden over the horizon - instead of enjoying the roses that are blooming outside our windows today.",
            "Our fatigue is often caused not by work, but by worry, frustration and resentment.",
            "Let's not allow ourselves to be upset by small things we should despise and forget. Remember 'Life is too short to be little'.",
            "Everybody in the world is seeking happiness - and there is one sure way to find it. That is by controlling your thoughts. Happiness doesn't depend on outward conditions. It depends on inner conditions.",
            "Don't be afraid to give your best to what seemingly are small jobs. Every time you conquer one it makes you that much stronger. If you do the little jobs well, the big ones will tend to take care of themselves.",
            "Actions speak louder than words, and a smile says, ‘I like you. You make me happy. I am glad to see you.",
            "Two men looked out from prison bars,One saw the mud, the other saw stars."<
            "You'll never achieve real success unless you like what you're doing.",
            "When fate hands you lemons, make lemonade.",
            "Today is our most precious possession. It is our only sure possession.",
            "You can sing only what you are. You can paint only what you are. You must be what your experiences, your environment, and your heredity have made you. For better or for worse, you must play your own little instrument in the orchestra of life.",
            "Always have something to say. The man who has something to say and who is known never to speak unless he has, is sure to be listened to.",
            "We are all dreaming of some magical rose garden over the horizon instead of enjoying the roses blooming outside our windows today",
            "The expression one wears on one's face is far more important than the clothes one wears on one's back.",
            "The man who goes farthest is generally the one who is willing to do and dare. The sure-thing boat never gets far from shore.",
            "you can measure the size of a person by what makes him or her angry",
            "Let's never try to get even with our enemies, because if we do we will hurtourselves far more than we hurt them. Let's do as General Eisenhower does: let's neverwaste a minute thinking about people we don't like.",
            "Success is getting what you want. Happiness is wanting what you get.",
            "Personally I am very fond of strawberries and cream, but I have found that for some strange reason, fish prefer worms. So when I went fishing, I didn’t think about what I wanted. I thought about what they wanted. I didn't bait the hook with strawberries and cream. Rather, I dangled a worm or grasshopper in front of the fish and said: \"Wouldn't you like to have that?\"Why not use the same common sense when fishing for people?",
             "Let's find and remedy all our weaknesses before our enemies get a chance to say a word. That is what Charles Darwin did. ...When Darwin completed the manuscript of his immortal book \"The Origin Of Species\" he realized that the publication of his revolutionary concept of creation would rock the intellectual and religious worlds. So he became his own critic and spent another 15 years checking his data, challenging his reasoning, and criticizing his conclusions.",
                "Flattery is telling the other person precisely what he thinks about himself.",
                "If you believe in what you are doing, then let nothing hold you up in your work. Much of the best work in the world has been done against seeming impossibilities.",
                "A good deed, \"said the prophet Mohammed, \"is one that brings a smile of joy to the face of another.\"Why will doing a good deed every day produce such astounding efforts on the doer?Because trying to please others will cause us to stop thinking of ourselves: the verything that produces worry and fear and melancholia.",
                "Flaming enthusiasm, backed by horse sense and persistence, is the quality that most frequently makes for success.",
                "That is the way Emerson said it. But here is the way a poet -the late Douglas Mallochsaidit:If you can't be a pine on the top of the hill.Be a scrub in the valley-but beThe best little scrub by the side of the rill;Be a bush, if you can't be a tree.If you can't be a bush, be a bit of the grass.If you can't be a muskie, then just be a bass-But the liveliest bass in the lake!We can't all be captains, we've got to be crew.There's something for all of us here.There's big work to do and there's lesser to doAnd the task we must do is the near.If you can't be a highway, then just be a trail,If you can't be the sun, be a star;It isn't by the size that you win or you fail-Be the best of whatever you are!",
                    "there is only one way under high heaven to get the best of an argument - and that is to avoid it.",
                        "A barber lathers a man before he shaves him.",
                        "Do you remember the things you were worrying about a year ago? How did they work out? Didn't you waste a lot of fruitless energy on account of most of them? Didn't most of them turn out all right after all?",
                        "Nobody kicks a dead dog",
                        "If You Want to Gather Honey, Don't Kick Over the Beehive",
                            "It isn’t what you have or who you are or where you are or what you’re doing that makes you happy or unhappy.  It’s what you think of it.  Two people may in the same place doing the same thing, and yet one may be miserable and the other happy.  Why?  Because of a different mental attitude.",
            ];
        quote = quotes[Math.floor(Math.random()*quotes.length)]
        msg.send quote
