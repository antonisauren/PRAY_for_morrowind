local this = {}

this.data = {
	["ashlander_theology"] = {
		knowledgeRequirement = function()
			return tes3.getJournalIndex{ id = "A2_1_MeetSulMatuul" } >= 44
		end,
		sound = "PRAY\\ash_pray.wav"
	},
	["divine_theology"] = {
		knowledgeRequirement = function()
			return (tes3.getFaction("Imperial Cult").playerJoined or tes3.getFaction("T_Cyr_ImperialCult").playerJoined or tes3.getFaction("T_Cyr_ItinerantPriests").playerJoined or tes3.getFaction("T_Sky_ImperialCult").playerJoined)
		end,
		sound = "PRAY\\div_pray.wav"
	},
	["tribunal_theology"] = {
		knowledgeRequirement = function()
			return tes3.getFaction("Temple").playerJoined
		end,
		sound = "PRAY\\tri_pray.wav"
	},
	["sixth_house_theology"] = {
		knowledgeRequirement = function()
			return tes3.getJournalIndex{ id = "A2_2_6thHouse" } > 41
		end,
		sound = "PRAY\\six_pray.wav"
	},
}

return this