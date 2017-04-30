# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# create_table :organizations do |t|
#   t.string :name
#   t.string :address
#   t.text :overview
#   t.integer :employees
#   t.integer :teamsize
#   t.string :website
#   t.string :twitter
#   t.string :logo
#   t.boolean :published, default: false
#   t.string :photos, array: true, default: []

40.times do
  User.create(name: Faker::Name.first_name,
              icon: "kirkk.jpg",
              email: Faker::Internet.email,
              password: "12345678",
              password_confirmation: "12345678"
  )
end
puts "Users created!"

User.create(name: "Nic",
            icon: "kirkk.jpg",
            email: "nic@gmail.com",
            password: "qweqwe",
            password_confirmation: "qweqwe")


puts "Nic created!"

User.create(name: "Admin",
            icon: "kirkk.jpg",
            email: 'admin@gmail.com',
            password: 'qweqwe',
            password_confirmation: 'qweqwe',
            admin: true)
puts "Admin created!"

organization_list = [
["Canada Drives","Suite 600, Two Bentall Centre 555 Burrard Street,Vancouver,
  BC V7X 1M8", "Facilitates auto financing for consumers through an online portal",
  100, 20, "https://www.canadadrives.ca/","https://twitter.com/canadadrives",true,
  49.2857446, -123.1182499],
   ["A thinking Ape", "1132 Alberni St,No 200, Vancouver, BC V6E 1A5" , "A
    Thinking Ape builds seriously addictive mobile apps, and is one of the top
    grossing developers on the Apple App Store worldwide. We are a small group
    of ambitious software engineers who value ownership, creative freedom, data
    driven decisions and meritocracy over hierarchy. We get to work on products
    that millions of people use every day and have built some of the strongest
    online mobile game communities.",120,51,"www.athinkingape.com",
    "https://twitter.com/athinkingape", true, 49.286175, -123.119406],
   ["App Neta","400-321 Water Street Vancouver BC V6B-1B8","AppNeta is a
      computer software company headquartered in Boston, Massachusetts,
      with research and development based in Vancouver, British Columbia.", 100,
      40,"https://www.appneta.com/","https://twitter.com/appneta",true, 49.2844966,
    -123.109095],
   ["Battlefy", "609 W Hastings St  #1100, Vancouver, BC V6B", "We are
      passionate gamers, thoroughly excited for the future of esports. Our
       led us to create a platform that anyone can use to organize esports
       events with ease. To date, organizers have run over 75,000 tournaments
       on Battlefy (January, 2017).", 25, 10, "https://battlefy.com/",
      "https://twitter.com/Battlefy",true, 49.2851305, -123.1129979 ],
   ["Axiom Zen","980 Howe St #350, Vancouver, BC V6Z 1N9","Our team of fifty
     founder-quality engineers, designers, and product leads combine a wealth
     of experience from fast-growing startups as well as companies like Apple,
     Google, and Microsoft", 130, 35, "www.axiomzen.co/",
     "https://twitter.com/AxiomZenTeam",true, 49.27999210000001, -123.1233714],
    ["Procurify","200 - 717 West Pender, Vancouver, BC V6C 1G9", "Procurify is
      an online spend management solution that gives you control and visibility
      into your company spending. It helps streamline the entire purchasing
      process to drive higher compliance with contracts, maintain control,
      assign accountability, and increase visibility into your organization.",
      44, 15,"www.procurify.com","https://twitter.com/procurify.com",true, 49.2850805,
      -123.1151883],
    ["Hootsuite", "5 E 8th Ave, Vancouver, BC V5T 1R6, Canada", "Hootsuite is
      the most widely used platform for managing social media, loved by over 10
      million people around the globe and trusted by more than 800 of the
      Fortune 1000. With Hootsuite, brands harness the power of social. Our
      platform brings together your social networks and integrates with hundreds
      of business applications.",882, 203, "www.hootsuite.com",
      "https://twitter.com/Hootsuite",true, 49.26382, -123.104321],
    ["Pathful", "604 - 55 East Cordova St. Vancouver, BC, Canada V6A 0A5","
      Pathful shows the performance of content marketing and the content team
      in one simple, unified view. With Pathful, marketers see how each piece of
      content contributes to each stage of the sales funnel making it easy for
      marketers to see what's working, the value, and the ROI of all their
      content efforts.", 8,8, "https://www.pathful.com",
      "https://twitter.com/pathful",true, 49.2826089, -123.1028938],
    ["Unbounce", "400-401 W Georgia St, Vancouver, BC V6B 5A1","Unbounce is the
      leading Landing Page and Conversion Marketing Platform for Marketers.
      Our HQ is located in downtown Vancouver, with growing offices in Montreal
      and Berlin", 168, 30,"www.unbounce.com/", "https://twitter.com/unbounce",
      true, 49.2811945, -123.1148794],
      ["Rise","1200-1055 W Hastings St., Vancouver, V6B 2K4","The workplace of
        the future is about the employee experience. That’s why, in addition to
        software that manages your payroll, time off, and benefits, Rise
        integrates with a range of tools to help you build a world class
        culture, all connected through one central hub.",38,10,
        "http://resources.rise.xyz/live-demo",
        "https://twitter.com/search?q=%40rise",true, 49.2851717, -123.113653
    ],
    ["airG"," Suite 710 - 1133 Melville Street, Vancouver, V6E 4E5",
      "The workplace of the future is about the employee experience. That’s why,
       in addition to software that manages your payroll, time off, and benefits
       , Rise integrates with a range of tools to help you build a world class
       culture, all connected through one central hub.",45,20,
       "http://www.speedshiftmedia.com/","https://twitter.com/@speedshiftmedia",
       true, 49.2871844, -123.1225563
    ],
    ["Speed Shift Media","601 Sixth Street, Suite 400, New Westminster, V3L 3C1",
      "Speed Shift Media is a fast-growing digital media technology company that
      powers next-level online display advertising solutions. Our cloud-based
      platform dynamically integrates advertiser inventory data with shoppers
      vehicle interests to deliver the most relevant automotive display possible.
       We leverage our sophisticated contextual and behavioural targeting,
       dynamic retargeting, and self-optimization technologies to ensure the
       right message always reaches the right user — maximum relevancy means
       maximum results.",51,25,"http://www.speedshiftmedia.com/",
       "https://twitter.com/@speedshiftmedia",true, 49.2135093, -122.9202899
    ],
    ["ThoughtExchange","200-375 Water Street, Vancouver, V6B 5C6",
      "Thoughtexchange is The Group Insight Platform™ that fosters information
      exchange and collaborative leadership. Collaborative leaders use
      Thoughtexchange to hear the community’s thoughts and surface and develop
      the best ideas. Stakeholders share their thoughts, star what others say,
      and discover what matters most.",54, 25,"https://thoughtexchange.com//",
      "https://twitter.com/thoughtexchnge",true, 49.2848948, -123.1105267
    ],
    ["Talametry","200-13799 Commerce Parkway, Richmond, V6V 2N9",
      "Talemetry® works with your applicant tracking system enabling you to reach
      candidates quickly using all recruitment marketing and sourcing channels
      and activities on a single powerful technology platform. Improve candidate
      experiences, optimize recruiter efficiency, control costs, and measure what works.",55,30,"http://www.talemetry.com","https://twitter.com/talemetry",true,
      49.17669129999999, -123.0699633
    ],
    ["Colligo","400-1152 Mainland St., Vancouver, V6B 4X3","Colligo is the #1
      provider of SharePoint/Office 365 solutions for mobility, email management
      and collaboration.. The company’s flagship software, Colligo Engage,
      enables workers to have easy, anytime access to content stored on enterprise
      information systems, regardless of device or connectivity.Colligo’s
      award-winning technology is used by over 5,000 organizations worldwide,
      including Microsoft, Exxon, Sieme",70,32,"https://www.colligo.com",
      "https://twitter.com/@Colligo",true, 49.2748909, -123.1211752
    ],
    ["Skybox Labs","Suite 200, 4190 Lougheed, Burnaby, V5C 6A8","kyBox Labs is a
      game development studio based in Burnaby, British Columbia. We make games
      and interactive applications for all platforms – our studio has experience
      on console, mobile/tablet, and PC platforms.",59, 25,
      "http://skyboxlabs.com/","https://twitter.com/skyboxlabs",true, 49.2658822,
      -123.0102991
    ],
    ["OpenRoad Communications","#210 - 12 Water St., Vancouver, V6B 1A5",
      "Since 1995, we have been passionate about building powerful, elegant, and
       meaningful web experiences. We thrive on the challenges that every new
       project brings us. We have specialized in web technologies, user experience,
       and project management since the beginning. Our staff bring a wealth of
       knowledge to every new project and challenge, along with an inquisitive
       and innovative frame of mind. Read more about OpenRoad's remarkable staff
       and their accomplishments.",45,15,"https://www.openroad.ca/",
       "https://twitter.com/@openroadies",true, 49.2835046, -123.1047979
    ],
    ["Fingerfood Studios","420 - 2755 Lougheed Highway, Port Coquitlam, V3B 5Y9",
      "Finger Food Studios is a professional service consulting firm that creates
      leading edge mobile and web applications. We are experts in Mobile, HTML5,
       and Facebook development. Our team has shipped more than 100 software
       products and has the right balance of design, technical experience and
       method-122.7887088ology to consistently deliver great products and experiences to our
       customers.",60,22,"http://www.fingerfoodstudios.com/",
       "https://twitter.com/finger_food",true, 49.273780, -122.7887088
    ],
    ["DTM Systems","Unit 130 – 2323 Boundary Road, Vancouver, V5M 4V8","DTM
      Systems provides Business Technologies and Solutions for organizations in
      BC and Western Canada. For 30 years DTM has been a leader in the IT market
      focusing on technologies that provide the foundation of business. Over
      this time, we have evolved into a partner well known for our capabilities
      and commitments.",48,18,"http://www.dtm.ca",
      "https://twitter.com/@DTM_SYSTEMS",true, 49.2636323, -123.0247305
    ],
    ["Nitrogen Studios","708 Powell St, Vancouver, V6A 1H6","Nitrogen Studios,
       the home of, is a full service animation company specializing in character
       animation for CGI theatrical feature films and TV series. Located in
       beautiful Vancouver, BC and helmed by Producer and Director team Nicole Stinn
       and Greg Tiernan, Nitrogen is home to an elite corps of CGI artists.",68,
       20,"http://www.nitrogenstudios.com/", "https://twitter.com/nitrogenstudios",
       true, 49.2828885, -123.0890321
    ],
    ["PerfectMIND","110-980 west 1st street, North Vancouver, V7P 3N4",
      "PerfectMIND is an industry leading business solutions provider and one of
      Canada's most innovative organizations. Listed on Canada's Profit 100,
      PerfectMIND specializes in providing small to midsize businesses with
      simple and flexible software solutions and caters to a broad range of
      business sectors including health and wellness and service industries.
      PerfectMIND business applications & CRM platform includes integrated
      marketing and billing services and is highly customizable, easy to use,
      efficient, cost-effective and accessible anywhere and anytime.",92,34,
      "http://www.perfectmind.com/","https://twitter.com/@PerfectMind",true,
      49.3187743, -123.1009814
    ],
    ["Next Level Games","208 Robson St Suite 400, Vancouver, V6B 6A1","We are
      best known for our work with Nintendo, having released two products making
      the ‘Nintendo Selects’ series most popular games: Mario Strikers Charged
      and Punch-Out!! Our latest title was the action/adventure Xbox 360/PS3
      game “Captain America: Super Soldier” with Sega (nominated Best Adapted
      VideoGame,2011).",67,25,"http://www.nextlevelgames.com",
      "https://twitter.com/nextlevelgames",true, 49.2781789, -123.1152767
    ],
    ["Media Valet","505-990 Homer Street, Vancouver, V6B 2W7","MediaValet™ is the
      world's first 100% cloud-based, enterprise class, global, digital asset
      management system. Built from the ground up to leverage the massive
      scalability and global network of data centres that Microsoft's Windows
      Azure cloud platform offers, MediaValet™ can meet the digital asset management
      needs of any size organization, large or small, no matter where they're
      located or how much content they have to manage.",51,22,
      "http://www.mediavalet.co","https://twitter.com/@MediaValet",true,
      49.2774741, -123.1197298
    ],
    ["Iugo","#200 - 369 Terminal Avenue, Vancouver, V6A 4C4","Founded in 2003,
      IUGO is an innovative mobile-first-and-mobile-only studio focused on
      creating premium game experiences on mobile devices.The passionate team
      is a perfect balance of inspired game creators and strong technology experts.
      In parallel with creating great games, IUGO has invested significant efforts
      into developing a suite of robust and high performance mobile-specific
      technologies. This has given the studio an edge to deliver superior
      products that look and play better. ",96,24,"http://www.iugome.com/",
      "https://twitter.com/IUGOME",true, 49.272143, -123.0947567
    ],
    ["Archiact Interactive","1410-555 W Hastings St, Vancouver, V6B 4N6","The
      virtual reality content specialists. An Archiact virtual reality experience
      stands out because of its meticulous design and delightful user experience.
       Inspiring you with the best VR content imaginable is our craft. Virtual
       reality publishing, solutions, and games.",76,15,
       "http://www.archiactinteractive.com/","https://twitter.com/@archiact_games",
       true, 49.2847563, -123.1121504
    ],
    ["Peer1","#1000 - 555 West Hastings Street, Vancouver, V6B 4N5",
      "PEER 1 Hosting supplies a broad range of Internet infrastructure solutions
       to businesses all over the world. All delivered over the rock-solid and
       reliable FastFiber Network'. From startups to established businesses,
       PEER 1 Hosting provides highly scalable solutions that respond at Internet
       speed.",81,15,"http://www.peer1.com","https://twitter.com/peer1hosting",true,
       49.2847563, -123.1121504
    ],
    ["Radiant Communications","1600-1050 W Pender Vancouver, Vancouver, V6E 4T3",
      "Leveraging the largest Internet footprint across Canada, Radiant offers a
      comprehensive portfolio of reliable, secure and scalable enterprise-class
      voice and data services, simplified under a single point of contact. With
      over 17 years of experience, supporting over 20,000 business locations
      across Canada and the U.S., our customers trust us to deliver IT
      infrastructure solutions to support their mission-critical applications.",
      110,25,"http://www.radiant.net","https://twitter.com/@Radiant_Comm",true,
      49.287556, -123.121005
    ],
    ["ZenHub","505 - 55 Water Street  Vancouver, BC V6B 1A1","To build amazing
    software, be where the software lives.",45,14,"www.zenhub.com",
    "https://twitter.com/zenhubhq", true, 49.2839878, -123.1053755 ],
    ["Payfirma", "1185 W Georgia St #740, Vancouver, BC V6E 4E6", "We help
      businesses accept online and mobile payments with a single platform.",33,
      12, "www.payfirma.com" ,"https://twitter.com/payfirma", true,
       49.28737839999999, -123.1246554],
    ["Trulioo","420 W Hastings St #300, Vancouver, BC V6B 1L1", "Trulioo, an
      online identity verification company, enables trust and safety online by
      powering fraud and compliance systems worldwide. As the pioneer and leader
      in cyber ID, Trulioo aims to solve global problems associated with
      verifying identities online. Trulioo's Global Gateway product enables
      businesses to perform frictionless, on-demand instant ID Verification for
      more than 4 billion people in over 50 countries - the widest coverage in
      the market. Global Gateway helps businesses comply with Anti-Money
      Laundering (AML) and Know Your Customer (KYC) identity verification needs,
      enabling businesses across the world to evaluate new and existing users
      through one, single portal.", 50,17, "www.trulioo.com",
      "https://twitter.com/trulioo.com",true, 49.2834419, -123.1115655],

      ["Later (previously Latergramme)", "119 W Pender St, Vancouver, BC V6B 1S5",
      "Visual Content Marketing Platform for Instagram",47,11,"www.later.com",
     "https://twitter.com/latermedia", true, 49.281464, -123.1080116],

     ["Picatic", "200 - 375 Water St, Vancouver, BC V6B 5C6", "Bring People
       Together, build community, catalyze growth, and provide the tools that
       can truly transform the world we live in. Share bread, spill wine, learn,
       laugh and create memories; this is what drives our team to build Picatic.",
       38, 19, "www.picatic.com","https://twitter.com/picatic", true, 49.2848948,
      -123.1105267],

   ["Faronics","1400 - 609 Granville Street, Vancouver, V7Y 1G5","Faronics
  develops and markets intelligent utilities for absolute control of multi-user
  computing environments. Faronics' market-leading solutions have dramatically
  impacted the day-to-day lives of thousands of information technology
  professionals and computing lab managers by ensuring 100% availability of
  systems. Our user-driven, powerful technology innovations benefit
  educational institutions, healthcare facilities, libraries, government
  organizations and corporations.",103,25,"http://www.faronics.com",
  "https://twitter.com/@faronics",true, 49.28337610000001, -123.1172614],

  ["Angiotech","1618 Station Street, Vancouver, V6A 1B6","Angiotech is a
    Vancouver, British Columbia pharmaceutical company. Its products enhance
    the performance of medical devices and biomaterials through the use of
    pharmacotherapeutics. Angiotech is a global specialty pharmaceutical and
    medical device company that discovers, develops, and markets innovative
    technologies and medical products primarily for local diseases or for
    complications associated with medical device implants, surgical
    interventions and acute injury.",96,22,"http://www.angiotech.com/",
    "https://twitter.com/angiotech",true, 49.2706331, -123.0970201],

  ["QuickMobile","2600 - 1177 West Hastings St, Vancouver, V6E 2K3","QuickMobile
     is the pioneer of mobile event apps for meetings, conferences, and
     exhibitions. Our event apps delight audiences by enhancing the way they
     network, schedule activities, engage with content, and access information.",
     98,22,"https://www.quickmobile.com/","https://twitter.com/QuickMobile",true,
     49.2887656, -123.121667],

  ["Metasoft Systems","300 - 353 Water Street, Vancouver, V6B 1B8","Metasoft
    Systems Inc., a privately owned Information Technology consulting and
    development corporation, is a Financial Post Top 100 Canadian Independent
    Software Company.",95,14,"http://www.meta-soft.com/",
    "https://twitter.com/@MetasoftSystems",true, 49.2845554, -123.1100708],

  ["Clio","Suite 404, 999 Canada Place, Vancouver, V6C 3E2","Clio provides a
    cloud-based customer intelligence platform that allows companies to build
    engaged, secure communities of customers they can use continuously,
    across the enterprise",117,38,"https://www.goclio.com",
    "https://twitter.com/goclio",true, 49.2879402, -123.1130521],

  ["Clevest","Suite 200 – 13700 International Place, Richmond, V6V 2X8","Clevest
     provides software for mobile workforce automation and smart grid operations
      exclusively for electric, gas and water utilities. Over 150 utilities
      worldwide have chosen Clevest to transform their field operations by
      harnessing the power of our software and deep domain knowledge of mobile
      computing and utility operations.",102,23,"http://www.clevest.com/",
      "https://twitter.com/@Clevest",true, 49.1737377, -123.0703817],

  ["Broadband TV","1205 Melville St., Vancouver, V6E 0A6","BBTV exists to enable
     and inspire a new age of storytelling. Versed in media and leaders in
     technology, we offer the ecosystem, solutions, and expertise for any need
     in online video.",120,28,"http://www.broadbandtvcorp.com",
     "https://twitter.com/BroadbandTV",true, 49.2881114, -123.1242091],

  ["LMI Technologies","1673 Cliveden Ave, Delta, V3M 6V5","As the OEM-focused
    leader in 3D inline inspection, LMI Technologies helps customers realize
    the advantages of innovative 3D machine vision technologies. Our
    award-winning, high-performance, easy-to-implement and cost-effective 3D
    sensor solutions are trusted throughout the world for even the most
    demanding inspection applications. These unique 3D scanning solutions
    enhance profitability, minimize time-to-market, and help our customers
    stay ahead of their competition.",170,42,"http://lmi3d.com/",
    "https://twitter.com/@lmi3d",true, 49.1613717, -122.9722381
  ],
  ["HyperWallet","300-950 Granville St, Vancouver, V6Z 1L2","At Hyperwallet,
     our goal is to simplify the payments process and reduce the barriers that
      stand between businesses and their payees. Built atop a sophisticated
      online and mobile payments platform and global financial network,
      Hyperwallet's Mass Payments Solutions enable businesses to independently
      offer a unique range of electronic payment service capabilities to
      their payees.",127,28,"https://www.hyperwallet.com/",
      "https://twitter.com/Hyperwallet/",true, 49.2795812, -123.1220136
  ],
  ["Simba Technologies","938 West 8th Avenue, Vancouver, V5Z 1E5","Simba
     Technologies is the leading supplier of standards-based data access
     solutions. Many business intelligence and performance management software
      vendors and leading global enterprises choose Simba because we provide
      unsurpassed standards-based data connectivity products and services. Our
      reputation as a relational and multi-dimensional connectivity pioneer has
      made us the partner of choice for innovative data connectivity solutions.
      Simba's products underpin many high-performance and innovative data
      access solutions in the market today. Simba is a strategic partner in
      architecting and supporting a customer's vision for high-powered
      analytical capabilities from diverse data stores. The Simba solution
      for advanced analytical data access includes software, support and
      professional services. Look to Simba for the leadership and vision
      required to secure your company's data access future.",156,35,
      "http://www.simba.com/","https://twitter.com/@SimbaTech",true, 49.2640399,
      -123.1250433
  ],
  ["ZE PowerGroup","130-5920 Number Two Road, Richmond, V7E 4C9","ZE
    PowerGroup Inc. (ZE) is an experienced software development and
    strategic consulting firm with its head office in Vancouver, BC.
    Combining industry expertise with advanced technical capabilities,
    ZE serves small to large-scale globally positioned clientele in the
    Americas, Europe, the Middle East and Asia, through its operations in
    Richmond, Calgary, Raleigh, Houston, New York, London, Madrid and Singapore.",
    251,42,"http://www.ze.com/","https://twitter.com/@ZEPowerGroup",
    true, 49.1482786, -123.1589674
  ],
  ["Hothead Games","1555 W Pender St, Vancouver, V6G 2T1","Hothead Games
    was founded in 2006 to make kick-ass downloadable games. In 2011,
    Hothead decided to go 'mobile' or go bus",132,22,
    "https://www.hotheadgames.com/","https://twitter.com/hotheadgames",true,
    49.290372, -123.129549
  ],
  ["Creation Technologies","8999 Fraserton Court, Burnaby, V5J 5H8","Creation
    Technologies—www.creationtech.com—is a Global Electronics Manufacturing
     Services provider recently awarded with the Highest Overall Customer
      Rating at the 2015 Service Excellence Awards by Circuits Assembly.
      Creation has locations in USA, Canada, Mexico & China, and is
      headquartered in Burnaby,Canada.",1141,25,"http://www.creationtech.com/",
      "https://twitter.com/@creationtech",true, 49.1991562, -123.0147286],

      ["3D3 Solutions","1673 Cliveden Avenue, Delta, V3M 6V5","3D3 Solutions
          develops HDI 3D scanners and FlexScan3D, a leading PC application offering
           sophisticated 3D acquisition, visualization and mesh processing.",130,
           22,"http://lmi3d.com/","https://twitter.com/3d3solutions",true, 49.1613717,
           -122.9722381
        ],
        ["Absolute Software","1600-1055 Dunsmuir Street, Vancouver, V7X 1K8","Absolute
          provides persistent endpoint security and data risk management solutions
          for computers, tablets, and smartphones.",599,32,
          "https://www.absolute.com/en","https://twitter.com/@absolutecorp",true,
          49.2860658, -123.1212403
        ],
        ["Grow","570 Granville St #1600, Vancouver, BC V6C 3P1","Grow is a leading
          Enterprise Fintech company, serving consumers through partnerships
          with top global financial institutions. By leveraging technology and
          data to reinvent the banking experience, Grow makes personal finances
          understandable and anxiety-free.",50,11,"https://.poweredbygrow.com",
          "https://twitter.com/poweredbygrow",true, 49.2837618,-123.1156683
        ],
        ["Vision Critical","200 Granville Street, Vancouver, V6C 1S4","Vision Critical
           provides a cloud-based customer intelligence platform that allows companies
            to build engaged, secure communities of customers they can use
            continuously, across the enterprise, for ongoing, real-time feedback
            and insight. Designed for today’s always-on, social and mobile savvy
            customer, Vision Critical’s technology helps large, customer-centric
            enterprises discover what their customers want so they can deliver what
            they need. Unlike traditional customer research, which is slow, expensive
             and gathers dust on a shelf, Vision Critical’s customer intelligence
             platform replaces static data and cumbersome reports with real-time
             actionable customer intelligence that companies need to build better
             products, deliver better services and achieve better business outcomes.",
             727,35,"https://www.visioncritical.com/", "https://twitter.com/@visioncritical",true,
             49.28673360000001, -123.1123927
        ],
        ["Methanex","1800 Waterfront Centre 200 Burrard Street, Vancouver, V6C 3M1",
          "Methanex Corporation is the world’s largest producer and supplier of
          methanol to major international markets in North America, Asia Pacific,
          Europe and Latin America. Methanex is a Vancouver, Canada-based, publicly
          traded company with shares listed for trading on the Toronto Stock
          Exchange in Canada under the trading symbol on the NASDAQ Global Market
          in the United States under the trading symbol",1009,42,
          "http://www.methanex.com","https://twitter.com/@Methanex",true, 49.2876771,
          -123.115308
        ],
        ["Allocadia","1066 W Hastings St, Suite 1410, Vancouver, BC V6E 3X1",
          "Allocadia Marketing Performance Management cloud software transforms
          how marketers plan, budget, analyze, and optimize marketing return
          on investment.",50,11,"https://www.allocadia.com",
          "https://twitter.com/allocadia",true,49.287423, -123.1190519
        ],
        ["MDA","13800 Commerce Parkway, Richmond, V6V 2J3","provide information
          solutions for decision making and operational performance to businesses
          and governments worldwide.",539,24,"http://www.mda.ca/",
          "https://twitter.com/@MDA_Career",true, 49.17523550000001, -123.070501
        ],
        ["Routific","555 W Hastings St #1780, Vancouver, BC V6B 4N6","We have built
           a route optimization platform and industry-leading API that empowers
           last-mile delivery businesses to work smarter and more efficiently,
           saving up to 40% in driving time and fuel consumption.",50,11,
           "http://www.routific.com","http://twitter.com/routific",true,
           49.2827874,-123.1099664
        ],
        ["Bitlit","207 W Hastings St, Vancouver, BC V6B 2N4","Bitlit is a
          free app where readers take a picture of their bookshelf and the app
          uses computer vision to automatically identify all the books.",10,2,
          "http://www.bitlit.com","https://twitter.com/bitlitmedia",true, 49.2847563,
          -123.1121504
        ],
        ["Quietly","33 Water St #808, Vancouver, BC V6B 1R4","Every brand has
         distribution channels (social, blogs, newsletters). And every brand needs
         content to fill these channels. Quietly helps brands and publishers develop
         data-driven content that focuses on timeless topics to be promoted
         (and re-promoted) to increase reach, traffic, and revenue. Using our
         proprietary tools & analytics, keyword trends, and competitive landscape
         research Quietly helps shape evergreen content marketing opportunities
         through a thoughtful and strategic approach.",50,11,"http://www.quiet.ly",
         "https://twitter.com/QuietlyContent",true, 49.28389079999999, -123.1049546
       ],
       ["Kabuni","1378 West Pender Street, Vancouver, BC, Vancouver, BC V6E 4S9",
         "Kabuni Technologies Inc. is a SaaS and e-commerce company in the home
         design space enabling independent home design professionals to grow their
         business through an omni-channel retail experience under the brand name Kabuni.",
         10,2,"https://www.kabuni.com","https://twitter.com/GetKabuni",true, 49.2893445,
         -123.1271109
       ],
       ["App Bridge","163 W Hastings St #507, Vancouver, BC V6B 1H5","AppBridge
         is a Vancouver Canada based software company that provides a fast and
         flexible enterprise content migration platform for Google Apps.",50,10,
         "https://www.appbridge.io","https://twitter.com/appbridgeit",true,49.2824658,
         -123.1091908
       ],
       ["Pandoo","688 W Hastings St, Vancouver, BC V6B 1P1","PANDOO is an alternative,
          Web-based O/S. It transforms your web browser into a powerful cloud
          computer. Among many features, PANDOO provides personalization services,
          unprecedented speed, unlimited cloud storage and it's a 100% FREE!",
          50,10,"http://www.pandoo.cc/","https://twitter.com/PandooTEKInc",true,
          49.2847894, -123.1136766
        ],
        ["LoginRadius","1281 W Georgia St, Vancouver, BC V6E 3J7","LoginRadius is
         a leading Customer Identity and Access Management (cIAM) platform serving
         over 150,000 web and mobile applications worldwide and managing
         identities of over 650 million users.", 42,22,"www.loginradius.com",
         "https://twitter.com/loginradius", true, 49.28818030000001, -123.126233],

      ["The Coup Company","318 Homer St, Vancouver, BC V6B 1E8", "The Coup
        Company (“The Coup”) is a disruptive tech-enabled discovery and packaging
        platform that surfaces new talent and original audience-driven IP.
        Partnering with big players, including: exhibitors (Cineplex Entertainment)
        TV networks (CBC) and brands (Canon), the Coup identifies and delivers
        low-budget high, performing franchises with build in audiences.", 33,
        11,"www.cinecoup.com","https://twitter.com/cinecoup", true, 49.2837738,
        -123.1100857],
      ["Video Meme Creation & Sharing App", " 505 - 55 Water Street
       Vancouver, BC V6B 1A1","Vemes are what happen when short-form video
       and text come together in funny, inspiring ways.", 8, 2,"www.veme.com",
       "https://twitter.com/veme", true,49.2839878, -123.1053755 ],
        ["7geese","55 Water St, Vancouver, BC V6B 1A1","7Geese eliminates the
          performance review with a new, social approach to performance
          management. Track Objectives and key results (OKRs), recognize
          colleagues, conduct reflections, track 1-on-1s, and gather valuable
          feedback all in a continuous, real-time environment.", 9,4, "www.7geese.com",
              "https://twitter.com/7geese", true,  49.2839878, -123.1053755],
              ["Edvisor","289 Abbott St #300, Vancouver, BC V6B 2K7", "We tend an
                ear to calls, notes, emails, and other data sources to connect
                information in the moment and help teams be more productive,
                close more deals, and find new ways to delight customers", 34, 8,
          "www.edvisor.io", "https://twitter.com/edvisorio", true, 49.2839878,
          -123.1053755],
            ["Moijio", "1080 Howe St, Vancouver, BC V6Z", "When people ask us,
              “What does Mojio mean?” we usually start by explaining that it
              didn’t mean much of anything when the founders chose the name in
              2012. That was the whole point. An automotive revolution was brewing
               and we needed to put a name to the connected car, one that was as
               open as the road itself. One that was as much about the journey as
               it was the destination, one that represented the future of connectivity
               and growth. Mojio was born.", 37, 13, "www.moj.io",
               "https://twitter.com/getmojio", true, 49.2788273, -123.1250678],
               ["Fodio Technologies", "128 W Hastings St, Vancouver, BC V6B 1G8",
                 "We offer a comprehensive suite of financial services including
                  general accounting, forecasting, budgeting, analytical and
                  project support, controllership and financial reporting.
                  We work with your team to meet your every financial need and
                  advise you on the best practices to run your business more
                  efficiently.", 7,3, "www.food.ee", "www.twitter.com/foodee",
                  true, 49.2819163, -123.1083174],


["Mobify","725 Granville St #420, Vancouver, BC V7Y 1C6","Mobify allows
    e-Commerce retailers to launch seamless mobile shopping experiences across
    mobile web, native app and wearable devices using a powerful developer
    platform.",200,27,"http://www.mobify.com","https://twitter.com/mobify",true,
   49.2824377, -123.1191386],
  ["Fitplan","1062 Homer St #201, Vancouver, BC V6B","Fitplan is the dynamic
     mobile app empowering our community to become their best selves. We are
      fuelled by passion for helping others to realize their goals and making
      wild fitness ambitions accessible.",50,11,"http://www.fitplanapp.com",
      "https://twitter.com/fitplan_app",true,49.2766628,-123.1209816
  ],
  ["Thinkific","520 Alexander St, Vancouver, BC V6A 1C7","Thinkific is the
    easiest way to create and sell courses online.Using our simple platform,
    experts or organizations can easily launch their own online courses or
    complete online schools.",50,10,"http://www.thinkific.com",
    "http://www.twitter.com/thinkific",true,49.283836, -123.0922076
  ],
  ["Semios","101-887 Great Northern Way, Vancouver, BC V5T 4T5","Semios
    delivers precision crop management to growers of fruits and nuts. Using
    machine-to-machine (M2M) solutions, we provide data and analytics that
    increase crop value.",10,1,"http://www.semios.com",
    "https://twitter.com/semios",true,49.2664291, -123.08445
  ],
  ["Rent Moola","1030 W Georgia St #710, Vancouver, BC V6E 2Y3","RentMoola,
    one of North America's leading fintech companies is changing the landscape
    of paying rent all over the world. Solving the age-old problem that paying
    and collecting rent is a major hassle, RentMoola is an online global
    payment network that allows tenants and owners to pay rent and other
    payments by credit card, debit card, RM eCheck™ or RM Cash™ while
    earning rewards.",50,10,"http://www.rentmoola.com",
    "https://twitter.com/rentmoola",true, 49.2844874,-123.1218908
  ],
  ["PlaceSpeak","1005 Cypress Street, Vancouver, BC V6J 3K6","PlaceSpeak is
  a cloud-based geosocial platform which is monetized through e-commerce. Its
  innovative geo-authentication platform for digital identity aggregates vetted
   users (“participants”), for the first time on the basis of where they live,
   work and play, offering communication with individuals online according to
   their actual address. PlaceSpeak authenticates participant users to place so
   that they can weigh in on local issues and affect outcomes by connecting
   with the policy-makers and decision-makers who impact the places they live
   and work.",10,2,"https://www.placespeak.com/","https://twitter.com/placespeak",
   true, 49.2767707, -123.1476423
 ],
 ["Ayogo","577 Great Northern Way #230, Vancouver, BC V5T 1E1","Ayogo distributes
   highly-polished gamified health applications through organizations (such as
   non-profits and patient advocacy groups) that serve patients with serious or
   chronic diseases (diabetes, heart disease, childhood obesity).",10,1,
   "http://www.ayogo.com","https://twitter.com/ayogohealth",true, 49.2673543,
-123.0904922
 ],
 ["Skio Music","390 Cambie St, Vancouver, BC V6B 2N3","SKIO Music is a digital
    licensing and collaboration platform for the music industry. Our curated
    community of artists and labels have access to direct licensing deals with
    secure instant payments, remix contests and opportunities to be officially
    released on labels, as well as connection directly to the Pros.",50,11,
   "http://www.skiomusic.com","http://twitter/skiomusic",true, 49.2830604,
   -123.1093195
 ],
 ["Wealthbar","1122 Mainland St #490, Vancouver, BC V6B 5L1","WealthBar is
    Canada’s only full-service online financial advisor. We use technology
    to make financial planning and investing more efficient and convenient,
    but also have a team of dedicated financial advisors who work with every
    client to help them plan and achieve their financial goals.",50,10,
    "http://www.wealthbar.com","http://twitter.com/wealthbar",true,
    49.2751497, -123.1208486],

    ["Proxxi", "46 WEST 6TH AVENUE, VANCOUVER, BC, V5Y 1K1, CANADA", "The first
      product we have built is the Proxxi Band which addresses the risk of
      electrical injury faced by 20 million US industrial employees on a daily
      basis. Proxxi Band notifies the wearer by vibration (haptic feedback) when
      they get too close to an electrically energized device. Targeted initially
      at utility workers and electrical field services, it is a device that
      provides companies peace of mind and visibility through connected monitoring
      and insights into employee behavior.Currently, there are no ambient, connected,
      always-on devices used to detect electricity. Workers currently rely on
      outdated processes technology to protect themselves. Proxxi provides that
      fail safe backup to virtually eliminate the risk.",6,6,"proxxiband.com",
      "https://twitter.com/@proxxiband", true, 49.2654949, -123.1058676],
    ["Weddingful", "609 W Hastings St, Vancouver, BC V6B", "Wedding Social Community
      with thousands of local brides and vendors providing the best wedding
      planning experience.",43, 16, "www.weddingful.com",
      "https://twitter.com/weddingful",true, 49.2851305, -123.1129979 ],
    ["Harp Platform","1050 W Pender St, Vancouver, BC V6E 3S7","The Harp Platform
      is a new kind of platform for developing and deploying applications, mobile
      applications and web sites. By combining the power and ease of Dropbox with
      robust developer tools and cloud infrastructure we make getting online easier
      and faster then ever before.", 6,2, "www.harp.io", "https://twitter.com/harpplatform",
    true, 49.2869813, -123.1195788 ],
    ["FusionPipe Software", "1400 - 1055 West Hastings Street Vancouver, BC V6E 2E9",
      "QuikID™, FusionPipe's innovative authentication solution uses unique patented
      technologies to provide enhanced user convenience and increased data security
      for enterprises, mobile field workers, healthcare and government.QuikID™
      empowers employees to use a mobile device or wearable as a replacement
      for manually typing complex passwords and as a secure alternative for
      physical smart cards and other types of send factor authentication.", 34,
      19, "www.fusionpipe.com", "https://twitter.com/FusionPipe", true,49.2877672,
     -123.1182837
    ],
     ["Retsly","1122 Mainland St #406, Vancouver, BC V6B 5L1", "Retsly is a backend
       as a service that aggregates and enhances MLS data and implements a cohesive
       realtime API as well as an open source SDK for developing data driven real
       estate products in the most efficient and compliant environment available to date.",
        5,5, "www.rets.ly", "https://twitter.com/retsly",true, 49.2751497, -123.1208486],
    ["BlueBat","6th Floor, 210 W Broadway, Vancouver, BC V5Y 3W2", "BlueBat's vision
       is to become the world's leading B2B social casino middleware service for
       the thousands of casinos globally that will be coming online in the next
       2-3 years.", 6,6,"www.bluebatgames.com", "https://twitter.com/BlueBatGames",
       true, 49.26296910000001, -123.1096602],
       ["Musefind","289 Abbott St #300, Vancouver, BC V6B 2K7","Recreating the
       romance between brands and their audiences, through influencers.Our
       platform is a weapon for brands to orchestrate influencers, compose c
       ontent, and mesmerize millions.",10,1,"https://musefind.com/",
       "https://twitter.com/themusefind",true, 49.2831857,-123.1069187
     ],
     ["Curatio","555 W Hastings St #1200, Vancouver, BC V6B 4N4","Our solution
       combines patient matchmaking and private social networking with disease
       self-management tools. We are a mobile SaaS business that has completely
       bootstrapped off sales and awards in our first year with no outside
       financing to date",10,1,"http://www.curatio.me/","https://twitter.com/@curatiome",
       true, 49.2847563,-123.1121504
     ],
     ["Taski","Hootsuite HQ2, 111 East 5th Ave","Taski is an online marketplace
       for hospitality staff on demand. Hospitality has the largest turnover rates
       of all industries, costing businesses time and capital on constantly
       rehiring staff.",10,1,"http://www.taskiapp.com","https://twitter.com/taskimobile",
       true, 49.2667028,-123.1021897
     ],
     ["KeyCafe","211 Robson St, Vancouver, BC V6B","Keycafe makes it easy to
       share the keys to your home or rental property. Let guests, friends and
       family into your home without having to be there.",50,8,
       "http://www.keycafe.com","https://twitter.com/key_cafe",true, 49.2784421,
       -123.1149881
     ],
     ["Koho"," 202, 25 E 6th Ave, Vancouver, BC V5T 1J3","With a web app,
       mobile app and card, Koho offers Canadians a secure, simple and transparent
       way to access their money. For too long, banking has lagged behind the
       technical experiences GenY expects. Koho's no fee, banking alternative
       offers a means to change that.",50,6,"http://www.koho.ca",
       "https://twitter.com/getkoho",true, 49.265835, -123.1039773
     ],
     ["Control","322 Water Street – 3rd Floor, Vancouver BC, V6B 1B6","Control is
       a leading payment analytics and alerts platform for SaaS, subscription and
       eCommerce businesses, enabling instant intelligence anywhere via its
       Android, iOS, and web-based products.",50,6,"http://www.getcontrol.co",
       "https://twitter.com/GetControlApp",true, 49.28420699999999, -123.1094441
     ],
     ["Spare Labs","Suite 600, Two Bentall Centre 555 Burrard Street,Vancouver,
       BC V7X 1M8","Spare Labs is building shared mobility technology for the
       modern world. The company was founded on one idea - data-driven mobility.
       Companies use our award-winning platform to launch, operate, and scale
       autonomous and new mobility services, including ridesharing, smart shuttles,
        and custom solutions.",10,1,"http://www.sparelabs.com",
        "https://twitter.com/sparelabs",true,49.2857446,-123.1182499
     ],
     ["Wiivv","402-134 Abbott St, Vancouver, BC V6B 2K4","Our products make humans more durable.",
       50,4,"https://wiivv.com/","https://wiivv.com/",true, 49.2841067,-123.1060402
     ],
     ["CommandWear","Suite 1400-1055 West Hastings Street Vancouver BC V6E 2E9",
       "CommandWear is specializing in the user experience and software for a new
       class of wearable devices. Our target is the global public safety & security
          market who are looking for better ways to track and communicate with
          personnel in the field and reduce response times during any type of
          crisis, major event or disaster. The solution is also fulfilling lone
          worker tracking and safety for field workers and public safety agencies.
          Workers can be tracked in real-time while in remote areas and they use
          the simple smartwatch app to check-in and send alarms when needing assistance.",
          10,1,"http://www.commandwear.com","https://twitter.com/commandwear",true,
          49.2877672,-123.1182837
     ],
     ["Eastside Games","116 W Hastings St, Vancouver, BC V6B 1G8","East Side
       Games is a proudly independent and profitable game studio creating humorous
       and addicting games for mobile and social platforms.",10,1,"http://www.eastsidegames.com",
       "https://twitter.com/EastSideGames",true, 49.2820143, -123.1078096
     ],
     ["Lemonstand","525 Seymour St, Vancouver, BC V6B 3H7","LemonStand helps web
       developers, agencies and fast growing brands create beautiful online stores
        that stand out from the crowd and sell more.",50,11,
        "http://www.lemonstand.com","https://twitter.com/LemonStand",true,
        49.2837745,-123.1146751
     ],
     ["Ritual","774 Denman St, Vancouver, BC V6G 1C9","We're building a
       unique marketplace to allow content creators to search and license music as
       efficiently as possible. Modern content creators want to be able to use
       world’s best music at a fair price. Purchased with an easy-to-use licensing
       model, taking seconds, not days or weeks. They also need to find the music
       as quickly as possible. One of our primary goals is to create a highly
       intuitive search and filter system that mimics the emotional resonance
       of music beyond simple meta-tagging. Instead we want to create an experience
       that lets users discover relevant music by accounting for the more abstract
       characteristics of songs, which are easy to feel, yet tough to articulate.
       We’ve built a system of developing and retaining some of the world’s best
       music producers, who are responsible for writing, recording and playing
       alongside: Sia, Lorde, Selena Gomez, Walk The Moon, Hedley, and Tegan
       and Sara, among others.",15,3,"http://www.ritualmusic.com",
       "https://twitter.com/ritualmusic",true,49.28497530000001, -123.1153381
     ],
     ["Spacelist","717 W Pender St, Vancouver, BC V6C 1G9","SpaceList is a
       marketplace for office, retail and industrial space. We host 1/2 billion
       square feet of available space and generate over 100 inquiries each day.",
       10,1,"http://www.spacelist.ca","https://twitter.com/SpaceList",true,
       48.42446169999999, -123.3685469
     ]]

  organization_list.each do |name, address, overview, employees, teamsize,
    website,twitter,published, lat, long|
    Organization.create(name: name, address: address, overview: overview,
     employees: employees, teamsize: teamsize, website: website,
     twitter: twitter, published: published, lat: lat, long: long)
  end

  ["PHP", "javaScript", "Ruby", "HTML", "Rails", "C#", "C++", "go", "Python",
    "Css", "React.js", "Angular", "AJAX", "Node.js", "Express.js", "MySql",
    "Docker", "Bootstrap", "CoffeeSript", "Pug", "Perl", "Postgres", "Less",
    "Sass", "MangoDB", "Git", "Ember", "Django", "Swift", "Elixir" ].each do |t|
    Tag.create(name: t)
  end

  20.times do
    tag = Tag.all.sample
    organization = Organization.all.sample
    Tagging.create( tag: tag,
                      organization: organization
                    )
  end








#
# address:
# overview:
# employees:
# teamsize:
# website:
# twitter:
# logo:
# published:
# photos:
#
# ]
#
#
# country_list = [
#   [ "Germany", 81831000 ],
#   [ "France", 65447374 ],
#   [ "Belgium", 10839905 ],
#   [ "Netherlands", 16680000 ]
# ]
#
#
# country_list.each do |name, population|
#   Country.create( name: name, population: population )
# end
