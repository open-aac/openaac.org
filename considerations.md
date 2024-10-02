---
layout: page
title: AAC Development 
page_title: Considerations for Developers
description: Long-term functionality to remember when developing AAC systems
include_nav: false
---
<style>
  ul {
    list-style: none;
  }
  ul ul {
    margin-bottom: 10px;
    margin-top: 10px;
  }
  p strong {
    display: block;
    margin-bottom: -20px;
  }
  li {
    cursor: pointer;
  }
  li hint > span {
    display: none;
  }
  li hint::after {
    display: inline-block;
    content: "»";
    width: 20px;
    height: 20px;
    visibility: visible;
  }
  li hint.toggled > span {
    display: block;
    margin-left: 50px;
    font-size: 14px;
    font-style: italic;
    max-width: 500px;
  }
  li hint.toggled::after {
    display: none;
  }
</style>
<h2>AAC App Development</h2>

Welcome to the world of AAC app development!
When developing a new app, it's always a good idea to make sure you
have a clear understanding of the history of that type of app. For
AAC, there are definitely expectations people will have about what
an AAC app does, and how it functions. That doesn't mean you must --
or even should -- follow those conventions, but understanding why
they exist is much more effective than pretending they don't exist.

The AAC market has been around for a long time now, and many people
are cautious about adopting new software because there have been
enough "flash in the pan" releases that weren't supported long-term.
If you are going to release something, please make sure you understand
who you are trying to serve and how you can ensure their long-term
success.

<h3>User Stories and Feedback</h3>

It's important to collect feedback from real-world users. You may
have decided to start out in a particular niche or to focus on
a specific disability or need regarding AAC. That's fine, but you will
definitely get pressure to expand beyond that, and with the AAC market
being as small as it is, there is a good chance you'll need to expand
if your plan requires commercial viability to succeed. Find a
diverse range of potential users and collect their feedback and input
early and often.

<h3>AAC Features</h3>

Once developers begin to see adoption of their product, they often 
discover use cases that fit outside of their original expectation. 
This is fine, and the way products typically grow, but we have seen many 
products that suffered because their original scope did not anticipate 
needing to grow in certain directions.

As developers, it is usually beneficial to understand long-term potential
use cases during initial development. This functionality list is meant 
as a tool to help AAC app developers get an appreciation for the typical 
scope of AAC, so that they can architect a more robust solution from the 
get-go instead of having to re-architect it later. Do NOT try to 
implement all of these features from the get-go. If you have suggestions 
or questions about this list, please let us know in our Slack channel 
and we would be happy to discuss them with you.

<div style='border: 1px solid #ccc; border-radius: 10px; padding: 10px 30px; max-width: 400px; margin-bottom: 30px;'>

<strong>Feature Key:</strong>
  <ul style='margin-bottom: 10px;'>
    <li>🟢 Standard Across Apps</li>
    <li>✅ Most Apps Have</li>
    <li>⭐ Top Apps Have</li>
    <li>💡 Often Requested</li>
    <li>💜 Specialization</li>
  </ul>
</div>

<button class='btn' id='expand'>Expand All</button>

***Display:***
- 🟢 words and symbols 
  <hint><span>Some apps show text-only buttons, but many show (or have the 
  option to show) images that are paired with the button text. Some
  apps use actual photographs, while others use line-drawn symbols.
  For some types of disabilities, photographs may be too visually
  overwhelming or stimulating, although some adults who need AAC later
  in life prefer less "cartoony" images.
  </span></hint>
- 🟢 grid layout
  <hint><span>A grid-based layout is the most common layout for AAC apps,
  so if you are using an alternative layout, please make sure it
  works well for your users.</span></hint>
- 🟢 links to other boards
  <hint><span>Most apps have some kind of visual indication when a button
  is actually a link to another layer/board/view. This is usually
  a different border style or thickness, folder-shaped border,
  or a visual flag in the top corner of the button. Some apps 
  have a setting to auto-return to the starting board when an
  unlinked button is navigated to and pressed. This can be helpful
  in teaching users a consistent/reliable sequence they can use
  to get to a specific button.</span></hint>
- 🟢 say something different than button text
  <hint><span>This is used for two common purposes: to override a 
  word that is being mispronounced, or to show a single word, 
  abbreviation or shortened version of a longer phrase that will
  be spoken when the button is activated.</span></hint>
- ✅ symbols-only option
  <hint><span>Some proficient users choose to turn off labels
  on their buttons once they have memorized their locations 
  because it makes the interface less cluttered for them.
  </span></hint>
- ✅ words-only option
  <hint><span>While some users or their support staff prefer images
  for more easily finding buttons, some literate users prefer not
  to have images because they can scan through the options more easily,
  or the pictures are distracting or distasteful.</span></hint>
- ✅ text on top/bottom
  <hint><span>To encourage literacy, some people suggest putting
  the word above the symbol on each button, but other users prefer
  to have the word below the symbol.</span></hint>
- ⭐ skin tone selection for symbols with people
  <hint><span>In the past many symbol libraries only offered light-colored
  skin tones for people-related symbols, and it was generally
  tolerated because there weren't a lot of options, but many
  proprietary symbol libraries have now added skin tone options,
  so the expectation of supporting skin tones is more common.</span></hint>
- ⭐ high contrast option for all symbols
  <hint><span>Some users may have visual impairments which can
  make it difficult for them to see photographs or even symbols
  with a broad range of colors. Many symbol libraries include
  high-contrast alternatives, which tend to have a black background,
  thicker and less-details lintes, and limit the symbol to only a 
  few, high-saturation colors at a time.</span></hint>
- 💡 non-grid layout
  <hint><span>Many AAC systems rely on a grid-based layout for 
  simplicity and consistency, but not all. Being able to have
  alternative layouts or even just having some buttons that span
  multiple cells in a grid can be valuable, especially on
  keyboard-style layouts.</span></hint>
- 💜 visual scenes
  <hint><span>Visual Scene Displays are a specific type of
  non-grid layout where the screen is filled with a drawing or
  photograph, and buttons are drawn or placed directly over
  items in the picture (think labelling everything in the
  picture of a bathroom). This can help beginning AAC users, 
  and also others who may struggle mapping concepts to
  spoken words or phrases.</span></hint>

