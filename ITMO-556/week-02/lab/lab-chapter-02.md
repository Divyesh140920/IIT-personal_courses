# Chapter 02 Labs

## Activity 1

## AirBNB
![Airbnb](../Images/airbnb.png)
* Is AirBNB an Open source?
  * Yes, Airbnb's Airflow is an open-source project. Airflow is a platform to programmatically author, schedule, and monitor workflows, which can be used for tasks such as data pipelines, data migration, and workflow automation. It was originally developed by Airbnb and later open-sourced for the broader community to use and contribute to. You can find the Airflow project on GitHub, where it's actively maintained and developed by a community of contributors.

* What market does that company serve? (What do they do?) And have they always served that market?
  * The company Airbnb serves the market of short-term vacation rentals and lodging. Airbnb provides a platform where individuals (hosts) can rent out their properties or spare rooms to travelers (guests) looking for temporary accommodations. This includes a wide range of properties such as apartments, houses, vacation homes, and even unique and unconventional accommodations.

    Airbnb started primarily as a platform for renting out spare rooms or couches in people's homes, targeting budget-conscious travelers looking for unique and affordable lodging options. However, over the years, Airbnb has evolved and expanded its services to cater to a broader market.

    Airbnb now serves a diverse range of travelers, including those seeking budget-friendly options, luxury accommodations, extended stays, business travelers, and more. They have also ventured into other markets, such as experiences and activities, where hosts can offer unique local experiences to guests.

    So, while Airbnb initially focused on a niche market of budget-conscious travelers, they have since expanded their services to serve a much wider and diverse audience, making it a significant player in the global vacation rental and travel industry.
* What Operating System(s) are used?
  * Airbnb primarily used a combination of operating systems for its various infrastructure components. Keep in mind that technology choices can evolve over time, so it's possible that they have made updates or changes since then. However, here is a general overview of the operating systems that were commonly used in Airbnb's technology stack:

    Linux: Linux-based operating systems, particularly Ubuntu and CentOS, were commonly used for Airbnb's server infrastructure. Linux is known for its stability, security, and scalability, making it a popular choice for web servers and backend systems.

    macOS: macOS-based systems were often used by developers and designers at Airbnb, especially for developing and testing applications targeting macOS and iOS platforms. macOS provides a Unix-based development environment.

    Windows: While less common in the server infrastructure, Windows-based systems might have been used for specific purposes, such as running Windows-based applications or services that were integrated into Airbnb's operations.

    Container Orchestration: Airbnb might have employed container orchestration platforms like Docker and Kubernetes to manage and deploy applications and services across various operating systems.

    Mobile Devices: For their mobile applications, Airbnb would have used the respective operating systems of the target platforms, which include iOS (Apple) and Android (Linux-based).

  * Airbnb uses a combination of Presto, Druid, and Airpal to manage its big data management needs. The platform possesses a tremendous volume of user data, so they use various technologies to store, process, analyse, and manage it.
  
* What programming languages/frameworks are used?
  * Airbnb used a variety of programming languages and frameworks across its technology stack, including:

    1. JavaScript and Node.js
    2. Ruby on Rails
    3. Java
    4. Python
    5. React
    6. Swift and Objective-C (for iOS)
    7. Kotlin (for Android)
    8. Scala
    9. GraphQL
    10. Apache Kafka
    11. Redux

    These languages and frameworks were used for various purposes, including web and mobile application development, backend services, data analysis, and more.
* What storage and what database technologies are used?
  * some of the storage and database technologies that were commonly used by Airbnb:

    Storage Technologies:

     1. Amazon S3: Airbnb used Amazon Simple Storage Service (S3) for storing and serving static assets, media files, and other large objects. S3 is known for its scalability and durability.

     2. Hadoop HDFS: For big data storage and processing, Airbnb likely used Hadoop's Hadoop Distributed File System (HDFS) to manage and store large volumes of data.

     3. Cassandra: Cassandra is a NoSQL database that provides high availability and scalability. Airbnb used Cassandra for certain data storage and retrieval needs.

     4. Redis: Airbnb used Redis as an in-memory data store and cache. Redis is known for its fast read and write operations and is often used for caching frequently accessed data.

     5. Elasticsearch: For search and indexing capabilities, Airbnb used Elasticsearch, which is a powerful search and analytics engine.

    Database Technologies:

     1. MySQL: MySQL is a popular open-source relational database management system (RDBMS). Airbnb used MySQL for some of its relational database needs, such as user data and transactions.

     2. PostgreSQL: PostgreSQL is another open-source RDBMS that Airbnb may have used for specific data storage and retrieval requirements.

     3. Amazon Aurora: Amazon Aurora is a cloud-native relational database service offered by AWS. Airbnb may have used Aurora for high-performance and scalable database needs.

     4. Apache Kafka: While primarily used for event streaming, Apache Kafka can also serve as a distributed data storage system. Airbnb employed Kafka for real-time data processing and storage.

