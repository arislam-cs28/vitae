extends Control

var question_input = []
var info_input = []

func _ready() -> void:
	$Flashcards.hide()


func _on_return_pressed() -> void:
	get_tree().change_scene_to_file("res://home_screen.tscn")


func _on_basics_pressed() -> void:
	question_input = [
		"What is biology?",
		"What is a hypothesis?",
		"What is a theory?",
		"What is the scientific method?",
		"What are cells?",
		"What are the characteristics of life?",
		"What is order?",
		"What is processing energy?",
		"What is homeostasis?",
		"What is growth?",
		"What is reproduction?",
		"What is response to stimuli?",
		"What is evolution?",
		"What are natural sciences?",
		"What are the theories of biology?"
	]
	
	info_input = [
		"Biology is the study of life.",
		"A hypothesis is a suggested, testable explanation for a phenomenon.",
		"A theory is a tested and confirmed explanation for a phenomenon.",
		"Ask a question, do research on the question, construct a hypothesis, test an experiment, go back and iterate until it works, analyze data, draw conclusions, and present your findings, before going back to step 1!",
		"These are the main building blocks of biology and the smallest unit of life that can exist on its own to perform larger, specialized functions.",
		"Order, energy production and processing, homeostasis, growth, reproduction, response to stimuli, evolution",
		"All living things are organized. Be it in domains, kingdoms, tissues, organ systems, cell structures… there is always a hierarchy that biological organisms follow. They are specialized and coordinated.",
		"Living organisms process energy so that they can conduct all of the functions they need to do. This can be otherwise summed up as metabolism.",
		"Homeostasis is the regulation of an organism’s internal environment. This is to keep stable.",
		"All living organisms grow. Be it growing size-wise, or gaining more cells from cell division, growth occurs.",
		"Reproduction is asexual or sexual. New organisms may be created from the gametes of two parents, or be asexually produced from just one parent.",
		"Living organisms always respond to changes in their environment. This can include a plant exhibiting a tropism and going towards a stimulus, like the sun, or the pupil of an eye dilating due to the lack of light.",
		"Organisms evolve, so their genetic makeup changes over time, as they adapt to the world. This is usually a result of natural selection, because species must adapt to survive in the ever-changing environment.",
		"These are the studies of anything related to the physical world.",
		"There are three pillars of biology: cell theory, where every living organism is built from cells; gene theory, where every living organism passes down their genetic information with genes; and the theory of evolution, where organisms have evolved due to mutations."
	]
	
	UserStats.question = question_input
	UserStats.information = info_input
	
	$Flashcards.load_flashcards()
	$Flashcards.show()


func _on_molecules_pressed() -> void:
	question_input = [
		"What is the commonality of all cells?",
		"What are the 4 main macromolecules?",
		"What are monomers?",
		"What are polymers?",
		"What are carbohydrates?",
		"What are lipids?",
		"What are proteins?",
		"What are nucleic acids?"
	]
	
	info_input = [
		"Every cell or orgenelle within a cell is made up from some of the main 4 macromolecules and others as well. The one thing in common? These macromolecules contain carbon.",
		"These molecules are carbohydrates, lipids, proteins, and nucleic acids.",
		"Monomers are the building blocks for polymers.",
		"Polymers are large molecules made of monomers.",
		"Carbohydrates are made up of monosaccharides and other saccharides, to provide cells with energy. It includes glucose, sucrose, starch, and others.",
		"Lipids are made up of fatty acids and glycerol. They provide cells with long term energy. This includes saturated and unsaturated fats, phospholipids, steroids, oils, etc.",
		"Proteins are made up of amino acids and provide cell structure, and supplement chemical reactions. Some examples are collagen, actin, and myosin.",
		"Nucleic acids are made up of nucleotides and store, as well as pass genetic information. Some examples are deoxyribonucleic acid (DNA) and ribonucleic acid (RNA)."
	]
	
	UserStats.question = question_input
	UserStats.information = info_input
	
	$Flashcards.load_flashcards()
	$Flashcards.show()


func _on_organelles_pressed() -> void:
	question_input = [
		"What is the nucleus?",
		"What is the nucleolus?",
		"What is the nuclear membrane?",
		"What are ribosomes?",
		"What is the endoplasmic reticulum?",
		"What is the golgi apparatus?",
		"What are chloroplasts?",
		"What are mitochondria?",
		"What are centrioles?",
		"What are vacuoles?",
		"What are lysosomes?",
		"What are cell walls?",
		"What are cell membranes?",
		"What is cytoplasm?"
		
	]
	
	info_input = [
		"The nucleus is the organelle that stores cellular DNA—genetic information—that controls the processes of the cell.",
		"The nucleolus is the substructure of the nucleus which contains RNA, which helps to translate DNA to the cell.",
		"The nuclear membrane is the double layer that covers the nucleus. ",
		"Ribosomes are composed of two structures that look like hamburger buns and float in cytoplasm or get attached to rough endoplasmic reticulum. They produce proteins from information given by RNA.",
		"Endoplasmic reticulum is a membranous organelle that is attached to the nucleus. Rough ER has ribosomes embedded in its membrane and produces proteins. Smooth ER produces lipids.",
		"Golgi apparatus is like the packaging center of organelles. Proteins from the ER go to the golgi apparatus, and then get modified by codes in proteins' amino acids. They are then put into vesicles.",
		"Chloroplasts contain chlorophyll, a pigment, for photosynthesis. Chloroplasts turn water and co2 into glucose, to provide energy to autotrophs.",
		"Mitochondria is the “powerhouse of the cell”. These are organelles similar to chloroplasts, in the sense that they do cell respiration. They convert glucose into usable energy, ATP (adenosine triphosphate).",
		"Centrioles are formed by microtubules and are like skeletons. They decide where all of the organelles go in the cell.",
		"Vacuoles are membrane bound organelles that can contain water, molecules to store, or waste from cellular digestion.",
		"A lysosome is an organelle in almost all eukaryotic cells, and it is kind of like an explosion maker. It works to digest molecules or old cellular structures.",
		"Cell walls surround certain cells–not animal cells, certain other eukaryotes, and certain prokaryotes—and cover the cell membrane. Their main function is to provide structure to the cell.",
		"The cell membrane is the semipermeable membrane that separates the inside of a cell from the outside of a cell. It is composed of a lipid bilayer.",
		"Cytoplasm is the jellylike fluid that is inside of a cell membrane. It holds all of the organelles in place, and offers transport as well."
		
	]
	
	
	UserStats.question = question_input
	UserStats.information = info_input
	
	$Flashcards.load_flashcards()
	$Flashcards.show()
