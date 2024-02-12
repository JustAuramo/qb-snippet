Config = {

-- IMPORTANT! To configure report text navigate to /html/script.js and find the text you want to replace


-- QB CHARACTER DATA SHOWN IN EVIDENCE REPORT
showFirstname = true,
showLastname = true,
showGender = true,
showBirthdate = false,
showPhone = false,


ShowBloodSplatsOnGround = true, -- Show blood on the ground when player is shot
PlayClipboardAnimation = true, -- Play clipboard animation when reading report

JobRequired = { -- Jobs that can use this system
	['police'] = true
}, 

CloseReportKey = 'BACKSPACE', -- The key used to close the report
PickupEvidenceKey = 'E', -- The key used to pick up evidence

EvidenceAnalysisLocation = {  -- The place where the evidence will be analyzed and report generated
vector3(483.64, -987.63, 30.69),
},
TimeToAnalyze = 10000, -- Time in miliseconds to analyze the given evidence
TimeToFindFingerprints = 3000, -- Time in miliseconds to find fingerprints in a car

--UPDATE V2
RainRemovesEvidence = true, -- Removes evidence when it starts raining!
TimeBeforeCrimsCanDestory = 20, -- Seconds before Criminals can destroy evidence (300 is the time when evidence coolsdown and shows up as WARM)
EvidenceStorageLocation ={ -- The place where all evidence are being archived! You can view old evidence or delete it
vector3(487.42, -987.90, 30.69),
}, 
--

Text = {

	--UPDATE V2
	['not_in_vehicle'] = 'To use this you need to be in a vehicle!',
	['remove_evidence'] = 'Destroy evidence [~r~E~w~]',
	['cooldown_before_pickup'] = 'The evidence is too fresh/hot to destroy',
	['evidence_removed'] = 'Evidence destroyed!',
	['open_evidence_archive'] = '[~b~E~w~] View evidence archive',
	['evidence_archive'] = 'Evidence Archive',
	['view'] = 'View',
	['delete'] = 'Delete',
	['report_list'] = 'Report #',
	['evidence_deleted_from_archive'] = 'Evidence deleted from archive!',
	--

	['evidence_colleted'] = 'Evidence #{number} collected!',
	['no_more_space'] = 'Not enough space for evidence 3/3!',
	['analyze_evidence'] = '[~b~E~w~] Analyze the evidence',
	['evidence_being_analyzed'] = 'The evience is being analyzed by forensics! Please Wait',
	['evidence_being_analyzed_hologram'] = '~b~The evidence is being analyzed',
	['read_evidence_report'] = '[~b~E~w~] Read evidence report',
	['analyzing_car'] = 'The car is being analyzed! Please wait',
	['pick_up_evidence_text'] = 'Kerää Todiste [~r~E~w~]',
	['no_fingerprints_found'] = 'No fingerprints found!',
	['no_evidence_to_analyze'] = "No evidence to analyze!",
	['shell_hologram'] = '~b~ {guncategory} ~w~ luodin hylsy',
	['blood_hologram'] = '~r~Blood Splat',

	['blood_after_0_minutes'] = 'Status: ~r~Tuore',
	['blood_after_5_minutes'] = 'Status: ~y~Tapahtunut Äsken',
	['blood_after_10_minutes'] = 'Status: ~b~Vanhentunut',

	['shell_after_0_minutes'] = 'Tila: ~r~Tuore',
	['shell_after_5_minutes'] = 'Tila: ~y~Tapahtunut Äsken',
	['shell_after_10_minutes'] = 'Tila: ~b~Kylmettynyt',


	['submachine_category'] = 'Submachine',
	['pistol_category'] = 'Pistooli',
	['shotgun_category'] = 'Haulikko',
	['assault_category'] = 'Kivääri',
	['lightmachine_category'] = 'Light Machine Gun',
	['sniper_category'] = 'Sniper',
	['heavy_category'] = 'Raskas Ase'


}
	

}

-- Only change if you know what are you doing!
function SendTextMessage(msg)

		--SetNotificationTextEntry('STRING')
		--AddTextComponentString(msg)
		--DrawNotification(0,1)
		lib.notify({
			title = 'Tutkinta',
			description = msg,
			type = 'success'
		})

		--EXAMPLE USED IN VIDEO
		QBCore.Functions.Notify(msg, "error")

end