* What Opensource license is the technology stack licensed under?
  * Products in Airbnb’s tech stack include: Akamai, Amazon (CloudSearch, ElastiCache, RDS, Web Services, EC2, EBS), Android Wear SDK, AWS Lambda, Babel, Bootstrap, Bugsnag, Button, Clion, Datadog, Digicert, Driven, eNom Domain Registration, Folio, GitHub, Google (Cloud Messaging, Maps), HackerOne, Intelligent Platform, jQuery, Lightbend Reactive Platform, Librato, New Relic, nginx, PagerDuty, Phusion Passenger, Ruby on Rails, Sakurity, Sentry, Solano CI, Twilio, UserTesting, WordPress, Zencoder, and Zerigo DNS.

      Additionally, here’s a list of other software products that Airbnb is using internally:

      * Marketing: Campaign Monitor, Criteo, Dragon Metrics, Embedly
      * Sales and Support: Directly, Guru, Opentest, Streak,
      * Product and Design: Asana, Freedcamp, Google Fonts, Invision
      * Analytics: Apache Hadoop, Concurrent, Droplr, Heap
      * HR: Cloudpeeps, Culture Amp, HackerRank, Piazza
      * Finance and Accounting: Braintree Payments, FundersClub, Payoneer, PayPal
      * Productivity: Do, Envoy, EventBoard, HackPad
* What is the current stock price and what was the IPO of the company? (if traded publicly.)
  * Airbnb's initial public offering (IPO) price was $68 per share, which valued the company at $47 billion. The company sold 51 million shares, raising $3.5 billion. 
    
    Airbnb's stock opened at $146 per share, which was 114.7% above the IPO price. The stock reached a high of $165 per share before closing at $144.71. 
    
    As of September 1, 2023, Airbnb's stock price is $132.69 per share. According to a long-term forecast, Airbnb's stock price will reach $150 by the end of 2023 and $200 by the middle of 2025. 

* What major obstacle (cost, system performance, QPS, etc, etc) was the company trying to overcome by implementing this technology stack?
  * Airbnb faced several major obstacles related to system performance, scalability, and reliability, which led them to implement their technology stack. Some of the key challenges they were trying to overcome included:

    1. Scalability: As Airbnb's platform grew, they needed a system that could handle a rapidly increasing number of users, listings, and transactions. Scaling their infrastructure to accommodate this growth was a major challenge.

    2. Complex Data Processing: Airbnb deals with a large amount of data, including user profiles, property listings, and booking information. Efficiently processing and analyzing this data in real-time and batch processes was a significant obstacle.

    3. Search and Matching: Airbnb's core functionality involves matching travelers with suitable accommodations. Developing a powerful search and recommendation system that could handle millions of listings and deliver personalized results was a priority.

    4. Reliability: Providing a reliable platform for both hosts and guests was crucial. Downtime or system failures could result in a poor user experience and financial losses.

    5. Cost Efficiency: Managing costs while scaling the platform was an ongoing concern. Optimizing resource usage and ensuring cost-efficient operations were important objectives.

    6. Complex Workflows: Airbnb needed to manage complex workflows involving multiple components and services. Coordinating these workflows efficiently was challenging.

    7. User Experience: Maintaining a seamless and responsive user experience, even during peak usage periods, was essential for customer satisfaction.

    By implementing their technology stack, which included various open-source components and tools, Airbnb aimed to address these challenges and build a robust, scalable, and reliable platform that could support their growing user base and provide an exceptional user experience.
