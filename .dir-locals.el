(
 (nil .
  (
   (org-roam-capture-templates
    . (
       ("d" "default" plain "%?" :target (file+head
                                          "${slug}.org" "#+title: ${title}
"
                                          ))
       ))
   (org-agenda-custom-commands
    . (
         ("1" "Level 1 Agenda"
          (
           (tags "TODO=\"TODO\"+LEVEL=1"
                  ((org-agenda-overriding-header "Level 1 Todos:\n")
                   (org-agenda-prefix-format "%-8c %-15b %-8s")))
           (agenda "TODO=\"TODO\"+LEVEL=1"
                  ((org-agenda-overriding-header "Level 1 agenda:\n")))
          ))
         ("se" "Software Engineering"
          (
           (tags "TODO=\"TODO\"+CATEGORY=\"SENG\""
                  ((org-agenda-overriding-header "Seng Todos:\n")
                   (org-agenda-prefix-format "%-8c %-15b %-8s")))
           (agenda "TODO=\"TODO\"+CATEGORY=\"SENG\""
                  ((org-agenda-overriding-header "Seng agenda:\n")))
          )
         )
         ("2" "Level 2 Agenda"
           ((tags "TODO=\"TODO\"+LEVEL=2"
                  ((org-agenda-overriding-header "Level 2 Todos:\n")
                   (org-agenda-prefix-format "%-8c %-15b %-8s"))))
           (agenda "TODO=\"TODO\"+LEVEL=2"
                  ((org-agenda-overriding-header "Level 2 agenda:\n")))
         )
         ))
   (org-roam-extract-new-file-path "${slug}.org")
   ))
 (org-mode . ((setq org-use-property-inheritance t)))
)