***Customization:***
- 🟢 add new buttons
  <hint><span>Most users will want to personalize the vocabulary
  that is provided, at the very least with names of people they
  regularly encounter, with personal examples, or words or 
  topics that are unique but important to them.</span></hint>
- 🟢 upload symbols
  <hint><span>When users personalize a vocabulary, they may
  find existing symbols that match the words they are adding,
  but photos of people or places are unique and personal, and
  no library contains symbols for every possible word or concept.
  Additionally, for some users the provided mapping of concept-to-symbol
  may not make sense in their culture, environment or preference.</span></hint>
- 🟢 rearrange layout
  <hint><span>Most AAC systems allow users to move symbols
  around to the locations that work best for them. They may have
  physical impairments which make certain areas of the screen
  easier to access for them, and can choose to organize their
  layout around their personal efficiencies.</span></hint>
- ✅ hide/show buttons
  <hint><span>When a user is new to AAC, or focused on a specific
  context, they may want to hide buttons to improve focus or prevent
  being overwhelmed. This if often a better option than starting with
  a board with only a few buttons, because it makes progression
  more approachable going forward. Some apps will also have pre-programmed
  levels that hide sets of buttons, or an
  option to temporarily show all hidden buttons.</span></hint>
- ✅ upload sounds
  <hint><span>Users may want to record personalized audio sound bytes,
  sound effects or other audio to play back when a button is 
  selected</span></hint>
- ✅ custom grid size
  <hint><span>While some apps offer a preset size for their
  buttons, there will be users who would like to fit more buttons on
  a single screen, and others who will have trouble selecting 
  buttons and can benefit from larger targets, so it makes sense
  to have the button size (i.e. grid size) a user-configurable
  option.</span></hint>
- ✅ button border and fill color
  <hint><span>To help with visual organization, especially on
  larger boards, it can make sense to great visual clusters of
  buttons that have the same fill or border color. Additionally,
  some apps will auto-color buttons based on their part of speech
  (see: Fitzgerald Key for an example of this).</span></hint>
- ⭐ search through symbol library for images
  <hint><span>Having a default symbol available for each word
  can be useful, but there are times when the user may want to select
  an alternative option, such as a green instead of a red apple, to 
  more closely match their personal experience, or to find a 
  closest match for a word that doesn't already have a default 
  symbol.</span></hint>
- ⭐ add photos from device/camera
  <hint><span>Users will want to use personalized images, such
  as those found on their camera roll, for personal locations
  or people, or to better match words based on their personal
  experience.</span></hint>
- ⭐ easily switch symbol sets
  <hint><span>Some apps support multiple symbol libraries, and
  it can be useful to quickly switch between them in batch.
  Some school districts or educational programs center
  their material around a particular symbol library, so being
  able to match AAC symbols to those used in other contexts
  is an oft-requested feature.</span></hint>
- ⭐ color coding of buttons by word type
  <hint><span>This is often done with a variation of the
  Fitzgerald Key, and words of different parts of speech
  are colored differently. The benefits are twofold: it
  provides some basic instruction on grammar for the
  AAC user, and because words are often clustered by
  word type, it creates regions of color which help 
  organize an potentially-large grid of options.</span></hint>
- 💡 quick access to hide/show buttons
  <hint><span>Sometimes called a "Babble" function, this
  allows the user, for a single session, to turn on all hidden
  buttons. This provides value for those who are exploring
  a new system but who, for varied regions, may not be
  best served by seeing all buttons all the time.</span></hint>
- 💡 option to lock editing behind an access code
  <hint><span>It is important to respect the AAC user, and
  ideally they would have control over their own vocabulary, but
  there may be cases where the AAC user is not proficient 
  enough with their technology to reliably work the editing
  interface, or where they may be entering the editing interface
  on accident. Keep in mind that some users may be editing
  or deleting buttons as a method of communication and may feel
  they are being silenced or forcibly-controlled if they are
  locked out of this type of interface.</span></hint>
- 💡 offline backup
  <hint><span>Devices break and get reset. Sometimes administrators
  run a wipe of all campus devices without realizing the
  full repercussions, for example. It is important to provide users
  with a way to either manually or automatically store what they
  have on their device to a remote location. Some apps have their
  own cloud storage, others rely on storage provides like Apple,
  DropBox, etc.</span></hint>
- 💡 sharing vocabulary sets across users
  <hint><span>The amount of work it takes to create or modify an
  AAC vocabulary is significant. Once someone has worked to create
  a vocabulary, there is often value in sharing it, either with 
  other known users, or publicly for others to use.</span></hint>
- 💡 different-sized buttons
  <hint><span>Some layouts work better with mostly-small buttons
  and some larger buttons, such as a keyboard with word suggestions.
  Additionally, some AAC vocabulary creators prefer to draw extra
  attention to certain buttons, and having them span columns or rows
  is a useful way to improve access or attention.</span></hint>
- 💜 choose grid background color
  <hint><span>Users with visual impairments may find it is easier
  to look at and understand buttons when there is a darker background
  to help bring things into focus (think, dark mode). 
  Additionally, some vocabulary
  designers may use different-colored backgrounds in different views
  as a visual indicator of their purpose.</span></hint>
- 💜 set background image behind buttons
  <hint><span>Users with visual impairments may find it easier to
  see the words or symbols on buttons with a black background, either
  filling the entire button, or just behind the actual image.</span></hint>
- 💜 customizable keyboards
  <hint><span>Some AAC apps user the built-in keyboard for spelling
  purposes, but depending on the user these keyboards may not be 
  accessible. Additionally, some users may need larger buttons and
  a full keyboard doesn't fit on a single screen, or QWERTY may
  not be the most intuitive layout, so custom keyboards can provide
  value for different users.
  </span></hint>
- 💜 options for different-shaped buttons
  <hint><span>Some apps provide optional border shapes other than
  just a square or rounded square. They could be jagged edges, thought
  bubble or speech bubbles, etc.</span></hint>