* Describe one clear point you took away from this article relating to technology and infrastructure?
  * One clear takeaway from the article about Airbnb's use of technology and infrastructure is the importance of choosing the right tools and technologies to address specific business challenges. In Airbnb's case, they adopted an array of open-source technologies and developed their own solutions to create a custom technology stack that met their unique needs.

    This approach allowed them to:

    1. Achieve Scalability: By leveraging open-source tools like Apache Kafka and Apache Storm, Airbnb was able to build a real-time data processing pipeline that could scale horizontally to handle a massive volume of data and user interactions.

    2. Enhance Data Processing: Airbnb recognized the value of data in improving its services. They invested in tools like Apache Hadoop and Presto to process and analyze data efficiently, providing insights for both hosts and guests.

    3. Optimize Search and Matching: Airbnb's custom-built search and recommendation engine, powered by Elasticsearch and other technologies, enabled them to provide personalized search results and recommendations, enhancing the user experience.

    4. Ensure Reliability: They used tools like SmartStack and Chronos to improve the reliability and availability of their services, reducing the risk of downtime.

    5. Manage Costs: Airbnb focused on cost efficiency by optimizing resource usage and utilizing open-source technologies that offered a balance between performance and cost.

    6. Streamline Workflows: The adoption of tools like Airflow helped Airbnb manage complex workflows efficiently, ensuring that tasks and processes were executed reliably and in a coordinated manner.

    Overall, the article highlights the strategic importance of technology choices in addressing the specific challenges faced by a company. By carefully selecting and integrating open-source tools into their infrastructure, Airbnb was able to create a technology stack tailored to their needs, enabling them to scale, innovate, and provide an exceptional experience for their users.

## Activity 2

They are commentaries opensource and business.

