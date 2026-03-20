(require 'package)
(package-initialize)
(require 'ox-publish)
(setq org-publish-project-alist
      '(
	("Number Theory"
         :base-directory "./contents/Number_Theory"
         :publishing-directory "./public"
         :publishing-function org-html-publish-to-html
	 :recursive t
    	 :with-title t
    	 :with-smart-quotes t
         :with-author t
         :with-creator t
         :with-toc t
         :section-numbers t)
        ;; ("site-static"
        ;;  :base-directory "~/pages/static"
        ;;  :publishing-directory "~/pages/public"
        ;;  :publishing-function org-publish-attachment)
        ("pages"
         :components ("Number Theory"))
	)
      )
(org-publish "pages" nil nil)
