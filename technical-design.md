## TECHNICAL DESIGN


* [AustESE](#AUS)
  * [The AustESE ontology](#AEO)
* [AustESE tools](#AET)
  * [Events editor](#EE)
  * [Transcription Editor](#TE)
  * [TILT](#TILT)
  * [Calliope](#CAL)
* [Lessons learned](#LL)
* [Ecdosis](#ECD)
  * [Back End Tools](#BET)
  * [Front End Tools](#FTE)

The CHCA uses a series of tools designed for the scholarly editing of historical documents, primarily of a literary nature. These are derived from tools originally built for the [AustESE project](http://austese.net/) (Australian Electronic Scholarly Editing), which was funded by the [NeCTAR grant scheme](http://www.nectar.org.au/) during mid-2012–2013 . AustESE was based on a detailed set of user requirements gathered from scholarly editors in Australia and overseas. These requirements were gradually implemented in the course of the 18-month project, but at its conclusion the system remained incomplete. 

Since then, further development of the AustESE tools has resulted in certain elements being reduced in importance, while others have been enhanced, with some overall simplification. The current tool-set used to construct the CHCA is called ‘Ecdosis’ (the original Greek word for ‘edition’ ­— http://ecdosis.net) to distinguish it from AustESE. The next two sections explore the historical evolution of both sets of tools, and explain the relationship between them.

### <a name=AUS></a>AustESE
Originally, AustESE was conceived as a suite of editorial tools intended to facilitate the creation of both digital and print scholarly editions. [(1)](#FN1) Its central concept was the ‘project’. Projects were collections of digital surrogates of original documents, such as page-images and transcriptions, but also digital records or metadata about physical artefacts, such as books, as well as derived classes of entities such as versions and works. In keeping with Ken Price’s conception of the digital scholarly edition as being much more than a simple digital publication of a work, other ‘paratextual’ material, such as relevant history, events in the life of the author, publication events, and other background data were also included under the concept of ‘project’. Projects were to be managed from their conception and grant-funding, and at every stage through to digital and print publication.

### <a name=AEO></a>The AustESE ontology
For such a broad collection of resources to form an effective basis for producing a digital scholarly edition, the relationships between them had to be clearly defined, or they could not be efficiently or reliably processed. The AustESE ontology was thus developed to provide a model for the primary associations between the people, material objects and the concepts commonly used in scholarly editing. 

The primary classes of the AustESE Ontology are: Artefact, Version, Work, Agent and Event. These are defined in Fig. 1. This image should not be seen as a hierarchy of terms since the way in which the AustESE Ontology is defined enables a collection of digital files to be assembled in any order.

**The AustESE workbench** acts as a container for the tools and as an interface to the repository for digital surrogates (i.e. transcription files and image files) of the relevant real-world objects (manuscripts, books, etc.). Each such digital resource then serves as a target for analysis, specifically for annotation and textual commentary.  As the user-creator adds metadata, further relationships among the digital surrogates are automatically asserted.

For example, an Event can produce an Artefact, take place at a particular time, involve a participant (Agent), precede another Event, etc. Each of these will, in turn, also have its associations asserted. The richer the metadata, the richer the network of relationships able to be visualised, searched and analysed. New digital surrogates and metadata may be added at any time.

![The AustESE Ontology](/images/about/austese-ontology.png)
__Figure 1. The AustESE Ontology__

Although scholarly tasks need not be done in strict order, the AustESE WorkBench was designed with a workflow in mind that distinguished between *archival* and *editorial* tasks as part of its project-management role.

The discovery, description and digitisation of material objects, and the organisation of digital surrogates, satisfy an archival impulse to gather and transcribe the relevant materials. When the project manager is satisfied with the accuracy and reliability of the digital surrogates, the metadata records and transcriptions can be locked to prevent further change. This ushers in a second, editorial phase, involving the analysis of text and textual variation, the writing of annotations and, if necessary or desirable, the critical establishment of new versions (i.e. edited reading texts). 

Beyond the original project creator and any assigned collaborators, AustESE also allows other classes of user to be later added, for example, to input new annotations, transcriptions or images. Thus a project need never be closed. One obvious moment to publish is at the point when the archival capture appears to be complete, and the more interpretative editorial stage is about to begin. As the editorial phase progresses, further publication in tranches, according to the nature and extent of the subject matter, becomes possible. These early publications might then attract collaborators to the project.

### <a name=AET></a>AustESE tools
Several innovative tools were developed for AustESE. Beyond the support for projects and workflows, the management of resources such as page-images and transcriptions, four tools stood out as meriting further development.

#### <a name=EE></a>Events editor
The paratextual material mentioned above often includes information about an author: for example, dates of publication, events in the life of the author, and letters. These all occur at specific times that are only rarely known with precision. The birth of Charles Harpur is known to have been 23 January 1813, but his move to Singleton is not more accurately known than as ‘by November 1842’. Similarly, the dates of composition for most manuscript versions of his works are usually specifiable by a single year, but not always. The Events Editor of AustESE allowed the definition of ‘fuzzy dates’ that could be sorted, metadata tags, event description and class, and links to resources, on which the information was based. In the form of an interactive timeline, Events proved invaluable as a linking mechanism between the works and a readable if rudimentary biography, automatically generated in the form of annual entries describing the events of that year, and including images of people and places.

#### <a name=TE></a>Transcription Editor
For AustESE, transcriptions had been created in standard TEI XML (Text Encoding Initiative eXtensible Markup Language), largely because of the lack of a ‘standoff’ or ‘out-of-line’ markup editor, as originally planned. The transcription-editor was designed to assist the human editor by arranging for the image of the relevant manuscript, newspaper or book page to be set next to its transcription, and was enhanced by a third panel containing a live preview in HTML. Thus the human editor could see at a glance what the approximate effects of entering certain XML-codes would have on the finished Web-page or printed book. 

#### <a name=TILT></a>TILT
The text-to-image linking tool (TILT) was created to enable the automatic linking between words in a page-image (print or manuscript) to words in the transcription. A parallel page-image and text view could then support the simultaneous highlighting of words in the image and the transcription. In this way the editor or any reader of a work could check the accuracy of the transcriptions instantly, without painstaking inspection of a manuscript image.
 
#### <a name=CAL></a>Calliope
The **multi version document** (MVD) service called ‘Calliope’ (the Muse of history), was intended as the eventual replacement for the XML-based resources. The multi-version document model presents a collection of separate documents regarded as versions of the one work as a single digital entity. This includes all the internal variations in manuscripts as ‘layers’, that is, as successive states in the evolution of a hand-written text, as far as these could be determined. All text in common between the versions and layers is recorded once only, and all differences are treated as divergences from the common text. 

Calliope did not use inline markup like XML. Instead it separated text into plain text and standoff properties. For example, a piece of underlined text could be assigned the property ‘underlined’, and at the same time the property ‘line’, meaning a line of poetry, and ‘stanza’ if also part of a stanza. Unlike XML, which forces these properties and the text they describe into a strict hierarchical relationship, standoff properties can overlap freely. This allows cases like that shown in Figure 2 to describe properties that freely overlap across line-breaks. This can be roughly mimicked in XML but only with the use of ugly hacks.

![Standoff Properties](/images/about/standoff-properties.png)
__Figure 2. Original MS, inline XML and standoff properties__
 
Calliope provided a service for the import of sets of XML transcriptions, which it then merged into MVDs. From the MVDs could be produced various views of the works, including side-by-side comparison view, which highlighted the differences between any two chosen versions or layers, and a work-and-edition view, which showed one main version in a vertical scrolling window, supplemented by a horizontally scrolling apparatus in the form of a table. In both of these views the scrolling of each part was kept automatically in sync with the others so that readers never lost their place.
Calliope also allowed the export of an entire edition as a ‘psef’ (portable scholarly edition format) archive, which was a collection of nested resources and folders in various standard formats, such as HTML, plain text plus standoff markup, XML and MVD. It was envisaged that eventually this exporting facility would enable the creation of an EPUB3 version of an edition that would include everything that defined it: including the images, paratextual material, and annotations.

### <a name=LL></a>Lessons learned
In response to formal user-testing and workshops where the tools were demonstrated to a wider audience, a number of changes were made to the overall design of AustESE. The first and most often-cited drawback was its complexity. There were no professional designers on the development team, and as a result the look and feel of the workbench was inconsistent and clumsy. Certain features also appeared puzzling to users. The project-management aspect – the handling of thousands of images in the repository, and the complex ontology – seemed to be the least used tools. On the other hand, the timeline and editor interfaces were popular. Given that resources to maintain the tool-set after completion of the project would be limited, only features that were really needed could be successfully maintained.

One lesson learned from the user testing and attempts to involve other groups in its development was that the ‘workbench’ idea -- where all tools are provided by a service that users must visit in order to edit and display their texts -- did not necessarily foster collaboration. Many digital humanists seem happier working with technologies and tools with which they are already familiar. Although modularity was built into AustESE from the start, the individual modules still required the workbench to function. It was therefore decided to split the tools off as independent modules, so allowing users to ‘pick and mix’ components for their own purposes. For example, the successful AustESE timeline could be a tool more or less on its own. Similarly the transcription and events editors, TILT and the various import/export functions: all will probably find wider acceptance on their own. 

Another lesson learned was that there was no clear distinction made in AustESE between presentation tools, such as the timeline, and editorial tools such as the transcription editor. Upon reflection, the separation of roles between ‘editors’ (who could change anything) and ‘registered users’ (who could only visualise the results and comment on them) led to a stronger distinction being made between ‘back-end’ and ‘front-end’ tools. Back-end tools are designed for the creators of digital scholarly editions. They include things like editors and project management. Front-end tools, on the other hand, are visualisation aids that provide a high degree of interactivity in the modern Web-2.0 sense: the ability to change features of the visualisation, to annotate texts, to explore the data through searching and textual analysis.

The concept of Project was also seen as placing too much control over the flow of work within a project. The AustESE ontology was only needed in order to maintain explicit links between resources. In a simpler way, a project could be composed instead by means of resources that were only linked implicitly, so obviating the need for an explicit ontology. Addition or removal of individual resources would enhance or refine a project, but not break anything, because the software would search for available resources of a particular type, rather than maintain explicit links between them. Although the sophisticated AustESE ontology may yet prove to serve more complex situations well (e.g. to include reading events and other book-history phenomena via the Event concept or for the purpose of connecting editions of multiple authors) it proved to be unnecessary to deal with the relatively low-level complexities typical of individual nineteenth-century editorial projects such as Harpur’s complete poetry. 

Finally, integration between the XML transcriptions and the multi-version documents was never completed. This led to the undesirable situation, in which texts would exist in two forms: one for editing (XML), which could only be visualised by first exporting it to a second, multi-version document format. If the XML texts were subsequently changed, they had to be re-exported to the MVD format.

### <a name=ECD></a>Ecdosis
Ecdosis arose as a result of these reflections, and was a natural evolution of AustESE. 

The Calliope back-end tools have now been split into separate components. The Events and Transcription editors have been completely rewritten, and TILT has been thoroughly revised. Although the concept of a workbench still exists, it has been reduced to the role of merely connecting together essentially separate back-end and front-end tools. Each tool is designed to run almost independently in the user’s browser as a separate program, and is written entirely in Javascript, the programming language of the modern Web. As such, it can be reused in virtually any Web environment, and not just in the Drupal framework currently in use by the CHCA.

The following modules either already exist or are planned to be developed from prototypes:

### <a name=BET></a>Back End Tools
**MML editor:** allows the user to create and edit transcriptions using a minimal markup language (MML) in a window, with an interactive WYSIWYG preview on one side and a manuscript or book facsimile on the other. Instead of XML, the MML editor uses customised dialects of MarkDown, which is widely used in wikis and already familiar to many humanists. The editor presents to the user only those codes necessary for the structuring of the current document. The codes themselves are also as minimal as can be: white spaces (new lines, spaces, tabs) are used to separate sections and paragraphs, or to indent text, and single-characters are used in pairs, e.g. [...] to designate a page-number or for formats like italics (\*...\*).  Notification of syntax errors is not needed, since the user can see immediately through the live preview whether any mistakes have been made, and correct them if the formatting looks wrong. 

Unlike the AustESE transcription editor, which only worked on one page at a time, the MML Editor handles one document at a time, and the three windows scroll in sync as closely as possible, so that users do not lose their way, the text being aligned across the centre of the display. If a document contains internal corrections the user only edits one readable layer or state of the document at a time. This helps keep the markup simple. When saved, the newly edited version is merged with the other versions so its correspondence on a character-by-character basis with the other versions is made explicit automatically. Menus are provided to assist formatting and to add annotations. A test version of the MML editor can be seen on the [Ecdosis text site](http://ecdosis.net/mml/test/editor)

TILT automatically creates text-to-image links at the word-level. It has two interfaces. The first allows the user to manage the recognition process and to edit the word-shapes and links in a semi-automatic way in difficult cases. The second interface is used to pre-flight the recognition process so that optimal settings can be found to recognise words in a particular document. Once recognition is complete, TILT can highlight both the image of each word and its transcription as the user moves a mouse over the text or taps on a word to provide a visual cue. The output from TILT can also be used to correct transcriptions, in conjunction with the MML editor.

The new **Events Editor** is a simple editor for biographical events that can be used to build a [timeline](http://charles-harpur.org/harpur/timeline) of an author, or reassembled to form a [readable biography](http://charles-harpur.org/harpur/biography). This is a considerable simplification of the AustESE Events editor.

**Project editor** is a simple dialog for describing an editorial project and for binding together related resources. This again is a simplification of the AustESE project editor.

**Index generator**: manages the creation of the search indices. This is a new feature of Ecdosis.

**Uploader** allows importation of external documents into Ecdosis (e.g. in XML), by splitting texts into versions, by separating markup and text, and by automatically merging versions of the one work in different documents. This was originally built for AustESE, and a new version has been incorporated into Ecdosis.

**Backup** will periodically back up the database into stable formats such as plain text, HTML or MVD. This is a planned new module for Ecdosis.

**Export** allows the publication of entire editions in EPUB3 format, or in backup format as plain text plus external properties, or as HTML. 

### <a name=FET></a>Front End Tools
Unlike the back-end tools, the front-end tools require customisation to satisfy the needs, and the look and feel of individual editions. The list here is also not exhaustive. It is envisaged that further tools could be developed in future:

**Single version view**: One version is displayed at a time, with a collapsible apparatus of variants arranged in a scrolling table at the bottom. The two are kept in sync. Also the user may change the main versions at any time, or configure the apparatus to display only certain versions. This is only available at present in the AustESE test interface, and needs to be revised for the CHCA.

**Multi-way compare** compares two or more documents side-by-side with synchronised scrolling, showing differences at the character level. Although this only works currently for two versions at a time, it is intended to expand it to multi-way comparison for Ecdosis. This function supplies the basic information for editorial commentary and stands in for a conventional textual apparatus, which, for large-scale printed editions, notoriously takes thousands of hours to create by hand.

**Timeline** is an interactive display that allows the user to explore the events of an author’s life, and to follow links into the edition. This can be used to present auxiliary information such as letters, publication events, biographical events, or anything related to time. The current interface is based on an existing timeline tool, and contains additional features allowing searching and navigation by year.

**Biography** composes a basic year-by-year biography based on events, containing images and a readable narrative.

**Browse** provides listings of works by title, first lines, subject or anthology, as appropriate to allow the user to browse the collection. It acts as the main point of entry (http://austese.net/tests/). The subject index for the CHCA was semi-automatically generated from subject terms attached to Harpur works in the AustLIT database (http://austlit.edu.au).

**Search** searches each version of every document. Advanced search allows searching via metadata and/or content with Boolean terms. Hits contain links that lead to a single-version view.

**TILT** displays document facsimiles next to their transcriptions and links between the two. As the user moves over or taps a word the shape highlights in the image and vice-versa. Images and text scroll in sync.

**Desmond Schmidt and Paul Eggert**
July 2015

### Notes
<a name=FN1>1)</a> See [Permissions, rights and acknowledgements](node/34) for the history and funding of AustESE. The code for AustESE, and another account of its development, may be found on [Github](https://github.com/uq-eresearch/AustESE/wiki).  Built on [Drupal](http://www.drupal.org), the environment is similar to other content management systems.

<p class=last-modified>Last modified {last-modified}</p>
