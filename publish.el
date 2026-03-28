(require 'package)
(package-initialize)
(require 'ox-publish)

(defun my-inline-css (file)
  (format "<style type=\"text/css\">\n%s\n</style>\n"
          (with-temp-buffer
            (insert-file-contents file)
            (buffer-string))))

(setq org-publish-project-alist
      `(
	("Number Theory"
         :base-directory "./contents/Number_Theory"
         :publishing-directory "./public/Number_Theory"
	 :html-head ,(my-inline-css "./static/stylish_white.css")
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
	 :html-head ,(my-inline-css "./static/stylish_white.css")
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
	 :html-head ,(my-inline-css "./static/stylish_white.css")
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