***Access:***
- 🟢 touch
  <hint><span>Touch access is by far the most common interface
  for interacting with AAC, but for users with motor issues, they
  may need specialized touch options in order for the interface to
  work for them. For example, some users with place a plastic overlay
  on top of their device with holes cut out for each button, making
  it less likely for them to accidentally press the wrong buttons.
  Keep in mind that "touch" interfaces may be hit with a person's
  finger, or with a stylus or other selection tool.
  </span></hint>
  - 🟢 select from touch-start
    <hint><span>Some people may be able to hit the correct target
    initially, but then due to movements, lift their finger on
    a different target than where they started.</span></hint>
  - 🟢 select from touch-release
    <hint><span>Some people may have to work just to get their
    finger down on the device, but then once it's stable they can
    more easily move it to the correct location and lift on the
    correct target.</span></hint>
  - ⭐ hold to select
    <hint><span>Some people may accidentally tap, and prefer to
    select based on them holding their finger or stylus on the
    correct target for a user-defined period of time (milliseconds,
    for example).</span></hint>
  - ⭐ user-defined hold duration
    <hint><span>Make sure that the "hold to select" duration
    isn't just a pre-defined timeout, but can be configured by
    the user (milliseconds is the typical unit).</span></hint>
  - 💜 fixed selection (explicit keyboard map)
    <hint><span>An additional option that some people prefer
    is to have a keyboard-type interface in front of them, where
    each key maps to a target on-screen. So, for example, they might
    hit "q" to select the top-left button, "w" for the next, etc.
    The mapping of keys to button locations should be configurable.
    Holding a hand upright may be fatiguing for some people, or covering
    the screen with their hand may be difficult.
    </span></hint>
- ⭐ scanning
  <hint><span>"Scanning" is a term used in AAC for a visual scan
  that people can use to select buttons. Typically a highlight border
  jumps from target to target (or region to region) and the user hits
  a button when the highlight gets to the right target. Scanning
  interfaces also optionally read out the contents of the current
  target as it is scanned.<br/><br/>
  Sometimes the
  user may have multiple buttons, one for select, one for "next" 
  or "previous" or "canncel". Actions are usually mapped to 
  keyboard events, and most accessible switches are programed to send
  keyboard events. With enough buttons, scanning through
  every single target every single time would take too long, so 
  targets are often clustered into regions and the person picks a region
  first, then from all the targets in that region.
  </span></hint>
  - ⭐ row scanning
    <hint><span>This is the most common option. Often the sentence
    box is its own row, then each row of buttons. The sentence
    box may instead come at the end of the list instead of the
    beginning. Once the correct row is selected, scanning moves
    through all the items in that row.</span></hint>
  - ⭐ column scanning
    <hint><span>Similar to row scanning, but with columns.</span></hint>
  - ⭐ accept on select
    <hint><span>The default expectation is that when a person hits
    the "choose" button then the current target is selected. This can
    be done when the person presses down on the button, or
    when the push down and up in fast succession.</span></hint>
  - ⭐ accept on release
    <hint><span>People may have trouble getting the button pushed down
    at the correct time, and have an easier time timing the "release"
    of the button as their selection action.</span></hint>
  - ⭐ advance on select
    <hint><span>If the person has more than one button, they might
    use one for select, and another for "next" so they can control
    the speed in which options are scanned through.</span></hint>
  - ⭐ accept on no-click
    <hint><span>Some people prefer to use a "next" button to 
    advance through the targets, and rather than needing a second
    "select" button, they can just *not* hit the "next" button
    before a timeout and consider that a selection. Keep in mind
    that in this case, you'll want to wait to trigger "select" events
    automatically until after the person has hit "next" at least
    once, otherwise non-action will result in the first button
    being hit over and over.</span></hint>
  - ⭐ cancel on select
    <hint><span>Some people want an additional "cancel" or "go back"
    button that allows them to start over or drill back out more
    quickly.</span></hint>
  - ⭐ auditory scanning
    <hint><span>As the scanning interface runs through potential 
    targets, it can also optionally read off those targets, so 
    that those who need help focusing or who cannot see as well,
    can listen instead for the desired option. Additionally, some
    auditory scanning interfaces will read these options in a
    different voice (or through a headphone output) than the
    person's preferred speech output voice.</span></hint>
  - 💡 region scanning
    <hint><span>In addition to row/column scanning, some apps offer
    configurable region scanning. Regions could be defined as # of
    rows & columns, or some apps also allow vocabulary authors to
    define their own scanning regions as part of the vocabulary
    interfact to better accommodate scanning users.</span></hint>
  - 💜 axis/crosshair scanning
    <hint><span>An additional scanning-style interface involves
    showing panning a target either veritically or horizontally back
    and forth across the screen until the person hits a button.
    Once they have chosen an x or y location, the panning can switch 
    directions, allowing the user to select a specific x,y location
    on-screen. This can be faster than item-based scanning, but
    requires more precision.
    </span></hint>
  - 💜 region drilldown
    <hint><span>A specific style of region scanning, where the
    vocabulary author or the AAC user can define their own
    custom scanning regions.</span></hint>
  - 💜 double/triple tap/hold to change action
    <hint><span>Some apps support extra actions by double- or triple-tapping the button. This can give a person more
    flexibility without requiring too many separate buttons.</span></hint>
- 💡 mouse control
  <hint><span>Mouse control may be easier for some people, but
  it also encompasses a number of alternative tracking modes
  that emulate mouse events or show an on-screen cursor like a mouse
  cursor. These could include head trackers, joysticks, touch 
  screens, etc.</span></hint>
  - 🟢 click to select
    <hint><span>The "click" action could be on an
    actual mouse, or some from a secondary device like a
    button that would be used for scanning (and may be programmed
    instead to trigger a keyboard event).</span></hint>
  - 💡 dwell to select
    <hint><span>As an alternative to "click", the person may
    find it easier to steer the cursor to the location of a button
    and then keep it there inside the button. This would be
    considered a "dwell" selection.</span></hint>
  - 💡 double/right click for special action
    <hint><span>Some mouse interfaces use double-click or right-click
    to trigger specialty actions, such as popping up a sub-menu
    or extra options.</span></hint>
  - 💜 custom cursor
    <hint><span>Some people may not be able to see the standard
    mouse cursor very well, and can benefit from alternative cursor
    icons like a larger pointer, colored dot, etc.</span></hint>
