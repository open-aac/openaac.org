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
</style>
AAC Systems are very diverse, they range from paper-based to highly-customizable dynamic dedicated electronic devices. As developers begin working on new dynamic AAC systems such as web-based or tablet-based AAC, they often start from a specific use case or viewpoint.

Once developers being to see adoption of their product, they often begin to discover use cases that fit outside of their original expectation. This is fine, and the way products typically grow, but we have seen many products that suffered because their original scope did not anticipate needing to grow in certain directions.

As developers, it is usually beneficial to understand long-term potential use cases during initial development. This functionality list is meant as a tool to help AAC app developers get an appreciation for the typical scope of AAC, so that they can architect a more robust solution from the get-go instead of having to re-architect it later. If you have suggestions or questions about this list, please let us know in our Slack channel and we would be happy to discuss them with you.

<div style='border: 1px solid #ccc; border-radius: 10px; padding: 10px 30px; max-width: 400px; margin-bottom: 30px;'>

<strong>Feature Key:</strong>
  <ul style='margin-bottom: 10px;'>
    <li>🟢 Standard Across Apps</li>
    <li>✅ Most Apps Have</li>
    <li>🟨 Top Apps Have</li>
    <li>🐝 Commonly Requested</li>
    <li>💜 Specialization</li>
  </ul>
</div>

***Display:***
- 🟢 words and symbols
- 🟢 grid layout
- 🟢 links to other boards
- 🟢 say something different than button text
- ✅ symbols only option
- ✅ words only option
- ✅ text on top/bottom
- 🟨 skin tone selection for symbols with people
- 🐝 animation on select
- 🐝 non-grid layout
- 💜 visual scenes

***Access:***
- 🟢 touch
  - 🟢 select from touch-start
  - 🟢 select from touch-release
  - 🟨 hold to select
  - 🟨 user-defined hold duration
  - 💜 fixed selection (explicit keyboard map)
- 🟨 scanning
  - 🟨 row scanning
  - 🟨 column scanning
  - 🟨 accept on select
  - 🟨 accept on release
  - 🟨 accept on no-click
  - 🐝 region scanning
  - 💜 axis/crosshair scanning
  - 💜 region drilldown
  - 💜 double/triple tap/hold to change action
- 🐝 mouse control
  - 🟢 click to select
  - 🐝 dwell to select
  - 🐝 double click for special action
  - 🐝 right click for special action
  - 💜 custom cursor
- 🐝 eye gaze/head control/joystick
  - 🐝 keyboard to select
  - 🐝 button press to select
  - 🐝 dwell to select
  - 🐝 head as joystick vs head as pointer
  - 🐝 pause tracking
  - 🐝 expression to select
    - 🐝 blink
    - 🐝 tongue
    - 🐝 nod
    - 🐝 smile
    - 🐝 eyebrows
- ✅ adaptations
  - ✅ debounce (prevent multiple hits)
  - 🐝 auditory fishing
  - 💜 digital zoom

***Sentence Box:***
- 🟢 clear button
- 🟢 tap to speak sentence
- 🟢 backspace button
- ✅ clear on select
- ✅ quick access phrases
- 🟨 option to include images
- 🟨 saved phrases
- 🟨 hold that thought
- 🟨 repeat louder
- 🟨 share sentence externally
- 🐝 flip text to show someone else
- 💜 show on secondary display

***Vocabulary:***
- 🟢 places for personalized words
- 🟢 pre-populated vocabularies
- ✅ core words in pre-populated vocabularies
- ✅ category-based layout option
- ✅ multiple grid sizes pre-built
- 🟨 motor planning-based layout option
- 🟨 option to auto-return to home board
- 🐝 semantic compaction functionality (patented)
- 🐝 adult topics

***Keyboard:***
- 🟢 spelling by keys
- ✅ word prediction
- 🟨 punctuation keys
- 🟨 capitalization
- 🟨 personalized word prediction results
- 🟨 read last sentence on punctuation end
- 💜 swipe spelling

***Voice:***
- 🟢 standard TTS
- ✅ playback recorded audio
- ✅ premium voices
- 🟨 alternate scanning voice
- 🟨 alternate audio fishing voice
- 🟨 adjust rate, pitch, volume for TTS
- 🟨 acapela voices
- 🐝 message banking
- 🐝 voice banking
- 💜 ivona/polly

***Language & Inflections:***
- 🟨 support for multiple languages
- 🐝 multiple languages on same board
- 🐝 switch between languages
- 🐝 long-press to bring up inflections/variants
- 🐝 automatic grammatical tenses
- 💜 buttons that apply inflections to the next-selected button

***Customization:***
- 🟢 upload symbols
- 🟢 rearrange layout
- 🟢 add new buttons
- ✅ upload sounds
- ✅ add/remove rows/columns
- ✅ custom grid size
- 🟨 easily switch symbol sets
- 🐝 launch third-party tools

***Extras:***
- 🟢 works even when offline (images, links, audio output)
- ✅ copy plaintext to clipboard
- ✅ data logging
- 🟨 shortcut for current day/month/etc. in spoken content
- 🟨 navigation sidebar
- 🟨 find a button
- 🐝 remote editing
- 🐝 remote tracking/control
- 🐝 environmental control
- 🐝 spinner/dice to use in spoken content
- 🐝 abbreviation auto-expansion
- 🐝 auto-contractions
- 💜 act as keyboard for other apps

