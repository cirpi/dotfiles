(setq org-capture-templates
      '(
	("t" "Template to create todo entries" entry
	 (file+headline "sirpi.org" "Todo Entry")
	 "* TODO  %?  %^g \n SCHEDULED: %t")
	("q" "Quick Notes" item
	 (file+headline "quick_notes.org" "Quick Notes")
	 "- %^{Title} \n Started: %t \n %?")
	))

(setq org-directory "/home/sirpi/Documents/org")







(provide 'org-templates)