- 💡 eye gaze/head control/joystick
  <hint><span>These control methods may operate similar to a
  mouse control, showing an on-screen cursor and using a button
  to select, but they may also rely on dwelling on a target
  as a selection technique, or they may not show an on-screen cursor.
  For example, many eye gaze-tracking interfaces do not show a custor
  where the user is looking because it can feel confusing as the
  cursor follows the person's gaze around the screen. This only works
  because eye gaze isn't adjustable like other cursor control interfaces,
  so if it's not calibrated correctly you can't easily compensate by
  just looking slightly to the left/right, which comes more naturally
  for something like a head-tracking interface.<br/><br/>
  Note that iOS and Android both have head tracking libraries to
  make this more automated. You can see examples of using these
  libraries in the <a href="https://github.com/open-aac/cordova_face">cordova_face</a> library.</span></hint>
  - 💡 dwell to select
    <hint><span>Dwell-to-select is the more-common option for eye
    tracking interfaces, and for some head-tracking interfaces, since
    it takes enough focus to select the target that then hitting
    something else may be too big an ask. Also, dwelling on a target
    feels natural for eye tracking interfaces. The amount of time
    required for a dwell action to trigger should be user-configurable,
    and is often but not always less than one second.</span></hint>
  - 💡 keyboard/button press to select
    <hint><span>With tracking interfaces, some people prefer
    hitting a button, screen or key for selection rather than
    waiting for a dwell timeout.</span></hint>
  - 💡 head as joystick vs head as pointer
    <hint><span>For head tracking (and potentially for joystick
    tracking) there are two common ways of controlling the cursor.
    The first, "head as pointer" would be like taping a laser
    pointer to your head and having that control the cursor. The cursor
    position would map directly to where the head is pointing at 
    the screen. The second option, "head as joystick", means that the
    cursor is controller by the head position, but they aren't locked 
    together. So if the user tilts their head a little to the right, the
    cursor will start sliding to the right. If they tilt far up, the
    cursor will move quickly up. If they center their head, the cursor
    will stop moving.</span></hint>
  - 💡 pause tracking
    <hint><span>Because these interfaces often rely on head or eye
    gaze position, they can become tiring and will misfire if the
    person's attention is on something else. It can be vaulable
    to have a "pause" button or region the person can use to
    temporarily disable tracking.</span></hint>
  - 💡 expression to select
    <hint><span>Because some eye- and head-tracking users may
    not be in a position to use other interfaces like a button,
    the most obvious selection technique is dwell, but this can
    take a long time, so another option is to track facial
    expressions as a way to select the current target.</span></hint>
    - 💡 blink
    - 💡 wink
    - 💡 tongue
    - 💡 open-mouth
    - 💡 smile
    - 💡 eyebrows
- ✅ adaptations
  <hint><span>As users select buttons, there can be different
  accommodations based on the needs of the individual user that
  can make selection and access more meaningful. Below are
  some selection adaptations that people use or have requested.
  </span></hint>
  - ✅ debounce (prevent multiple hits)
    <hint><span>Some people accidentally hit buttons multiple times
    in a row, often in quick succession. Having a debounce option
    can prevent unintentional repeats. This should be an optional
    setting though, as some people hit buttons quickly enough
    that a debounce feature may get in their way.</span></hint>
  - ✅ option to speak each word on select
    <hint><span>Some people use button selection as their
    main communication approach with AAC. They speak each word as
    it is selected, and may use the sentence box for additional
    emphasis. Especially with beginning AAC users, this option
    provides more immediate feedback and can help the
    person as well as those supporting them.</span></hint>
  - ✅ option to only speak when hitting the constructed sentence
    <hint><span>Some people prefer to build their sentences in
    private and only have the device speak once they have completed
    their statement.</span></hint>
  - ⭐ click sound on select
    <hint><span>Some apps optionally make a clicking sound as the
    person navigates their vocabulary or builds sentences. This can
    help others know when a person is actively working on saying
    something, but is seen as a nuisance by some AAC users.</span></hint>
  - ⭐ option for button spacing, border size
    <hint><span>Getting to the intended button can be difficult
    for some, or at some times, and being able to configure the size
    or the gutters between buttons, or the size of the edges of the
    buttons, can help some people see their intended target or
    get to it with less difficulty. Note that this is often a
    global preference rather than for a specific board or button.
    </span></hint>
  - 💡 highlight on select
    <hint><span>There is some research showing that visual highlights,
    especially popping up just the word as it is spoken, can help
    improve literacy. Additionally, some users, such as those with 
    auditory issues or who use AAC in louder environments, may prefer
    a visual indication that the button was selected.</span></hint>
  - 💡 swipe to scroll between pages
    <hint><span>For some touch-based users, accidentally sliding across
    the screen can essentially move the entire interface. Additionally,
    if they've learned where specific buttons are on the screen, swiping
    can disrupt that motor memory (think how a keyboard with sliding rows
    would feel). However, some users prefer swiping to scroll through
    more options than would fit on a single screen, or as an alternative
    form of navigation to jup between different views.</span></hint>
  - 💡 auditory fishing
    <hint><span>If a user has processing or visual difficulties, then
    they may find themselves struggling to find or select the intended
    target. Auditory fishing is an approach where the device speaks
    the button when it is selected (optionally in a different voice
    or into a headphone output) but requires a second selection
    action (such as tapping again) in order to actually select
    the option.</span></hint>
  - 💜 digital zoom
    <hint><span>Some interfaces employ a digital zoom, which acts
    in some respect like a scanning interface, where the person can 
    select the region of interest, then zoom in to that region and 
    see the options there with larger targets. This can help make
    a large grid size feel more approachable for some people.
    </span></hint>

***Sentence Box:***
- 🟢 build whole sentences
  <hint><span>Many apps have a blank area that either shows
  plain text or text-and-images, as a place where the user can
  combine multiple words or phrases into a cohesive sentence
  or statement. Often if the user taps this area then it will
  speak the entire contents of the sentence. Some apps auto-clear
  after the entire contents are spoken, and some have a separate
  clear or backspace button.</span></hint>
- 🟢 tap to speak sentence
  <hint><span>Most apps that have a sentence box allow the
  person to tap this box and have the entire contents of the 
  box spoken at once. </span></hint>
- 🟢 clear button
  <hint><span>When users can collect multiple words or phrases
  into a larger unit, it makes sens to give them a way to clear
  this on-demand -- to start over, to start a new though,
  or just to clear the view visually.</span></hint>
