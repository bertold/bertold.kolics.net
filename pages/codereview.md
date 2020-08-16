---
layout: page
title: Code Review Guidelines
permalink: /pages/codereview.html
---
I compiled this list of code review guidelines hoping that you can adapt it, tailor it to your context.
Every team, company I worked for are different. What may work at one, may not work in another. I tried
to keep these guidelines very generic.

## For Authors

1. **The primary reviewer is the author i.e. YOU.**
1. **Explain why the code exists.**
1. **Think positively** and then you will:
    * be conscientious and do your best to write good code;
    * be cautious and double check you work;
    * write thoughtful commit messages to explain the changes;
    * break big change into smaller pieces to make reviewers’ job easier;
    * not feel bad when the reviewers point out mistakes or improvements;
    * *learn* from the feedback instead of defending yourself.
    * be grateful for the reviewer's suggestions
1. **Create a checklist for yourself of the things that the code reviews tend to focus on.** Some of this checklist should be easy to put together. It should follow the outline of the coding standards document. Because it’s your checklist, you can focus on the thing that you struggle with and skip the things that you rarely, if ever, have a problem with. Run through your code with the checklist and fix whatever you find. Not only will you reduce the number of things that the team finds, you’ll reduce the time to complete the code review meeting—and everyone will be happy to spend less time in the review.
1. **You are not your code.** Remember that the entire point of a review is to find problems, and problems will be found. Don’t take it personally when one is uncovered.
1. **Understand and accept that you will make mistakes.** The point is to find them early, before they make it into production.
1. **No matter how much “karate” you know, someone else will always know more.** Such an individual can teach you some new moves if you ask. Seek and accept input from others, *especially* when you think it’s not needed.
1. **Don’t rewrite code without consultation.** There’s a fine line between “fixing code” and “rewriting code.” Know the difference, and pursue stylistic changes within the framework of a code review, not as a lone enforcer.
1. **The only constant in the world is change.** Be open to it and accept it with a smile. Look at each change to your requirements, platform, or tool as a new challenge, not as some serious inconvenience to be fought.
1. **Fight for what you believe, but gracefully accept defeat.** Understand that sometimes your ideas will be overruled. Even if you do turn out to be right, don’t take revenge or say, “I told you so” more than a few times at most, and don’t make your dearly departed idea a martyr or rallying cry.
1. **Don’t be “the guy in the room.”** Don’t be the guy coding in the dark office emerging only to buy cola. The guy in the room is out of touch, out of sight, and out of control and has no place in an open, collaborative environment.
1. **Please note that Review meetings are NOT problem solving meetings.**
1. **Help to maintain the coding standards.** Offer to add to the coding standards for things discussed that aren’t in the coding standards. One of the challenges that a developer has in an organization with combative code review practices is that they frequently don’t know where the next problem will come from. If you document each issue into the coding standards, you can check for it with your checklist the next time you come up for code reviews. It also will help cement the concept into your mind so that you’re less likely to miss opportunities to use the feedback.

## For Reviewers


1. **Understand why the change is necessary** (fixes a bug, improves the user experience, refactors the existing code)
1. **Think positively** and you will:
    * respond to review requests promptly;
    * try their best to review the code thoroughly;
    * actively give constructive feedback in addition to pointing out potential mistakes and improvements;
    * be nice, patient, and use a lot of ☺and remember to praise (The purposes of code reviews are not focused at telling authors how they can improve, and not necessarily that they did a good job. Human nature is such that we want and need to be acknowledged for our successes, not just shown our faults. Because development is necessarily a creative work that authors pour their soul into, it often can be close to their hearts. This makes the need for praise even more critical.)
    * empathize with the author’s situation — maybe they’re new teammates who are not yet familiar with the code base; maybe they’re under the pressure to ship features soon; or maybe the existing code is confusing;
    * seek to **understand the author's perspective**
    * *learn* from the changes instead of criticizing them.
1. **Communicate** which ideas you feel strongly about and those you don't.
1. Identify ways to **simplify the code** while still solving the problem.
1. Offer **alternative implementations**, but assume the author already considered them.
1. **Critique code instead of people – be kind to the coder, not to the code.** As much as possible, make all of your comments positive and oriented to improving the code. Relate comments to local standards, program specs, increased performance, etc.
1. **Treat people who know less than you with respect, deference, and patience.** Nontechnical people who deal with developers on a regular basis almost universally hold the opinion that we are prima donnas at best and crybabies at worst. Don’t reinforce this stereotype with anger and impatience.
1. **The only true authority stems from knowledge, not from position.** Knowledge engenders authority, and authority engenders respect – so if you want respect in an egoless environment, cultivate knowledge.
1. **Please note that reviews are NOT for problem solving.**
1. **Ask questions rather than make statements.** A statement is accusatory. “You didn’t follow the standard here” is an attack—whether intentional or not. The question, “What was the reasoning behind the approached you used?” is seeking more information. Obviously, that question can’t be said with a sarcastic or condescending tone; but, done correctly, it can often open the developer up to stating their thinking and then asking if there was a better way.
1. **Avoid the “Why” questions.** Although extremely difficult at times, avoiding the”Why” questions can substantially improve the mood. Just as a statement is accusatory—so is a why question. Most “Why” questions can be reworded to a question that doesn’t include the word “Why” and the results can be dramatic. For example, “Why didn’t you follow the standards here…” versus “What was the reasoning behind the deviation from the standards here…”
1. **Make sure you have good coding standards to reference.** Code reviews find their foundation in the coding standards of the organization. Coding standards are supposed to be the shared agreement that the developers have with one another to produce quality, maintainable code. If you’re discussing an item that isn’t in your coding standards, you have some work to do to get the item in the coding standards. You should regularly ask yourself whether the item being discussed is in your coding standards.
1. **Remember that there is often more than one way to approach a solution.** Although the developer might have coded something differently from how you would have, it isn’t necessarily wrong. The goal is quality, maintainable code. If it meets those goals and follows the coding standards, that’s all you can ask for.
1. **You shouldn’t rush through a code review - but also, you need to do it promptly.** Your coworkers are waiting for you.
1. **Review fewer than 400 lines of code at a time.** A SmartBear study of a Cisco Systems programming team revealed that developers should review no more than 200 to 400 lines of code (LOC) at a time. The brain can only effectively process so much information at a time; beyond 400 LOC, the ability to find defects diminishes.
1. **Do not review for more than 60 minutes at a time.** Just as you should not review code too quickly, you also should not review for too long in one sitting. When people engage in any activity requiring concentrated effort over a period of time, performance starts dropping off after about 60 minutes. Studies show that [taking breaks from a task over a period of time can greatly improve quality of work](https://news.illinois.edu/view/6367/205427).
1. **Assume the mindset that requests for changes are suggestions** and the author may not agree with you. If you cannot work out a compromise, consider discussing the points with the architect.
