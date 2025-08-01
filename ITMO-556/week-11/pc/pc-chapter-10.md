# Podcast Questions - Chapter 10

View the presentation by FreeBSD developer Benno Rice from BSDCan 2018 at [https://www.youtube.com/watch?v=6AeWu1fZ7bY](https://www.youtube.com/watch?v=6AeWu1fZ7bY "Benno Rice - The tragedy of Systemd") and answer the following questions:

1. ~1:00 Who is Benno Rice?
* Benno Rice is a software developer and speaker known for his contributions to the BSD (Berkeley Software Distribution) operating systems. He has been actively involved in the open-source community and has given talks on various topics related to system administration and software development. 

2. ~1:31 What is Contempt Culture?
* "Contempt Culture," mentioned in the video, appears to be connected to Oren Shaw's work "Content Culture." Regretfully, there isn't much in-depth information about contempt culture in the video. It could be a phrase or idea used to characterize a bad characteristic of some online communities where people show disrespect or contempt for other communities or technological advancements. 

3. ~3:21 What is inits job?
* It is mentioned in the video that init's responsibility in UNIX is to launch userspace. It creates processes for every typewriter, reads TTY wires, and initiates processes. Basically, init's job is to initialize the system and get it ready for user programs to execute on. It is one of the initial operations the system launches and is essential to both system upkeep and starting.

4. ~6:11 What led to the concept of a service?
* According to the video, when the internet and big apps started to appear, the idea of a service changed. These apps served data across the network. The idea of a daemon evolved into the more general concept of a service when computers began to host databases, caches, and different types of web services. These days, a service could consist of several procedures and other services collaborating to accomplish a particular objective. These networked apps brought complexity, which increased the demand for a more reliable service management system.

5. ~8:35 What does the traditional rc system not do?
* As in the video, automated service management is a challenge for the classic rc system. The classic rc system lacks built-in techniques for automatically restarting services that may have stopped or failed, in contrast to some contemporary systems like systemd. Although external tools like as supervisord or runit can be incorporated for automated service management, restarting services frequently requires user intervention due to the default behavior of older RC systems.

6. ~9:27 What OS had a strong initial concept of services from the beginning?
* According to the video, Windows has a solid foundational understanding of services from the start. Since Windows has always had a clear definition of a service, programmers can create services that are controlled by the operating system. The idea of controlling services as separate entities has been a crucial feature of the Windows operating system architecture, but it has also given rise to some security challenges.

7. ~10:00 On MacOS what did launchd replace?
* It is mentioned in the video that launchd took the place of several different event handling daemons on MacOS. Launchd is a daemon for system and service management that synchronizes the beginning and ending of system processes. It assumed the duties of multiple other daemons, streamlining and centralizing the way macOS manages a number of different events, including socket connections, time-based events, and system boot.

8. ~11:53 In 2010 What was Lennart Poettering looking at?
* The video claims that Lennart Poettering was investigating Linux service management around 2010. He was looking at alternatives that were already in place, including Canonical's Upstart, which used conventional shell scripts but was event-driven. Poettering believed that the functions included in the current systems were lacking, and they did not offer enough possibilities for dependency ordering. The creation of systemd was ultimately prompted by this investigation.

9. ~13:48 What other service did Lennart say he was heavily borrowing from?
* Lennart Poettering stated in the video that he was drawing a lot of inspiration from launchd. The creation of systemd's approach to controlling services and events on the system was influenced by launchd, which is the system and service management daemon used in macOS.

10. ~14:01 What does Lennart say that systemd is about?
* The creator of systemd, Lennart Poettering, defines systemd as being about system administration in the video. He highlights how, in contrast to traditional UNIX systems, contemporary systems must be responsive to their surroundings. According to Poettering, systemd is a system layer that looks after services, monitors changes in hardware and software, and offers a cutting-edge, dynamic method of controlling different parts of the system.

11. ~14:43 What is the layer in-between the kernel and the userspace created by systemd?
* The "system layer" is the term used in the video to describe the layer that systemd creates between the kernel and userspace. This idea is brought forward by Lennart Poettering, who proposes that systemd creates a system layer for Linux by integrating code that controls a number of system operations, including device management, network connectivity, and time. This system layer acts as a bridge between the kernel and conventional userspace, handling tasks that are necessary for system management but don't technically belong in either.

12. ~17:11 Does systemd violate the UNIX philosophy?
* The question of whether systemd goes against the UNIX ideology is discussed in the video. The speaker makes the argument that although systemd as a project has many moving parts, systemd as a daemon concentrates on responding to events and initiating processes quickly. This may not go against the UNIX tenet of having programs that specialize in one task. Regarding systemd's inclusion of protective functionality in the project, there may be some disagreement. Depending on one's viewpoint and understanding of the UNIX philosophy, it can be difficult to determine whether systemd contradicts it.

13. ~20:33 What does Benno think is incredible about what Lennart accomplished?
* Benno Rice notes in the video that Lennart Poettering, the creator of systemd, is amazing in his ability to put ideas forth forcefully, carry them out, and deliver them successfully—even in the face of initial resistance or doubt. Benno thinks it great that Lennart Poettering introduced systemd in the face of resistance and criticism, and that it was subsequently widely adopted in several large Linux distributions. The achievement is a result of his unwavering commitment to advocating for change and seeing it through to completion.

14. ~25:26 Why is using systemd as a recruiting tool for BSD (which doesn't have it) a bad idea?
* Benno Rice states in the video that he believes it is a bad idea to use systemd as a recruiting tool for BSD, considering systemd is not present there. He thinks that instead of making fun of systemd and drawing bad comparisons with it, we should try to figure out why the Linux community choose systemd in the first place and what advantages they see with it. It may draw people who have a disdainful attitude if systemd is used as a negative recruiting tactic. Benno says it's preferable to promote curiosity and awareness of various technologies and systems.

15. ~28:20 What are a few features that BSD could gain from systemd?
* Benno Rice proposes a number of characteristics that systemd or related approaches might bring to BSD:
    * First-Class Message Transport
    * RPC Framework
    * Automated Service Management
    * Containers
    * Device Naming
    * Binary Logging
    * Rich Application Architecture    

  These recommendations point to possible places where specific features from systemd or comparable technologies could be adopted or tailored for use in BSD systems.

16. ~28:20 Why can't BSD run containers?
* It's not stated clearly by Benno Rice that BSD is unable to operate containers. Rather, he highlights the necessity of focusing more on how to make containers function on BSD systems. The goal is to investigate and enhance BSD's container support, either by implementing other containerization strategies or by improving already-existing technologies like jails. The focus is on figuring out how to improve the usability and efficiency of containers inside the BSD ecosystem.