- 🟢 backspace button
  <hint><span>Some apps combine clear and backspace into a single
  button, and you tap to backspace, or long-press or double-tap 
  to clear.</span></hint>
- ✅ clear sentence on select
  <hint><span>The most common use case for the sentence box is to
  craft a longer statement, speak it, and then start a new statement.
  As such, it can be useful for some users if there is the option 
  to automatically clear the sentence box once its contents have
  been spoken.</span></hint>
- ✅ quick access phrases
  <hint><span>Having global access to some user-configured quick
  phrases (think "give me a minute to respond", "I use this device to 
  speak", etc.). Often these quick access phrases will speak a 
  message without adding the message to the sentence box.</span></hint>
- ⭐ option to include images
  <hint><span>Some apps have a text-only sentence box, which allows
  for building longer or larger statements. Additionally, some apps 
  will show the sequence of buttons, so for each button it will show
  the word from the button as well as the image on that button (or
  the sequence of images used to get to that button -- though note
  that there are some patents related specifically to that behavior
  which may be an issue).</span></hint>
- ⭐ saved phrases
  <hint><span>In addition to quick-access phrases, it can be useful
  if, as people build statements in the sentence box, they have an
  easy way to save the current statement for later. This could be a
  short-term stash, or a longer-term "I will use this phrase often"
  sort of action.</span></hint>
- ⭐ hold that thought
  <hint><span>Because it takes time to craft a complete sentence,
  people may get interrupted mid-statement. If this happens, they may
  want to pause their current statement, craft a different response,
  and then go back to what they were doing. This is sometimes called
  "hold that thought" because it allows a person to temporarily pin
  their current statement, craft something completely different,
  and then resume the original statement.</span></hint>
- ⭐ repeat louder
  <hint><span>If a person feels like they weren't heard, it can be
  useful to be able to temporarily increase their volume and
  repeat what they just said for others to hear.</span></hint>
- ⭐ share sentence externally
  <hint><span>Mobile apps often have "Share" tools that allow sending
  text or material between apps. In this way a person could quickly
  share their message via text, social media, etc. It is worth noting
  that while a user may have used images to help them craft their
  message, some AAC users prefer not to have those images included
  in their message when they share it externally.</span></hint>
- 💡 flip text to show someone else
  <hint><span>If a person wants to share their message with someone else
  in a noisy environment, or in a situation where reading makes more 
  sense, then the person can set the device down so both parties can
  see it. However, if the other person is across from them, they will
  have to read upside-down. Having the option to flip (and possibly enlarge)
  the text in the sentence box can help a person more easily share
  their message while it is being written, or in a text-preferred
  environment.</span></hint>
- 💜 show on secondary display
  <hint><span>Some devices come with a secondary display that sits
  on the back of the device, so that if a person desires, their message
  can appear visually to the person in front of them, even as they
  work on building the message. This is particularly useful for 
  devices that are mounted in front of a user like on a wheelchair.
  </span></hint>

***Vocabulary:***
- 🟢 pre-populated vocabularies
  <hint><span>Most people don't have the time, interest or
  expertise to create a full vocabulary from scratch, so
  make sure you have created some resources that people can
  at least start from as they adopt your app. If you need help,
  there are some free, open-licensed vocabularies you can use
  or modify as part of the <a href="https://www.openboardformat.org">Open
  Board Format</a> site.</span></hint>
- 🟢 places for personalized words
  <hint><span>Most people will want to have custom vocabulary
  based on their personal relationships, interests and locations. 
  As you design vocabularies, make sure you take this into account
  and look for places for personalized buttons.</span></hint>
- ✅ core words in pre-populated vocabularies
  <hint><span>Core words are words that are used frequently and
  can be used in multiple contexts. Some apps focus heavily on
  nouns or needs that can be requested, but in order to have a 
  strong, robust vocabulary, people need the ability to express
  a broad variety of thoughts, and having access to core words is
  a useful way to enable more diverse communication.
  </span></hint>
- ✅ category-based layout option
  <hint><span>The most common layout for AAC vocabularies is to
  have a set of high-frequency words on the main view, and then link
  to additional words organized by category. Please note this isn't
  to say that this is how all AAC should be implemented, but it is 
  useful to know what people are used to seeing.</span></hint>
- ✅ multiple grid sizes pre-built
  <hint><span>AAC users have different degrees of visual
  acuity and motor skills, and some may be able to handle very large 
  grids (typically not larger than 8x15, or 120 cells), while others
  would not be able to hit buttons that small. It is valuable to
  support different grid sizes to accommodate different users. Note
  that the smallest "robust" vocabularies are typically not smaller than
  3x5 (15 cells) or 4x6 (24 cells). Some users may require even larger
  buttons than that, but supporting them may require different 
  layout approaches.</span></hint>
- ⭐ motor planning-based layout option
  <hint><span>"Motor planning" is a term used in the AAC community,
  and it is similar to the idea of muscle memory. We may take for
  granted how easy it is to get our bodies to lift a hand, point a 
  finger, move it to the right place, set it down, and lift it again.
  If the layout for a vocabulary changes regularly (i.e. buttons 
  move to different spaces) then it can disrupt a person's motor
  plan for saying something they've said before. Additionally,
  being able to always hit the same sequence to say the same thing
  can improve speed and require less cognitive load, so some apps
  automatically return to the starting board whenever a
  non-linked word is selected.</span></hint>
- ⭐ option to auto-return to home board
  <hint><span>Being able to always hit the same sequence 
  to say the same thing
  can improve speed and require less cognitive load, so some apps
  automatically return to the starting board whenever a
  non-linked word is selected. Some users prefer this, while for
  others they would rather stay on the same sub-view until
  they manually return to the home view. The style of vocabulary
  layout may also affect whether auto-return is ideal or not.
  </span></hint>
- 💡 semantic compaction functionality (patented)
  <hint><span>An additional idea in AAC is the concept of 
  semantic compaction. Briefly, this is a way to organize vocabularies
  with the intent of making it easier to learn and remember where
  words are located. It is similar to a category-based layout in the
  sense that the first hit specifies a category or theme, but with 
  semantic compaction additional views place related words in the
  same place on every view. So the button at cell 3,4 may always
  have to do with food. If you hit the "action" cell first, then
  cell 3,4 it might say "eat", whereas if you hit the "feeling"
  cell first and then cell 3,4 it might say "hungry". It's useful to
  think of how this type of layout would have enabled people
  to expand their vocabulary with a static layout before dynamic
  touchscreens were available, by adding depth while keeping the
  same concept at each cell location. Note that there are 
  patents registered in this area which should be considered
  before implementing a semantic compaction-style layout or app.
  </span></hint>
- 💡 adult topics
  <hint><span>Many AAC apps are adopted by both younth and adults.
  When school programs or parents adopt an AAC app for someone they
  support, they may feel reluctant to give the person access to
  adult vocabulary, human anatomy, swear words, etc. There is 
  growing acceptance of the idea of including such vocabulary for
  all users, but it is not universal. If you decide not
  to add these types of vocabulary by default, it would be a good
  idea to provide an option whereby it can be easily enabled for
  those people who are comfortable with or interested in using
  such vocabulary.</span></hint>

***Keyboard:***
- 🟢 spelling by keys
  <hint><span>Most AAC apps provide some kind of mechanism
  whereby people can spell out words that aren't included in
  the default vocabulary.</span></hint>
- ✅ word prediction
  <hint><span>In addition to saving time, having word prediction
  in any in-app keyboards can provide literacy instruction for
  those who are still learning to type or spell.</span></hint>
- ⭐ punctuation keys
  <hint><span>Some AAC apps provide a full alphabet for the person
  to spell wit, but forget to include punctuation. A spacebar
  allows the person to spell more than one word at a time (and also
  makes for a convenient way to "accept" a word as complete without
  ending a sentence). Other punctuation like commas, periods, etc. 
  help with crafting grammatically-complete statements. In many
  apps when the user select a sentence-ending punctionuation,
  the app automatically speaks the full sentence that was just completed.
  So if there were two sentence in the sentence box, it wouldn't
  speak the whole sentence box, just the second sentence.</span></hint>
- ⭐ capitalization
  <hint><span>Capitalization is another feature that is sometimes
  neglected even in apps with keyboards. Being able to capitalize
  (at least on the keyboard, but ideally for all words in the 
  vocabulary as well) can help the person craft more
  grammatically-correct statements.</span></hint>
- ⭐ personalized word prediction results
  <hint><span>As a user spends more time in the app, either spelling
  or using other buttons, the app has the opportunity to generate
  a personal word prediction model. This is especially useful for
  specialized vocabulary that the person uses regularly without adding 
  a specific button for it.</span></hint>
- ⭐ read last sentence on punctuation end
  <hint><span>In many
  apps when the user select a sentence-ending punctionuation,
  the app automatically speaks the full sentence that was just completed.
  So if there were two sentence in the sentence box, it wouldn't
  speak the whole sentence box, just the second sentence.
  </span></hint>
- 💡 option to use native on-screen keyboard
  <hint><span>If an app provides a specialized keyboard, it is
  useful to allow users to opt instead to use the device-native 
  keyboard, as some users prefer these keyboards.</span></hint>
- 💡 audio output options (phonics sounds of each letter vs. saying letter name)
  <hint><span>When spelling words, there are different options for
  audio feedback that can be applied: speaking the name of the letter
  as it is typed, speaking the partially-spelled word as it currently
  sounds, or speaking the phonetic sound that the letter typically makes.
  The third option, phonic sounds, is probably the most challenging
  to implement, but is preferred by some groups as it can best aid
  in literacy instruction.</span></hint>
- 💜 swipe spelling
  <hint><span>Some on-screen keyboards now have a swipe-based
  interface to make it faster to spell words. This can be useful
  for AAC users as well. Because of the slower process for
  scanning, eye-gaze or head-tracking, keyboard
  interfaces with swipe-style features for these 
  types of users would be of
  particular value.</span></hint>

***Voice:***
- 🟢 standard TTS
  <hint><span>Having speech output, either as audio clips
  or synthesized speech, is an expected feature for any
  app-based AAC system. Synthesized speech will sound
  less jarring that combining audio clips, and most
  operating systems now include some built-in TTS libraries.
  </span></hint>
- ✅ playback recorded audio
  <hint><span>Even with synthesized speech, there are 
  times when playing pre-recorded audio such as
  sound bytes, songs, etc. can be a meaningful
  communication tool.</span></hint>
- ✅ premium voices
  <hint><span>Some companies provide premium synthesized
  voices which offer more language choices in more languages.
  Keep in mind that if you are implementing a cloud-based offering
  (Google, Amazon Polly, etc.),
  you will need some kind of fallback for when the person isn't
  in a location with a clear data signal.</span></hint>
- ⭐ alternate scanning voice
  <hint><span>When users enable scanning-based selection or
  auditory fishing, it can be difficult to tell what a user is 
  selecting vs. what they're reading read to them. It can be useful
  if there is a distinction in voice style, volume, output, etc.
  to help separate prompts from words the person has actually
  selected.</span></hint>
- ⭐ alternate audio fishing voice
  <hint><span>When users enable scanning-based selection or
  auditory fishing, it can be difficult to tell what a user is 
  selecting vs. what they're reading read to them. It can be useful
  if there is a distinction in voice style, volume, output, etc.
  to help separate prompts from words the person has actually
  selected.</span></hint>
- ⭐ adjust rate, pitch, volume for TTS
  <hint><span>Even with a variety of synthesized voices, it can
  be hard to perfectly match a user's actual or preferred
  voice sound. Being able to adjust things like rate, pitch
  or volume, can help better match synthesized voices to the
  person's preferencs.</span></hint>
- ⭐ child voices
  <hint><span>Some premium voice libraries also include
  child or youth voices. This can help younger people feel
  more comfortable using AAC because it sounds closer to their
  natural speech or to the speech of their peers.</span></hint>
- 💡 message banking
  <hint><span>Some people come to AAC later in life, when they
  are beginning to lose their natural speech for various
  reasons. When a person has speech but it is limited or may
  not persist, people can record a collection of sound bytes
  that they will be able to use going forward even if their
  natural voice fails. While keeping this collection doesn't
  require AAC app support, having built-in tools to make this
  process easier, or to make it easier to batch-import
  collections of audio files, can make an AAC app more appealing
  to people in this category.</span></hint>
- 💡 voice banking
  <hint><span>A step up from message banking, voice banking is
  a system that allows the user to record their own speech and use
  that material to generate a synthesized voice based on their
  unique voice print. There are a few companies who offer
  voice banking features.</span></hint>
- 💜 gender neutral voices
  <hint><span>Many synthesized voices are strongly gendered
  by intention, to make male/female voices more obvious, but
  for some users having a more gender neutral voice would
  be preferred.</span></hint>
- 💜 quick switch between voices
  <hint><span></span></hint>
- 💜 different output target for prompts vs. speaking
  <hint><span>When using scanning or auditory fishing, and
  additional, very useful, feature is the option to output audio
  to different targets. That way the prompts a person hears when
  listening for their intended selection can be read quietly to
  a headphone, but then when the user selects an option or hits
  the sentence box, then the output can be sent through the 
  device's speaker instead.</span></hint>

***Language & Inflections:***
- ⭐ support for multiple languages
  <hint><span>Many apps start in a specific language, and only later
  add support for other languages or locales. This is a fine approach,
  but you may find demand for additional languages showing up sooner
  than you think, as many societies are now multi-lingual. It makes
  sense to at the very least prepare your app for multiple languages
  so that supporthing them in the future will not be such
  an enormous undertaking.</span></hint>
- 💡 multiple languages on same board
  <hint><span>Many AAC users find themselves exposed to different
  languages at different times (Spanish at home, English at school,
  for example), so having a vocabulary that contains both 
  language sets can make it easier for the person to speak in 
  both settings without having to learn two different layouts.
  </span></hint>
- 💡 switch between languages
  <hint><span>Once a vocabulary supports multiple languages, it
  makes sense to be able to switch between them without too
  much effort. Additionally, some apps have the option to show
  the text for both languages at the same time, allow for better
  translation when there are language barriers.</span></hint>
- 💡 option to bring up inflections/variants
  <hint><span>This is often implemented as a long-press option.
  Many AAC vocabularies do not show all inflections, tenses, etc.
  by default, sometimes considering grammatical rules less 
  important than just getting the basic intent across. One way
  to support both beginning communicators and more advances ones
  is to support more advanced grammar using popups or extra menus.
  It can also be useful to allow the person to override or create
  their own inflections, as they can use this feature as an
  extensible way to create personalized shortcuts.
  </span></hint>
- 💡 automatic grammatical tenses
  <hint><span>In addition to supporting inflections, if an app
  has enough of a lanugage model included, then it can make automated
  suggestions for grammatical tenses. Keep in mind that this always
  sounds more straightforward than it actually is, there are plenty
  of edge cases to keep in mind.</span></hint>
- 💜 buttons that apply inflections to the next-selected button
  <hint><span>One use case that is sometimes requested is a
  pre-inflection option. Rather than a long-press or popup menu
  to apply an inflection, the user can select a specialized button
  that then applies a grammatical rule to the next-selected button.
  This can be easier for some users, and makes more
  sense in some languages than others.</span></hint>
- 💜 native speakers review boards for each language
  <hint><span>This isn't a feature per se, but please keep in
  mind that if you are going to offer pre-translated vocabularies,
  you should collaborate with a language expert before doing so.
  Google Translate is fine for some things, but not sufficient
  for translating an AAC vocabulary.
  </span></hint>


***Extras:***
- 🟢 works even when offline (images, links, audio output)
  <hint><span>AAC users will expect to use their device in all
  settings, not just those with a clear wifi signal.</span></hint>
- ✅ copy plaintext to clipboard
  <hint><span>People often craft sentences or phrases within
  their AAC app, which they then want to copy so they can paste it
  into another tool or interface.</span></hint>
- ✅ data logging
  <hint><span>As people are learning to use AAC, it can be very
  valuable to track trends in their communication to help with
  progress tracking, setting goals, etc. Some apps offer single-session
  tracking, and some offer tracking across all sessions. Note that
  this option should be user-configurable, and should require
  AAC user consent before being activated.</span></hint>
- ⭐ easily-reachable "alert" button
  <hint><span>People can benefit from having quick, constant access
  to an attention-getting tool like an alert button or sound.
  </span></hint>
- ⭐ shortcut for current day/month/etc. in spoken content
  <hint><span>If someone wants to say "Today is March 3" or
  "Today is Friday" then they may want to program these 
  phrases onto specific buttons, but constantly updating
  them to keep the phrase accurate would be untenable, so some
  apps offer shortcuts that can be replaced in real-time
  by the AAC system.</span></hint>
- ⭐ navigation sidebar
  <hint><span>Some apps have a navigation sidebar where helper
  methods or interfaces can be configured to be readily available
  regardless of where the user has currently navigated within
  the interface.</span></hint>
- ⭐ find a button
  <hint><span>When people are learning a new vocabulary, or trying
  to teach someone a new vocabulary, they often don't know where words
  are located yet. Many apps offer a "find a button"-style interface
  to help people know what words are available. Additionally, some
  apps also allow you to select a search result and get visual
  indicators of how to navigate to the desired button.</span></hint>
- ⭐ print vocabulary to pdf
  <hint><span>Sometimes people find themselves in a place where a 
  computer isn't ideal (think, swimming pool), or they want to
  have a paper-based backup in case of technical issues. Being
  able to export the vocabulary to a printable format like
  a pdf (preferably with page numbers for linked buttons) gives
  the person more freedom.</span></hint>
- 💡 import and export obf/obz
  <hint><span>There is a brand-agnostic file format for
  AAC vocabularies called the <a href="https://www.openboardformat.org">Open Board Format</a> which can be used to import
  public vocabularies, or export for transfer from one AAC
  product to another.</span></hint>
- 💡 shared reading resources
  <hint><span></span></hint>
- 💡 "show me how to get there" for find-a-button
  <hint><span></span></hint>
- 💡 easily-reachable "oops" button
  <hint><span></span></hint>
- 💡 remote editing
  <hint><span>Some users are very protective of their AAC systems,
  and they may be reluctant or even hostile to the idea of someone
  else touching their system. Additionally, therapists may not have time
  to make changes during a therapy session. Without an option to edit
  vocabulary remotely, the only alternative would be to take the
  AAC user's device away from them in order to make changes.
  </span></hint>
- 💡 remote tracking/control
  <hint><span>With a web connection, it's possible for an AAC user's
  screen to be monitored or even directed remotely. In an AAC system,
  that could include visual prompts or hints that can be triggered
  remotely. If you decide to implement a feature like this, please
  be sure to consider user privacy and autonomy. Remote control
  of a user's communication system should at the very least be opt-in.
  </span></hint>
- 💡 environmental control
  <hint><span>Some older devices included an IR emitter that
  could be used to communicate with environmental control and 
  home automation systems. System AAC apps can accomplish similar
  features using web-based integrations.</span></hint>
- 💡 spinner/dice to use in spoken content
  <hint><span>Some apps have specialized actions like choosing
  a random number. This can be useful for users who, for example, 
  want to participate in games but can't roll dice or spin 
  a wheel on their own.</span></hint>
- 💡 abbreviation auto-expansion
  <hint><span>Some users can benefit from custom shortcut
  combinations to more easily generate longer or more specialized
  words or phrases.</span></hint>
- 💡 auto-contractions
  <hint><span>English contractions are much more natural-sounding,
  so some apps automatically generate them ("are" "not" to "aren't").
  </span></hint>
- 💡 sentence repairs
  <hint><span>Being able to "repair" a sentence is valuable for
  many AAC users. Examples of repairs could be: reordering the
  words in the sentence box after they are entered, manually typing
  or inserting words within the sentence, etc.
  </span></hint>
- 💜 launch extra tools (calculator, whiteboard, video player, etc.)
  <hint><span>Some apps include extra tools that can be useful
  for specific contexts.</span></hint>
- 💜 "show me how" for a user-inputted phrase
  <hint><span>Similar to "find a button", some apps allow users to enter
  a whole phrase instead of just a single word, and then have
  visual indicators which guide them through the process of crafting
  the entire phrase. This can help, especially with families who are
  trying to learn a complicated vocabulary so they can model
  it for their developing AAC user.</span></hint>
- 💜 cross-platform support
  <hint><span>Most new AAC apps start with iOS-only. Many insurance-funded
  devices are Windows-only. However, many families rely on Android because
  it is more affordable. Supporting users on the devices they already
  have helps cut down on costs and improves adoption of AAC.</span></hint>
- 💜 sync content across devices
  <hint><span>Whether automatic or manual, syncing still isn't
  the norm for AAC, many apps consider themselves on-device.
  This obviously leads to issues with data loss due to hardware failure,
  but it also means that if a device's battery dies, there is no
  option but to wait for it to charge, you can't quickly switch to
  another device with everything intact, unless syncing is an option.
  </span></hint>
- 💜 battery left indicator
  <hint><span>Some visual indication (and possibly audio tones) of
  how much battery is left on the device. The AAC user will not
  necessary have access to the OS taskbar and be able to see 
  information like this unless it is shown inside the app. Some
  apps show this as a small fill bar in the sentence box when
  it is empty, for example.</span></hint>
- 💜 launch third-party tools
  <hint><span>OpenAAC has a library, aac_shim, which is
  an example of this. Basically a way for third parties to offer
  interfaces that can be rendered inside of your AAC system.
  Some AAC users will not be able to run other programs other
  than their AAC app for differring reasons, and giving them the
  option to still access other resources, would be a huge boon.
  However, expecting every AAC vendor to re-create every
  possible integration is not tenable.</span></hint>
- 💜 act as keyboard for other apps
  <hint><span>I've heard this requested on Windows devices,
  or through a remote connection (eg. Bluetooth) for the AAC
  app to operate essentially as a keyboard by sending system
  events that could then be used in arbitrary apps.</span></hint>

<h3>Other Considerations:</h3>

If people adopt your program, many of them will be using it as an 
integral part of their daily life. Some of your users may have motor 
or visual impairments which would make it hard to adjust to 
unexpected changes in your program, so please ensure you have a 
gradual, backwards-compatible upgrade path as you continue 
development. Additionally, please don’t enter the market unless 
you have a long-term plan to support users. There are people who 
hunt for 10+-year-old devices on eBay so that they can keep using 
the communication tool that works best for them. With iOS and 
Android it can be a lot more complicated to keep using outdated 
software (when Apple drops support for an old OS version, it 
often leaves users of older AAC apps in a terrible situation), so 
please keep in mind the disruption that abandoning your app would 
have on its users.

Please do a lot of beta testing. Many AAC apps are created 
initially to cater to a specific user or disability group, which 
is a perfectly fine starting place, but you should find beta users 
who can give you feedback based on their personal experience. 
Many groups are reluctant to adopt a new app until it has proved 
of value, or that it will be around for more than a year or two. 
The AAC market is much smaller than more mainstream markets, 
which is why these apps tend to be more expensive. They will have 
a user count disadvantage to begin with, so make sure you have something 
compelling to offer.

<!-- TODO: note about telling people if TTS is synthesized on-device or not, and why they'd care>
<!-- TODO:
  - ios app
  - web photo search
  - repairs
  - prompt through headphones, speak through speaker
  - send audio through phone call
  - super keys (group of keys to pop up when any are selected)
  - "oops" button TODO: add to repairs in sentence menu (phrases?)
  - play music
  - make a copy of a vocabulary
  - custom button shape
  - fishing on hover
  - font face customization
  - abbreviation expansion
-->
<script>
  document.addEventListener('click', function(event) {
    var li = event.target.closest('li')
    if(li) {
      var hint = li.querySelector('hint');
      if(hint) {
        if(hint.classList.contains('toggled')) {
          hint.classList.remove('toggled');
        } else {
          hint.classList.add('toggled');
        }
      }
    } else if(event.target.id == 'expand') {
      if(event.target.classList.contains('collapse')) {
        event.target.classList.remove('collapse');
        event.target.innerText = 'Expand All';
        document.querySelectorAll('.inner ul li hint').forEach(function(li) { li.classList.remove('toggled'); });
      } else {
        event.target.classList.add('collapse');
        event.target.innerText = 'Collapse All';
        document.querySelectorAll('.inner ul li hint').forEach(function(li) { li.classList.add('toggled'); });
      }
    }
  })
</script>