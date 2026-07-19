extends Control

# list of all of dr. vitae's one liners for research, study advice, and his random experiences
# all of the variables for the research advice column with Vitae
var research = [ 
	"I used to dissect flies back in high school, y'know. Be careful not to pinch their anterior ends too tightly. Or their guts ooze out from their heads.",
	"I heard you're interested in " + UserStats.interest + ". You should try going to a lab besides mine someday. Get out of this hovel and make connections!",
	"Did you know that I nearly went blind in one eye? That's from peroxide hitting my eyes during a chem experiment in uni. I had to run to the eye-wash station.",
	"I once mixed potassium and H2O on accident because my PhD mentor's other mentee didn't label their chems. Put your initials, the compound, and date on every vial, kid.",
	"If you ask me where the freakin' phosphate buffered saline is again, I'm sending you to my mate's lab. Learn where the chemicals are! [i]Please.[/i]",
	"Just 'cause I provide you with a manual for a procedure doesn't mean you should follow it blindly. Who knows if it's crap? Think. Critically.",
	"Ouch! My gloves are gonna get cut if I find another stray piece of glass on the floor. This is why I lecture the kids to [i]tell me[/i] if something breaks.",
	"I'd rather you piss me off with 500+ questions than not ask any at all. I once asked 37 under a 3 hour lab period. My PhD mentor duct-taped my mouth. He loved me.",
	"If [i]you think[/i] you can finish 20+ pages of lab procedures in under 2 hours, stop thinking. Space out your lab time, for g- for cells' sake!",
	"Why am I not hitting the bench today? Oh. Well, I slept at 5. No, not PM, I meant AM. If I work with Tris-HCl when I'm this brain-dead, I'm exploding the lab.",
	"Why are you here without a notebook? Shoo. Shooooooo. Come back when you've got a book. If we don't take notes in this lab, we're getting our precious work stolen.",
	"My PhD mentor said he'd hit me with a vial if I broke equipment. He never did. It happens, dude. Don't worry about it. I'm not an [i]evil[/i], mad scientist, just mad.",
	"Ugh... I'm out of Giemsa stain. Wait here and keep the lab from imploding while I buy more. Even if I feel like crap, I'm not leaving unreplenished bottles around."
]

var index_res = -1
var current_res = research[index_res]


# all of the variables for the studying advice with Vitae
var studying = [
	"Don't give up on your dreams. I once got a 23 on a chem test, and still got this far, right?",
	"Sometimes life slams you in the head with textbooks until you go insane, and that's okay. Keep fighting.",
	"Try active recall. Or comparisons. Think of your chemicals exploding in the lab. Then the compounds used to make 'em.",
	"You ever see PhD students defend their thesis? The Feynman technique is similar. Try it out.",
	"Motivation ain't gonna hit you. You have to slam your head into a lab bench until you're motivated to study instead. It works, sort of.",
	"Think of studying as lab procedures. You put similar steps together. So put similar studying concepts together too.",
	"Y'know, I always drew cell structures to memorize organelles and their positions. Juuuust some food for thought.",
	"My PhD mentor almost kicked me onto the streets because I kept falling asleep. If you're tired, you won't perform well.",
	"Man, treat yourself. Not hard. Finished a topic? Great, have a cookie. I take a nap after every successful experiment. 'M old.",
	"Whenever I failed a test, I used to journal my answers and nitpick every mistake. It works surprisingly well in the lab, too.",
	"Wait, you're doing crap with " + UserStats.interest + " today? Without a notebook? Seriously, start drawing diagrams for active recall.",
	"Sometimes you have to hit up your lab partner at 2AM while sobbing, with only the goal of \" " + UserStats.study_motivation + "\" in your head.",
	"You'll survive if you cram studying 5 minutes before a test. You might die inside, but that's the cost of procrastination, yeah?"
]
var index_stu = -1
var current_stu = studying[index_stu]

# all of the variables for the experiences of Vitae
var experiences = [
	"5 years ago, I learned that you shouldn't breathe in methylene blue. Not a good idea. Couldn't breathe very well.",
	"Do I seriously look like I'm pushing 35? I'm only 29! Blame it on the caffeine. Labwork does that to you.",
	"15 years ago, I decided to pursue biology. Quite the experience. Needless to say, I'm not studying anymore.",
	"What do I have a PhD in? Huh. Glad you asked. Studied astrobiological epigenetics on extremophiles. Fun times.",
	"Is it true that the other professors are calling me a \"mad scientist?\" Huh. My biggest accomplishment in a while.",
	"Wait! What the... Don't sniff that! The ethylene glycol is going to put you into metabolic acidosis!",
	"Someone once asked me if they could study my brain structure after getting my doctorate. You hear everything these days.",
	"Hm. If I could be a plant cell versus an animal cell, I'd choose a plant cell. That cell wall has to be like a blanket.",
	"Why's my hair blue? Oh. Workin' in the lab had me so stressed, I got grey strands. I accidentally bought blue hair dye instead of black.",
	"Oh, y'know, I had an ex-lab partner like you, kid. She also studied " + UserStats.interest + ". Now she's at the national laboratory on some top-secret stuff.",
	"I was like you, once. My only goal in studying was " + UserStats.study_motivation + ". Harsh days. I miss graduate school sometimes. Then I remember I can sleep now.",
	"What are they feeding lab rats these days? I swear one tried to bite me last night. The supplier wants me 6 feet under or something.",
	"Are you asking me if I've got a perpetual smile to mask the fact that I haven't slept properly since I was 13? You didn't ask? Ah."
]

var index_exp = -1
var current_exp = experiences[index_exp]


# Called when the node enters the scene tree for the first time.
func _ready() -> void: # hiding all splashscreens at the start of the game
	$Advice.hide()
	$Experiences.hide()
	$Study.hide()

func _on_return_pressed() -> void:
	get_tree().change_scene_to_file("res://home_screen.tscn") # back to the homescreen

func _on_leave_pressed() -> void: # hiding the lab advice panel
	$Advice.hide()


func _on_lab_advice_pressed() -> void: # pulling up the lab advice panel
	$Experiences.hide()
	$Study.hide()
	index_res = randi_range(0, research.size()-1)
	current_res = research[index_res]
	$Advice/RichTextLabel.text = current_res # randomizing text from array
	UserStats.questions_asked += 1
	$Advice.show()


func _on_study_motivation_pressed() -> void: # pulling up the study motivation panel
	$Experiences.hide()
	$Advice.hide()
	index_stu = randi_range(0, studying.size()-1)
	current_stu = studying[index_stu]
	$Study/RichTextLabel.text = current_stu # randomizing text from array
	UserStats.questions_asked += 1 
	$Study.show()


func _on_vitae_experiences_pressed() -> void: # pulling up the experiences panel
	$Advice.hide()
	$Study.hide()
	index_exp = randi_range(0, experiences.size()-1)
	current_exp = experiences[index_exp]
	$Experiences/RichTextLabel.text = current_exp # randomizing text from array
	UserStats.interactions += 1
	$Experiences.show()
	

func _on_go_pressed() -> void: # hiding the experiences screen
	$Experiences.hide()

func _on_away_pressed() -> void: # hiding the studying advice screen
	$Study.hide()
