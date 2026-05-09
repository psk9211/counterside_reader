# Project Roadmap

Working with **Counter:Side** involves a massive amount of "under-the-hood" effort—decryption and library management often represent the bulk of the work before a single game element is even visible. Figuring out how to render character sprites alone was a huge undertaking. So, naturally, there are limits to this project.  

### Changelog
Apr 25, 2026
- Initial release: text + character sprites only.  

Apr 26, 2026
- UX tweaks: "Next Scene" button.
- Stage improvements: better character scaling, fix characters appearing twice.

Apr 27, 2026
- StoryBrowser: add descriptions, localize StoryBrowser.
- UX tweaks: better arrow navigation in Story.
- Character rendering: fix broken transitions between animations.

Apr 28, 2026
- Add character viewer ("Spine Viewer").
- StoryBrowser: add search bar, localize Lifetime Contract & CounterCase names.

Apr 29, 2026
- Fix: truncated cutscenes.
- UX tweaks: prefix cutscenes with an index # in dropdown, bold dialog.

Apr 30, 2026
- Add static backgrounds.
- Add background music.
- Add Ep 15 spine models.
- Fix: script parsing for multi-line text.

May 1, 2026
- UX tweaks: filter out empty scenes, fullscreen toggle, End of Chapter shortcut.

May 2, 2026
- Stage improvements: use "ONLY_UNIT" skin for characters, improve character zoom.
- StoryLog improvements: move the active cell to 70%, tint neighbors to the active cell.
- Fix: LSY npc renders as LSY OP.

May 3, 2026
- Fix: teleporting LSY, blank Carmen/Noelle, 
- Compress backgrounds.
- Stage improvements: implement hologram effect.
- Fix: character->model mapping for inconsistent IDs.

May 4, 2026
- Implement stage select "poems".

May 5, 2026
- Add emotes to Spine Viewer.
- Add 'export .webm' to Spine Viewer (desktop only).

May 6, 2026
- Android release + portrait mode.
- Persistence (e.g. rememeber what chapter you were on).

May 7, 2026
- Stage: Improve character rendering via pre-rendered face detection.
- Add ultimate cut-ins to Spine Viewer.
- Add English MTL for untranslated CounterCases.

May 8, 2026
- Add animated backgrounds to Ep. 1.
- Localize more skin names.
- Manually fix Shepherd's Spine animation.

### Future

You should think of the project being mostly done, with only bugfixes on the horizon.  
I saw some requests for dubbing/sound effects, which would be cool, but I can't do that without dropping Android support (the max APK size is 4gb and we're at 3.7gb).  
Initially, I thought of open sourcing the project, but it's kind of incomprehensible without all the supporting scripts. Many of which are riddled with filepaths, API keys or otherwise NSFL.  
For anyone that wanted to mess with Counter:Side's innards, I have released the [.lua decryption script](https://gist.github.com/myrhhcaiah/ce200e7f88e60ef957e41335262b36fb).  
