BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `lesson` (
	`_id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`courseid`	INTEGER,
	`title`	TEXT,
	`section0`	TEXT,
	`section1`	TEXT,
	`section2`	TEXT,
	`section3`	TEXT,
	`section4`	TEXT,
	`section5`	TEXT,
	`section6`	TEXT,
	`section7`	TEXT,
	`section8`	TEXT,
	`section9`	REAL,
	`questions`	INTEGER,
	`result`	INTEGER DEFAULT 0,
	`nsections`	INTEGER DEFAULT 0
);
INSERT INTO `lesson` VALUES (1,1,'Passwords','Introduction<<-->>We continuously entrust more and more information to our social networks, considering them inviolable places thanks to the protection offered by passwords. However, they are only keywords and the bad guys, given enough time, could discover them and steal our data. Many still use as a password the name of their girlfriend or that of their pet and the most unwary use the timeless sequence "123456" (which is the password most used in recent years). Discovering such passwords is a breeze even for a novice hacker.
 The first step to protect your online privacy is therefore the creation of a secure password, a password that can not be discovered by a program or a person in a short space of time.','Guidelines<<-->>First, choose a fairly long password (composed of at least 15-20 characters) alternating letters, both uppercase and lowercase, numbers, punctuation marks and symbols (e.g. !,?,£,$,#,% etc.). In fact, by using a sequence of characters that does not make up a meaningful word or phrase, you will discourage attempts by attackers who make attacks based on dictionaries. Such attacks are based on searching for your password in very long common word lists, or a dictionary.
 Another very important precaution is to not use words as passwords that can somehow be guessed by other people. To go a little further, do not use the names of your family members, your date of birth or wedding anniversary or other data that is easily traceable to you.
 It is also a good idea to constantly update your passwords (possibly at least once every 2-3 months), since no password is 100% secure. Another aspect not to be overlooked is that of using different passwords for each account: if you do that, even if they should unfortunately intercept one of your access keys, the security of other accounts would not be compromised.','Creating a secure password<<-->>After having seen some general advice on how to choose a sufficiently secure password, the time has come to move from theory to practice. In fact, there are several useful tools to choose a secure password. These are basically automatic password generators that, complying with the guidelines of the previous chapter, create quite secure access keys.
 One of the most famous password generators is Password Chart. As the name of this service indicates, it allows the creation of access keys using transcoding technique. How does this work? In practice, the user types a sentence that allows you to generate the scheme that will be used to create the password, then types the word that will be used as a reference for creating the password and, at that point, the software will associate with each letter of the alphabet a specific combination of numbers, letters and symbols, thus creating a fairly secure password.','Password Manager<<-->>Passwords of this type, however, can be very difficult to remember and are likely to be forgotten after the first use. It is therefore necessary to rely on some tool to help our memory. By discarding the conventional post-it, which are easy to lose and can be found by bad guys, you can make good use of so-called password managers, or special programs that, like a sort of "virtual safe", store the passwords of their accounts. Using a password manager has a double benefit: first, the passwords are kept safe (and not a little!) And, other important aspect, we do not have the problem of remembering all the other passwords because you can open these "virtual safes", remembering only one main password.',NULL,NULL,NULL,NULL,NULL,NULL,'The most used password in recent years is:<->123456<->Abcdef<->Qwerty123<->password<<-->>Is there such a thing as a safe password?<->No, any password can be found, given enough time<->Yes, mine is<->No, because all the passwords have already been used<->Yes, but no one has ever found one<<-->>Dictionary attacks try to guess our password:<->using lists of commonly used words<->using dictionaries of various different languages<->using words in alphabetical order, as in a dictionary<->with words generated at random by a computer<<-->>Password Chart allows us to:<->generate really secure passwords<->access our passwords without using any<->attach the accounts of our email contacts<->monitor the security of our password<<-->>Entrusting passwords to a password manager is very convenient and fast, but not very secure<->F<<-->>Using UPPERCASE and lowercase characters in our password increases its resistance to attacks<->T<<-->>It is convenient to use the names of our family members in our passwords, because they are easy to remember and, after all, not easy to guess by foreign users<->F<<-->>Password Chart is a useless and discouraging system, because it generates incomprehensible passwords<->F<<-->>To access our password manager it is necessary to remember a single, long master key<->T<<-->>It is strongly recommended to change your password after a few months of use<->T',0,4);
INSERT INTO `lesson` VALUES (3,2,'Viruses','What are they and how do they spread?<<-->>A computer virus is similar to a biological virus: it is a program designed and built to cause damage within the infected device. The first viruses were born with modern informatics (1980) and over the decades have evolved to better adapt to a constantly changing environment. From the point of view of their lifecycle, after the "reproductive" phase, computer viruses begin to carry out activities of various kinds: destructive and/or obstructive. How do they spread? By transferring infected files from one computer to another, and, even more seriously, they can attack computers connected to each other on the network.','First generation and recent viruses<<-->>While first generation viruses only attacked executable files (which are recognizable in the DOS operating system because they have a .COM or .EXE extension), current viruses are able to infect many other types of files and change the instructions of the BIOS loaded into RAM, to spread through the same physical media contained in the PC and even damage the hardware.
Finally, some new types of viruses have appeared: the so-called macro viruses that stick to document files generated for example with Microsoft Word for Windows, Microsoft Excel etc.','How to defend against viruses<<-->>1) Limit the exchange of .EXE, .COM, .OVR, .OVL, .SYS, .DOC, .XLS and system files (.SYS) between computers on the network and avoid using network servers as working environments .
2) Reduce the use of shareware and public domain programs if their origin is unknown.
3) Do not insert your "system disk" in another computer if not in "write protection" condition and never add data or files to floppies containing original programs.
4) Never run programs of unknown origin. If you do, use a scanning antivirus program to detect the presence of viruses.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Computer viruses have existed in computers since the early ''80s.<->T<<-->>Computer viruses spread by transferring infected files from a computer to a second computer, but can not attack computers connected to each other on the net.<->F<<-->>Computer viruses have both destructive and obstructive powers<->T<<-->>Current viruses, as against ones of the first generation, only attack executables.<->F<<-->>Current viruses, unlike the first generation ones, can also damage hardware and RAM.<->T<<-->>Macro viruses are an example of first generation viruses.<->F<<-->>Macro viruses are very dangerous because they can be easily transmitted by exchanging files of type ''document'' (eg e-mail).<->T<<-->>Among the basic rules for the prevention of computer viruses is the following: do not use network file servers as workstations.<->T<<-->>Among prevention rules is the following: always use freely shareware and public domain programs.<->F<<-->>Among the rules of prevention there is the following: never run programs of unknown origin. If you do, use a ''SCAN'' antivirus program that examines the contents of the diskette in order to detect the presence of viruses.<->T',0,3);

INSERT INTO `lesson` VALUES (9,4,'GDPR','What is it?<<-->>The GDPR (General Data Protection Regulation) is the European regulation on operational privacy from 25 May 2018. It provides new rules for the processing of personal data and establishes heavy penalties for offenders (individuals or companies). Being a regulation (legislative act of the European Union together with directives and decisions), it has general scope in all the countries of the Union and direct applicability.
 It consists of 99 articles, in which, in addition to establishing the figure of ''data protection officer'', responsible for applying the Regulation in each company, establishes new rules and new user rights.','To whom does it apply?<<-->>The impact is wider than you might think: the GDPR concerns in fact all companies that handle any type of personal data: from information on its employees to customer profiling on behalf of third parties, or even analyzing data for marketing activities.
Companies that do not comply with this regulation can incur penalties of up to 20 million euros, or, in the case of larger companies, up to 4% of turnover.','What will change? New rules<<-->>According to the new regulations, when a company seeks access to personal data, it must seek consent with "simple and clear language" (Article 7), as well as explaining why and for what purpose it will use certain information (Article 13). It must also declare the ''retention period'': that is how long the data will be stored, providing the user with an additional details to evaluate the implications. Finally, in case of violation of their data, the holder is obliged to notify them of the incident within 72 hours.
Users will therefore be able to access much more information on the processing of their data, without having to look for them in obscure and complex information.','...and new rights<<-->>Among the rights for citizens introduced by the GDPR are right of access (Article 15: the citizen must be able to know immediately how and why they are processing his data), the right of rectification (Article 16: «correction of inaccurate personal data concerning him »), the right to oblivion (Article 17: the user can have his data deleted) and the right to data portability (Article 20: the user can receive all the information concerning him and forward them to another holder).',NULL,NULL,NULL,NULL,NULL,NULL,'GDPR stands for..?<->General Data Protection Regulation<->Gender Discrimination PRevention<->Generational Drugs Producers Rehabilitation<->Great Dalmatas PRoject<<-->>It was issued by<->European Union<->Italian Parliament<->Privacy Guarantor<->It is present in the Italian Constitution<<-->>The GDPR concerns<->All companies that process personal data<->State institutions and institutions<->Social Networks<->Companies with turnover exceeding 20 million euros annually<<-->>In case of transgression, sanctions<->can reach up to 20 million euro (or 4 % of turnover)<->are payable by the State<->are proportional to the turnover of the company<->are always less than 10 million euros<<-->>The GDPR establishes the figure of the "data protection officer" , responsible for the application of the Regulations in each company<->T<<-->>Companies that use personal data are not obliged to communicate the so-called ''retention period'' or how long the data will be stored<->F<<-->>Right of access provides that the citizen must be able to know immediately how and why their data are being processed<->T<<-->>The GDPR does not provide the right of rectification - i.e. the possibility for the citizen to request correction of inaccurate personal data concerning them<->F<<-->>Another right provided by the law is that of oblivion, according to which the user can have the data erased in his/her/its purpose<->T<<-->>The GDPR has not granted the right to portability of data, according to which the user could receive all information concerning them and send it to another holder<->F',0,4);
INSERT INTO `lesson` VALUES (11,4,'VPN','What is it and how does it work?<<-->>The VPN, created for companies but now also used by private individuals to increase Internet security, creates a virtual tunnel between our computer and a secure server owned by the VPN service provider. All traffic is encrypted from the computer to the server, and then exits "normally" on the Internet. In summary, this allows you to surf privately and securely even in public Wi-Fi networks. Thanks to the VPN, Internet browsing will come from an anonymous data center instead of the IP address registered to John Smith.','Advantages and disadvantages<<-->>In addition to greater IT security and the protection of personal data, the VPN allows the circumvention of geographical barriers. In fact, virtually all VPN services provide servers in many countries. With the VPN you can watch a video on the BBC website, choosing a server in the UK, without the content being blocked. The same applies to a site in the United States, or in France, or Germany.
A disadvantage of surfing the net through the VPN is the limited bandwidth available and a certain slowness in connecting to web pages. Slowness due to the fact that the activity of coding and decrypting of encrypted data takes time.','Factors to consider<<-->>1) Availability of countries: it is advisable to choose a VPN service with at least 25 countries, verifying that the most used countries are included: United States, United Kingdom, Germany, Netherlands.
2) Number of connectable devices: according to personal and family needs the number can change, but at least 5 connectable devices are recommended.
3) Cost: compare different providers looking at the price too. Almost all require a monthly or annual payment.','How to connect to a VPN<<-->>Many providers offer a smartphone app that allows easy access from mobile devices. If this is not the case, you can still configure OpenVPN for Android in a similar way to what you do with a PC.',NULL,NULL,NULL,NULL,NULL,NULL,'The acronym VPN stands for Very Powerful Network<->F<<-->>VPN was born for corporate networks<->T<<-->>VPN creates a virtual tunnel between our computer and a secure server owned by the VPN service provider<->T<<-->>Information is encrypted from the computer to the server<->T<<-->>Using a VPN, browsing will be generated from an anonymous data center<->T<<-->>VPN protection does not work on public networks<->F<<-->>VPN does not mitigate the effects of so-called "mass surveillance"<->F<<-->>VPN reduces the effects of geographical barriers<->T<<-->>Among the factors to consider when choosing the VPN service is the number of devices connectable while the number of available countries does not matter<->F<<-->>To connect you do not always need to use an app provided by the provider<->T',0,4);
CREATE TABLE IF NOT EXISTS `course` (
	`_id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`title`	TEXT
);
INSERT INTO `course` VALUES (1,'Key Concepts');
INSERT INTO `course` VALUES (2,'Cyber Attacks');
INSERT INTO `course` VALUES (4,'Privacy');
COMMIT;
