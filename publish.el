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
	("operating_systems"
         :base-directory "./contents/operating_systems"
         :publishing-directory "./public/operating_systems"
	 :html-doctype "html5"
	 :html-html5-fancy t
	 :html-head-include-default-style nil
	 :html-head ,(my-inline-css "./static/solarized_light.css")
	 :html-postamble t
	 :html-postamble-format (("en" "<p class=\"author\">Author: %a</p>
<p class=\"date\">Created on: %d</p>
<p class=\"creator\">Powered by %c</p>"))
	 
	 :author "Lowtroo"
	 :language "en"
	 :recursive nil
	 :with-title t
    	 :with-smart-quotes t
	 :with-author t
	 :with-creator t
         :with-toc t
	 :with-date t
         :section-numbers t
	 :auto-sitemap t
	 :sitemap-filename "sitemap.org"
	 :sitemap-style list
	 :sitemap-title ""
	 :sitemap-sort-files chronologically
	 )
	("cryptography"
         :base-directory "./contents/cryptography"
         :publishing-directory "./public/cryptography"
	 :html-doctype "html5"
	 :html-html5-fancy t
	 :html-head-include-default-style nil
	 :html-head ,(my-inline-css "./static/solarized_light.css")
	 :html-postamble t
	 :html-postamble-format (("en" "<p class=\"author\">Author: %a</p>
<p class=\"date\">Created on: %d</p>
<p class=\"creator\">Powered by %c</p>"))
	 
	 :author "Lowtroo"
	 :language "en"
	 :recursive t
	 :with-title t
    	 :with-smart-quotes t
	 :with-author t
	 :with-creator t
         :with-toc t
	 :with-date t
         :section-numbers t
	 :auto-sitemap t
	 :sitemap-filename "sitemap.org"
	 :sitemap-style tree
	 :sitemap-title ""
	 :sitemap-sort-files chronologically
	 )
	("data_networks"
         :base-directory "./contents/data_networks"
         :publishing-directory "./public/data_networks"
	 :html-doctype "html5"
	 :html-html5-fancy t
	 :html-head-include-default-style nil
	 :html-head ,(my-inline-css "./static/solarized_light.css")
	 :html-postamble t
	 :html-postamble-format (("en" "<p class=\"author\">Author: %a</p>
<p class=\"date\">Created on: %d</p>
<p class=\"creator\">Powered by %c</p>"))
	 
	 :author "Lowtroo"
	 :language "en"
	 :recursive t
	 :with-title t
    	 :with-smart-quotes t
	 :with-author t
	 :with-creator t
         :with-toc t
	 :with-date t
         :section-numbers t
	 :auto-sitemap t
	 :sitemap-filename "sitemap.org"
	 :sitemap-style tree
	 :sitemap-title ""
	 :sitemap-sort-files chronologically
	 )
	("DGA"
         :base-directory "./contents/DGA"
         :publishing-directory "./public/DGA"
	 :html-doctype "html5"
	 :html-html5-fancy t
	 :html-head-include-default-style nil
	 :html-head ,(my-inline-css "./static/solarized_light.css")
	 :html-postamble t
	 :html-postamble-format (("en" "<p class=\"author\">Author: %a</p>
<p class=\"date\">Created on: %d</p>
<p class=\"creator\">Powered by %c</p>"))
	 
	 :author "Lowtroo"
	 :language "en"
	 :recursive nil
	 :with-title t
    	 :with-smart-quotes t
	 :with-author t
	 :with-creator t
         :with-toc t
	 :with-date t
         :section-numbers t
	 :auto-sitemap t
	 :sitemap-filename "sitemap.org"
	 :sitemap-style list
	 :sitemap-title ""
	 :sitemap-sort-files chronologically
	 )
	("Tools Usage"
         :base-directory "./contents/Tools_Usage"
         :publishing-directory "./public/Tools_Usage"
	 :html-doctype "html5"
	 :html-html5-fancy t
	 :html-head-include-default-style nil
	 :html-head ,(my-inline-css "./static/solarized_light.css")
	 :html-postamble t
	 :html-postamble-format (("en" "<p class=\"author\">Author: %a</p>
<p class=\"date\">Created on: %d</p>
<p class=\"creator\">Powered by %c</p>"))
	 
	 :author "Lowtroo"
	 :language "en"
	 :recursive nil
	 :with-title t
    	 :with-smart-quotes t
	 :with-author t
	 :with-creator t
         :with-toc t
	 :with-date t
         :section-numbers t
	 :auto-sitemap t
	 :sitemap-filename "sitemap.org"
	 :sitemap-style list
	 :sitemap-title ""
	 :sitemap-sort-files chronologically
	 )
	("Number Theory"
         :base-directory "./contents/Number_Theory"
         :publishing-directory "./public/Number_Theory"
	 :html-doctype "html5"
	 :html-html5-fancy t
	 :html-head-include-default-style nil
	 :html-head ,(my-inline-css "./static/solarized_light.css")
	 :html-postamble t
	 :html-postamble-format (("en" "<p class=\"author\">Author: %a</p>
<p class=\"date\">Created on: %d</p>
<p class=\"creator\">Powered by %c</p>"))
	 
	 :author "Lowtroo"
	 :language "en"
	 :recursive nil
	 :with-title t
    	 :with-smart-quotes t
	 :with-author t
	 :with-creator t
         :with-toc t
	 :with-date t
         :section-numbers t
	 :auto-sitemap t
	 :sitemap-filename "sitemap.org"
	 :sitemap-style list
	 :sitemap-title ""
	 :sitemap-sort-files chronologically
	 )
	("German Grammars"
         :base-directory "./contents/German_Grammars"
         :publishing-directory "./public/German_Grammars"
	 :html-doctype "html5"
	 :html-html5-fancy t
	 :html-head-include-default-style nil
	 :html-head ,(my-inline-css "./static/solarized_light.css")
	 :html-postamble t
	 :html-postamble-format (("en" "<p class=\"author\">Author: %a</p>
<p class=\"date\">Created on: %d</p>
<p class=\"creator\">Powered by %c</p>"))
	 
	 :author "Lowtroo"
	 :language "en"
	 :recursive nil
	 :with-title t
    	 :with-smart-quotes t
	 :with-author t
	 :with-creator t
         :with-toc t
	 :with-date t
         :section-numbers t
	 :auto-sitemap t
	 :sitemap-filename "sitemap.org"
	 :sitemap-style list
	 :sitemap-title ""
	 :sitemap-sort-files chronologically
	 )
	("index"
	 :base-directory "./contents"
	 :publishing-directory "./public"
	 :publishing-function org-html-publish-to-html
	 :html-head-include-default-style nil
	 :html-head ,(my-inline-css "./static/solarized_light.css")
	 :html-postamble t
	 :html-postamble-format (("en" "<p class=\"creator\">Powered by %c</p>"))
	 :html-doctype "html5"
	 :language "en"
	 :recursive nil
	 :with-title t
    	 :with-smart-quotes t
         :with-author nil
         :with-creator t
	 :with-toc nil
	 :section-numbers nil
	 )
        ;; ("site-static"
        ;;  :base-directory "~/pages/static"
        ;;  :publishing-directory "~/pages/public"
        ;;  :publishing-function org-publish-attachment)
        ("pages"
         :components ("operating_systems" "cryptography" "data_networks" "DGA" "Tools Usage" "Number Theory" "German Grammars" "index"))
	)
      )
(org-publish "pages" t nil)
