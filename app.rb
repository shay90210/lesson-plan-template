require 'sinatra'
require 'erb'

get "/" do
  @months = {
    "January" => {
      title: "Shakespeare: Language, Impulsivity, & Consequence",
      grade: "Grades 9-10",
      subject: "Reading & Writing",
      objective: "Students will analyze Shakespeare’s language and character choices to understand how impulsivity drives action and consequence, and will evaluate how timeless themes of human behavior are conveyed through literary devices, dialogue, and plot.",
      standards: [
        "CCSS.ELA-LITERACY.RL.9-10.1 – Cite strong textual evidence.",
        "CCSS.ELA-LITERACY.RL.9-10.4 – Determine meaning of words/phrases, including figurative language.",
        "CCSS.ELA-LITERACY.RL.9-10.3 – Analyze how complex characters develop and interact."
      ],
      materials: [
        "A Copy of Romeo and Juliet by William Shakespeare",
        "Shakespearean language glossary"
      ],
      vocabulary: ["Soliloquy", "Foreshadowing", "Tragedy", "Character Motivation", "Conflict"],
      prior_knowledge: "Understanding of basic human emotions and motivations",
      project: "Character Choices Case Study"
    },
    "February" => {
      title: "Voices of Leadership: Inspiring Speeches & Persuasive Writing",
      grade: "Grades 9-10",
      subject: "Reading & Writing",
      objective: "Students will examine the techniques and strategies used by influential leaders to persuade, inspire, and motivate audiences, and will create their own speeches or written pieces demonstrating effective rhetorical and persuasive skills.",
      standards: [
        "CCSS.ELA-LITERACY.RI.9-10.6 – Determine an author’s purpose and analyze rhetoric.",
        "CCSS.ELA-LITERACY.W.9-10.1 – Write arguments to support claims using valid reasoning.",
        "CCSS.ELA-LITERACY.SL.9-10.4 – Present information clearly and persuasively."
      ],
      materials: [
        "“I Have a Dream” speech by Dr. Martin Luther King Jr.",
        "“The Danger of a Single Story” by Chimamanda Ngozi Adichie (TED Talk transcript)",
        "Rhetorical device graphic organizer (ethos/pathos/logos)"
      ],
      vocabulary: ["Ethos", "Pathos", "Logos", "Rhetorical Question", "Call to Action"],
      prior_knowledge: "Awareness of real-world issues or causes",
      project: "Rhetorical Strategy Remix"
    },
    "March" => {
      title: "Lights, Camera, Literacy",
      grade: "Grades 9-10",
      subject: "Reading & Writing",
      objective: "Students will interpret and analyze films as visual texts, identifying how cinematic techniques such as camera angles, sound, lighting, and narrative structure convey meaning, develop character, and communicate themes.",
      standards: [
        "CCSS.ELA-LITERACY.RL.9-10.7 – Analyze representations of a subject across mediums (including film).",
        "CCSS.ELA-LITERACY.SL.9-10.2 – Integrate and evaluate information presented in diverse media formats.",
        "CCSS.ELA-LITERACY.RI.9-10.7 – Analyze various accounts told in different mediums."
      ],
      materials: [
        "Film: Hidden Figures (2016)",
        "Film analysis booklet focusing on camera angles, sound, lighting, and narrative elements"
      ],
      vocabulary: ["Cinematography", "Soundtrack/Score", "Lighting", "Shot Composition", "Theme"],
      prior_knowledge: "Familiarity with common visual media",
      project: "Scene Deconstruction Visual Essay"
    },
    "April" => {
      title: "The Art of Expression: Poetry, Music, & Spoken Word",
      grade: "Grades 9-10",
      subject: "Reading & Writing",
      objective: "Students will explore how poets, musicians, and spoken word artists use language, rhythm, and imagery to express ideas, emotions, and cultural identity, and will create original works that reflect their own voice and perspective.",
      standards: [
        "CCSS.ELA-LITERACY.RL.9-10.5 – Analyze author’s choices in structure (poetry, sound, rhythm).",
        "CCSS.ELA-LITERACY.RL.9-10.4 – Analyze connotation, figurative language, and tone.",
        "CCSS.ELA-LITERACY.W.9-10.3 – Write narratives or creative pieces with effective technique and style."
      ],
      materials: [
        "Book: The Poet X by Elizabeth Acevedo",
        "A notebook or digital journal for poetry writing"
      ],
      vocabulary: ["Metaphor", "Imagery", "Rhythm", "Tone", "Alliteration"],
      prior_knowledge: "Experience engaging with music or oral performance",
      project: "Meaning in Motion: Multimedia Poetry Analysis"
    },
    "May" => {
      title: "Creating Digital Content",
      grade: "Grades 9-10",
      subject: "Reading & Writing",
      objective: "Students will develop digital literacy skills by producing original content for online or multimedia platforms, applying critical thinking, ethical standards, audience awareness, and effective communication strategies.",
      standards: [
        "CCSS.ELA-LITERACY.W.9-10.6 – Use technology to produce and publish writing.",
        "CCSS.ELA-LITERACY.SL.9-10.5 – Make strategic use of digital media in presentations.",
        "CCSS.ELA-LITERACY.W.9-10.8 – Gather, evaluate, and integrate information from digital sources."
      ],
      materials: [
        "Book: Understanding Comics by Scott McCloud (for visual literacy + digital storytelling concepts)",
        "A Chromebook/laptop with access to Canva, Google Sites, or a classroom-safe video editor"
      ],
      vocabulary: ["Digital Footprint", "Media Literacy", "Copyright & Fair Use", "Audience Engagement", "Storyboard"],
      prior_knowledge: "Comfort using basic digital tools or apps",
      project: "Digital Message Design Audit"
    }
  }

  erb :index
end

# Temporary storage (resets when server restarts)
LESSON_NOTES = {}

get '/' do
  @months = lesson_data
  @notes = LESSON_NOTES
  erb :index
end

post '/notes' do
  month = params[:month]
  note  = params[:note]

  LESSON_NOTES[month] = note

  redirect '/'
end

def lesson_data
  {
    "September" => { title: "Introduction to Writing" },
    "October"   => { title: "Narrative Writing" },
    "November"  => { title: "Informational Texts" }
  }
end