* [http://dtrace.org/blogs/bmc/2018/12/14/open-source-confronts-its-midlife-crisis/](http://dtrace.org/blogs/bmc/2018/12/14/open-source-confronts-its-midlife-crisis/ "OpenSource confronts its midlife crisis")
* [https://medium.com/\@jaykreps/a-quick-comment-on-bryan-cantrills-blog-on-licensing-8dccee41d9e6/](https://medium.com/\@jaykreps/a-quick-comment-on-bryan-cantrills-blog-on-licensing-8dccee41d9e6/ "Quick Comment on Licensing")
* [http://dtrace.org/blogs/bmc/2018/12/16/a-eula-in-foss-clothing/](http://dtrace.org/blogs/bmc/2018/12/16/a-eula-in-foss-clothing/ "A Eula in FOSS clothing")
* [https://medium.com/@adamhjk/goodbye-open-core-good-riddance-to-bad-rubbish-ae3355316494](https://medium.com/@adamhjk/goodbye-open-core-good-riddance-to-bad-rubbish-ae3355316494 "Adam Jacobs article on open core")
* [https://sfosc.org/docs/business-models/free-software-product/](https://sfosc.org/docs/business-models/free-software-product/ "Free software product")

Answer these questions with a few short sentences:

* What is Bryan Cantrill's initial main point in the first article?
  * Bryan Cantrill's initial main point in the first article is that open source is going through a midlife crisis. He draws parallels between the challenges and changes faced by individuals in midlife and the challenges and changes being experienced by the open-source software ecosystem.

  * In Bryan Cantrill's article, he asserts that open source software is currently undergoing a midlife crisis. He draws parallels between the challenges faced by open source and the experiences of individuals during midlife. Cantrill identifies several key issues within the open-source community, including conflicts with cloud service providers, the introduction of restrictive licensing, and the quest for sustainable business models.

    In my opinion, Cantrill's analogy between open source and midlife crisis is a thought-provoking way to frame the ongoing challenges within the open-source ecosystem. His points about the tensions between open source companies and cloud providers, as well as the controversial use of restrictive licenses, resonate with the current discussions in the tech industry.

    However, whether or not I fully agree with Cantrill's assessment depends on one's perspective. Some may argue that open source should prioritize its fundamental principles of openness and collaboration, even in the face of commercial pressures. Others may agree that open source needs to adapt and find sustainable business models to thrive in a changing landscape.

    In conclusion, Cantrill's article provides valuable insights into the state of open source and the challenges it faces. While I agree with some of his points, I also believe that open source's response to these challenges will be a topic of ongoing debate and discussion within the tech community.

* What is Jay Kreps response/contention in the second article?

  * Jay Kreps is responding to a blog post written by Bryan Cantrill regarding alternative software licensing schemes. Kreps offers several points in response to Cantrill's arguments:

    1. Cloud Service Providers: Kreps clarifies that companies like Confluent, Elastic, MongoDB, and CockroachDB are not attempting to license their proprietary features to public cloud providers. Instead, they run cloud services for their software. This is a response to Cantrill's concerns about cloud providers not contributing back to open source projects.

    2. Copyright Analogy: Kreps disagrees with Cantrill's analogy comparing software to physical books, emphasizing that copyright laws do not apply in the same way. He argues that the limitations in their software license are narrow and mainly affect companies offering specific services based on their software.

    3. Community and Terminology: Kreps defends the openness of their license and the vibrancy of their software's user community. He argues that they are not trying to co-opt the open source community or terminology but rather provide a permissive license.

    4. Enforceability: Kreps expresses confidence in the enforceability of their license and suggests that new standards may emerge in this area. This is in response to skepticism about the enforceability of new software licenses.

    5. Success of Open Source Companies: He counters the notion that all open source companies are failing, citing examples of successful companies like MongoDB and Elastic that have seen significant increases in value. This is a response to Cantrill's assertion that open source companies are struggling.

    6. Moralizing Cloud Providers: Kreps agrees with Cantrill that moralizing about the behavior of cloud providers is not productive. However, he believes that cloud providers' behavior affects investment in hard tech open source projects and should be addressed.

    7. Internal Internet Company Infrastructure: He disagrees with the idea that turning internal internet company infrastructure into open source projects is a panacea and highlights the challenges associated with this approach.

    8. Responsibility to Ecosystem: Kreps acknowledges that companies building around an ecosystem have a responsibility to it beyond their profit motive. He believes that commercial sponsors can positively contribute to ecosystems.

* What is the main point of Bryan Cantrill's rejoinder in the third article?

  * Bryan Cantrill's main point in his rejoinder to Adam Jacob's article is to express his disagreement with Jacob's perspective on open source business models, particularly the transition from Open Core to a Free Software Product model. Cantrill argues against the points made by Jacob and provides his own counterarguments. His main points include:

    1. Open Source Values: Cantrill emphasizes the importance of upholding the values of Free Software, where software is freely shared, collaboratively developed, and benefits a broad community. He argues that this approach creates a valuable asset and a supportive community.

    2. Open Core Model: Cantrill challenges the idea that the Open Core model, where companies provide proprietary add-ons to open source software, is fundamentally flawed. He argues that the tension between open source and proprietary offerings can coexist and create successful businesses.

    3. Value of the Product: Cantrill counters the notion that the value of a company lies solely in its proprietary differentiators. He suggests that companies can build strong communities and create value by focusing on the overall product and its quality.

    4. Community Engagement: Cantrill believes that a true open source community is one where contributors actively participate, and the resource is stewarded collectively. He contends that providing a complete product experience is a valuable contribution.

    5. Diverse Business Strategies: Cantrill acknowledges that different situations may require different business strategies, and he respects the diversity of approaches within the open source ecosystem.

* What is Adam Jacob's opinion on running a company with an opensource product?
  * Adam Jacob's opinion on running a company with an open-source product is that the company should embrace the values of Free Software and fully commit to the open source approach. He believes in providing the entire software stack as open source and engaging with the community in a collaborative manner. Jacob's key points and opinions on this matter include:

     1. Transition to Free Software: Jacob expresses his enthusiasm for Chef Software's decision to release 100% of its software as open source, moving away from the Open Core model. He sees this transition as eliminating a source of friction and frustration within the company.

     2. Community Collaboration: Jacob values the active involvement of the community in the development of software. He believes that by producing open source software, the company can unlock a community that can steward the resource collaboratively, regardless of their individual goals or contributions.

     3. Open Source Values: Jacob emphasizes the importance of sharing resources without scarcity, enabling people to use the software as they see fit. He believes this approach aligns with the values of Free Software.

     4. Software Value: Jacob contends that the value of the product should come from being the best possible producer of an enterprise product, solving real problems for customers. He believes that open source software, combined with other elements like security, testing, support, and documentation, contributes to the overall value of the product.

     5. Community Building: Jacob defines a true community as one where members actively participate in stewarding shared resources. He encourages others to build their own distributions or products from the open source projects and welcomes collaboration within the community.

     6. Diverse Business Strategies: While Jacob believes that the Free Software Product model is the right approach for Chef Software, he acknowledges that different situations may require different business strategies. He respects the diversity of approaches within the open source ecosystem.

     In summary, Adam Jacob's opinion is that running a company with an open-source product should involve a commitment to the principles of Free Software, active community engagement, and providing the entire software stack as open source to create a valuable, collaborative, and supportive ecosystem.

  * In conclusion, the debate over open source business models and licensing is ongoing and complex. There is no one-size-fits-all solution, and each open source project may require a unique approach. Transparency, community engagement, collaboration, and legal clarity are all critical factors to consider. Ultimately, the success of open source lies in the hands of those who champion its values and work together to find innovative solutions for sustainability.