# Mentor Guidance

A rough guide on how to encourage learners.

## Finding a level

It’s important to pitch your support at the right level for the person
you’re helping, so that they’re able to absorb what you’re saying. One
way to think about this is adding branches to a trunk of knowledge; if
the trunk is a sapling then adding a large bough with many branches will
crush the sapling. Conversely, presenting a bud of information can be
frustrating for both parties if the person you’re helping is more
experienced.

For complete novices, or when very first introducing a new topic (even
to an experienced audience), this means that you should try to present
an idea in its very simplest form. Try to think about the essence of
what makes the idea important, rather than the details of how it works.
A good example of this is the idea of “[*lies to children*][lies-to-children]”.

[lies-to-children]: https://en.wikipedia.org/wiki/Lie-to-children

As a concrete example, let’s consider the case of explaining variable
assignment in Python:

``` python
foo = 42
```

A simple explanation here might be that we are “telling the computer to
remember that ‘foo’ means ‘42’”. Note that there’s no mention here of
“variable”, “identifier”, “assignment”, “integer” or even “number”.
Depending on your audience, this might be a useful description.

For an audience which has some programming experience, though perhaps
not in Python, you might instead describe this as “assigning 42 to the
variable ‘foo’”.

Note that while there are some technical terms here, there’s still no
mention of what identifiers are or what their naming rules are. It’s
fine to leave explaining those until they become important.

A superb example of this in action is this video [*explaining quantum
computing at five levels of depth*](https://www.youtube.com/watch?v=OWJCfOvochA).

### Explaining the “how”

Of course after a while many students will want to understand the “how”
of something as well as the “what”. The point where they start wanting
to know this varies from person to person as does the impact it has on
their learning.

As a result, while a hand-waved explanation (ignoring the man behind the
curtain) will suffice when initially explaining a topic, you should be
willing to explain in more detail if the student asks. Bear in mind that
you still need to find the right level on this axis too -- if you switch
to a very detailed explanation then it can still bewilder the learner.

For example, in the case of our variable assignment, you might be asked
how the computer understands the idea of 42, or how it’s stored. A first
response might be to talk about the differences between numbers (used
for addition, etc.) and strings (used for text). Even if you do end up
talking about the different in-memory representations (perhaps the
learner has already heard about ASCII), you’d almost certainly want to
avoid talking about the internals of CPython objects.

This line of questioning is sometimes related to the student trying to
attach or relate the new topic so something they already know, but not
being sure what the connections are. It’s reasonable to ask the student
if this is the case, either by asking why they’re asking for more
details (“what makes you ask that?”) or if they’ve seen something
similar before.

## Learn by doing

As much as possible, encourage the learner to experiment with what
they’ve just learned. Learning is reinforced by putting it into practise
and is often most enjoyable when discovering new things out for
yourself.

For our learning Python example, this means getting the learner into a
Python shell or similar environment where they can easily try new
things. It doesn’t matter that they’re not writing a full program yet,
the feedback loop from trying things and experiencing that there’s no
downside to things not working as hoped is what you’re after.

## Keep it interactive

Initially when explaining something you’ll need to mostly be telling the
learner what things are and what they do. At this stage, it’s important
to gauge their reaction to ensure you’re going at a pace that works for
them. If there’s something you’re not sure that they’re understanding,
do ask them!

Once the learner has formed enough of a basis of understanding of a
topic you can start asking them to explain how they think things might
work if there were slight variations. In our Python example, you might
show a conditional block:

``` python
foo = 42
if foo > 25:
    print('greater')
print('nope')
```

And then ask the learner either what they think might happen if you
changed the `>` to a `<` or to change the code to detect a different
range of numbers. In either case you don’t need to tell them whether
they’re right or not, but instead encourage them to try it themselves
so that they can learn by doing.

For more advanced learners (much closer to your own level of
understanding), then pair programming techniques can start to be used.
You may have noticed that what’s described here is similar to the
approach of having a *driver* who operates the machinery (changing the
code) and a *navigator* who guides the overall direction (towards deeper
understanding), albeit far less rigorous.

## Let them do the thinking (provide options not answers)

It’s very tempting and very easy to just give a learner the answer to
their question. While that can be suitable (for example if they’re
clearly completely stuck), it doesn’t necessarily help them understand a
topic. If you can break down the thing they’re trying to learn into
small chunks and then ask them how they think they’d achieve each of the
pieces, then this can both help them understand that topic better as
well as how to apply the knowledge they already have.

While you need to be careful that it doesn’t turn a learning session
into a never-ending series of brain teasers (which can be tiresome),
this can be a useful approach. It’s reasonable to explain to the learner
that the approach of breaking down a puzzle is a useful one and that
that’s how you’re going to approach it.

Using our Python example again, you might start with a task of “print
odd numbers up to 20”. It can seem that there’s not much to this,
however there are a number of aspects which a novice might not know
about -- at least: loops, mathematical operations, conditional blocks
and printing variables. For each of these you can spend a little bit of
time just explaining the basic concept and letting them explore how it
works before getting them to bring the pieces together.

If you had lots of time, that might look something like this:

* Explain `print("some text")`

* Ask them to make it print “some other text”

* Explain `foo = 42; print(foo)`

* Ask them to make it print a different number

* Explain `for foo in range(5): print(foo)`

    note: I probably wouldn’t at this point explain the interaction
    between `in` and `range` being a generator; I’d probably
    just think about this like a loop over numbers

* Ask them to make it print up to a higher limit

* Explain `foo = 42 % 3; print(foo)`

* Ask them to make it detect numbers divisible by something else

* Explain `foo = 42; if foo == 42: print("yes")`

* Ask them to make it print if the number is divisible by three

* Ask them if they now think they could solve the original task, and
  what that might look like

### Helping when they’re “stuck”

When a learner complains that they’re stuck it can be particularly
tempting to give them the answer. However just as when giving a friend
advice, it can be more useful to help them think through the problem
themselves.

Get them to explain the problem they’re trying to solve and what they’ve
done so far to fix it. This will help you understand their perspective,
which you can then use to guide them towards a solution. It can also act
as a rubber-duck device allowing them to realise why something doesn’t
for themselves.

## Answering their questions

Even the best teachers expect to be asked questions. You should ensure
that you allow the learner opportunities to ask you questions and treat
those questions with respect. It’s important that they feel that they
can ask for help and know that they’ll be supported rather than scorned.

There are two extremes here, both of which deserve consideration.
Firstly, if they ask a question which seems obvious to you, you should
bear in mind that (for technical topics) they likely have less
experience than you and thus don’t have the luxury of a more complete
picture. It may help you to think about them as being one of the people
who, at that moment, is lucky to be discovering something new and you as
the person who gets to share the knowledge with them. (Some estimates
suggest [*around 10,000 people*](https://www.xkcd.com/1053/) find out
about any given topic on a given day!)

Secondly, it’s possible that they may ask something which uncovers
something that you don’t know. It’s completely fine (even encouraged) to
admit that you don’t know something. If the question is on topic, you
could then work together to find out the answer. (This may even be
something you thought you knew, but their question yields new insights).

## Example phrases

Here are some sentence starters you might find useful:

* Have you considered ...

* Why do you think X happens

* Tell me what you’re thinking

    (Useful if they get stuck and go silent)

* What happens if you change..

* Which bit of the code is responsible for…
