(require 'package)
(package-initialize)
(require 'ox-publish)

(setq org-publish-project-alist
      '(
	("Number Theory"
         :base-directory "./contents/Number_Theory"
         :publishing-directory "./public/Number_Theory"
	 :recursive nil
	 :with-title t
    	 :with-smart-quotes t
	 :with-author t
	 :with-creator t
         :with-toc t
         :section-numbers t
	 :auto-sitemap t
	 :sitemap-filename "sitemap.org"
	 :sitemap-style list
	 :sitemap-title ""
	 )
	("German Grammars"
         :base-directory "./contents/German_Grammars"
         :publishing-directory "./public/German_Grammars"
	 :recursive nil
	 :with-title t
    	 :with-smart-quotes t
	 :with-author t
	 :with-creator t
         :with-toc t
         :section-numbers t
	 :auto-sitemap t
	 :sitemap-filename "sitemap.org"
	 :sitemap-style list
	 :sitemap-title ""
	 )
	("index"
	 :base-directory "./contents"
	 :publishing-directory "./public"
	 :publishing-function org-html-publish-to-html
	 :recursive nil
	 :with-title t
    	 :with-smart-quotes t
         :with-author t
         :with-creator t
	 :with-toc nil
	 :section-numbers nil
	 )
        ;; ("site-static"
        ;;  :base-directory "~/pages/static"
        ;;  :publishing-directory "~/pages/public"
        ;;  :publishing-function org-publish-attachment)
        ("pages"
         :components ("Number Theory" "German Grammars" "index"))
	)
      )
(org-publish "pages" t nil)
