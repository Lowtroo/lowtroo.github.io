(require 'package)
(package-initialize)
(require 'ox-publish)

(setq org-publish-project-alist
      '(
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
        ;; ("site-static"
        ;;  :base-directory "~/pages/static"
        ;;  :publishing-directory "~/pages/public"
        ;;  :publishing-function org-publish-attachment)
        ("pages"
         :components ("index" "Number Theory"))
	)
      )
(org-publish "pages" t nil)
