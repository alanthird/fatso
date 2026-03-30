;;; fatso-theme.el --- Custom face theme for Emacs  -*- lexical-binding:t -*-

;; Theme using the colours from Kristoffer Grönlund's (krig@koru.se)
;; Wombat theme included in GNU Emacs. The rationale for making a new
;; version is that the Wombat shipped with Emacs uses notably
;; different colours from every other version of Wombat available; the
;; original Vim Wombat, by Lars H. Nielsen, contains very few colours.

;; https://en.wikipedia.org/wiki/Fatso_the_Fat-Arsed_Wombat

;;; Code:

;;;###theme-autoload
(deftheme fatso
  "Medium-contrast faces with a dark gray background."
  :background-mode 'dark
  :kind 'color-scheme)

(let ((class '((class color) (min-colors 89))))
  (let* ((blue0      "#5b98c2")
         (blue1      "#8ac6f2")
         (bluegreen0 "#3f9f9e")
         (bluegreen1 "#70cecc")
         (brown0     "#ccaa8f")
         (brown1     "#ddaa6f")
         (brown2     "#edc4a3")
         (gray0      "#242424")
         (gray1      "#303030")
         (gray2      "#333333")
         (gray3      "#384048")
         (gray4      "#444444")
         (gray5      "#656565")
         (gray6      "#857b6f")
         (gray7      "#99968b")
         (gray8      "#a0a8b0")
         (green0     "#92a65e")
         (green1     "#95e454")
         (green2     "#cae682")
         (purple0    "#333366")
         (purple1    "#64619a")
         (purple2    "#a6a1de")
         (red0       "#b85149")
         (red1       "#e5786d")
         (white0     "#e7f6da")
         (white1     "#f6f3e8")
         (white2     "#ffffff")
         (orange     "#F29112")
         (outline (list green1 "#9bce82" "#a1b8b0" purple2 "#b1a4cb" "#baa6b7" "#c3a8a3" brown0)))

    (custom-theme-set-faces
     'fatso
     `(cursor ((,class (:background ,orange))))

     `(default ((,class (:background ,gray0 :foreground ,white1))))
     `(shadow ((,class (:foreground ,gray8))))
     `(warning ((,class (:foreground ,brown1))))
     `(error ((,class (:foreground ,red0 :inherit bold))))

     ;; Highlighting faces
     `(fringe ((,class (:background ,gray1))))
     `(highlight ((,class (:background ,gray4 :foreground ,white2
			               :underline t))))
     `(region ((,class (:background ,gray4))))
     `(secondary-selection ((,class (:background ,purple0 :foreground ,white1))))

     `(isearch ((,class (:background ,gray2 :foreground ,gray6))))
     `(isearch-fail ((,class (:background ,red0 :foreground ,white1))))
     `(isearch-group-1 ((,class (:background ,purple1 :foreground ,purple2))))
     `(isearch-group-2 ((,class (:background ,bluegreen0 :foreground ,bluegreen1))))
     `(match ((,class (:background ,blue0 :foreground ,white1))))

     `(lazy-highlight ((,class (:background ,gray3 :foreground ,gray8))))

     ;; Mode line faces
     `(mode-line ((,class (:background ,gray4 :foreground ,white1))))
     `(mode-line-inactive ((,class (:background ,gray4 :foreground ,gray6))))

     ;; Escape and prompt faces
     `(minibuffer-prompt ((,class (:foreground ,red1))))
     `(escape-glyph ((,class (:foreground ,brown1 :inherit bold))))
     `(homoglyph ((,class (:foreground ,brown1 :inherit bold))))

     ;; Font lock faces
     `(font-lock-builtin-face ((,class (:foreground ,red1))))
     `(font-lock-comment-face ((,class (:foreground ,gray7))))
     `(font-lock-constant-face ((,class (:foreground ,red1))))
     `(font-lock-function-name-face ((,class (:foreground ,blue1 :inherit bold))))
     `(font-lock-keyword-face ((,class (:foreground ,blue1))))
     `(font-lock-string-face ((,class (:foreground ,green1))))
     `(font-lock-type-face ((,class (:foreground ,purple2))))
     `(font-lock-variable-name-face ((,class (:foreground ,green2))))
     `(font-lock-warning-face ((,class (:foreground ,brown1))))
     `(font-lock-doc-face ((,class (:foreground ,brown0))))

     ;; Help faces
     `(help-key-binding ((,class (:background ,gray2 :foreground ,white1))))

     ;; Button and link faces
     `(link ((,class (:foreground ,blue1 :underline t))))
     `(link-visited ((,class (:foreground ,red1 :underline t))))
     `(header-line ((,class (:background ,gray1 :foreground ,white0))))

     ;; Outline faces
     `(outline-1 ((,class (:foreground ,(nth 0 outline)))))
     `(outline-2 ((,class (:foreground ,(nth 1 outline)))))
     `(outline-3 ((,class (:foreground ,(nth 2 outline)))))
     `(outline-4 ((,class (:foreground ,(nth 3 outline)))))
     `(outline-5 ((,class (:foreground ,(nth 4 outline)))))
     `(outline-6 ((,class (:foreground ,(nth 5 outline)))))
     `(outline-7 ((,class (:foreground ,(nth 6 outline)))))
     `(outline-8 ((,class (:foreground ,(nth 7 outline)))))

     ;; Gnus faces
     `(gnus-group-news-1 ((,class (:inherit bold :foreground ,(nth 0 outline)))))
     `(gnus-group-news-1-empty ((,class (:foreground ,(nth 0 outline)))))
     `(gnus-group-news-2 ((,class (:inherit bold :foreground ,(nth 1 outline)))))
     `(gnus-group-news-2-empty ((,class (:foreground ,(nth 1 outline)))))
     `(gnus-group-news-3 ((,class (:inherit bold :foreground ,(nth 2 outline)))))
     `(gnus-group-news-3-empty ((,class (:foreground ,(nth 2 outline)))))
     `(gnus-group-news-4 ((,class (:inherit bold :foreground ,(nth 3 outline)))))
     `(gnus-group-news-4-empty ((,class (:foreground ,(nth 4 outline)))))
     `(gnus-group-news-5 ((,class (:inherit bold :foreground ,(nth 5 outline)))))
     `(gnus-group-news-5-empty ((,class (:foreground ,(nth 5 outline)))))
     `(gnus-group-news-low ((,class (:foreground ,gray7))))
     `(gnus-group-news-low-empty ((,class (:foreground ,gray5))))
     `(gnus-group-mail-1 ((,class (:inherit bold :foreground ,(nth 0 outline)))))
     `(gnus-group-mail-1-empty ((,class (:foreground ,(nth 0 outline)))))
     `(gnus-group-mail-2 ((,class (:inherit bold :foreground ,(nth 1 outline)))))
     `(gnus-group-mail-2-empty ((,class (:foreground ,(nth 1 outline)))))
     `(gnus-group-mail-3 ((,class (:inherit bold :foreground ,(nth 2 outline)))))
     `(gnus-group-mail-3-empty ((,class (:foreground ,(nth 2 outline)))))
     `(gnus-group-mail-low ((,class (:foreground ,gray7))))
     `(gnus-group-mail-low-empty ((,class (:foreground ,gray5))))
     `(gnus-header-content ((,class (:foreground ,blue1))))
     `(gnus-header-from ((,class (:inherit bold :foreground ,green1))))
     `(gnus-header-subject ((,class (:foreground ,green2))))
     `(gnus-header-name ((,class (:foreground ,blue1 :inherit bold))))
     `(gnus-header-newsgroups ((,class (:foreground ,brown2 :inherit italic))))
     `(gnus-header ((,class (:foreground ,green1))))

     ;; Message faces
     `(message-header-name ((,class (:foreground ,blue1 :inherit bold))))
     `(message-header-cc ((,class (:foreground ,green1))))
     `(message-header-newsgroups ((,class (:foreground ,brown2 :inherit italic))))
     `(message-header-other ((,class (:foreground ,green1))))
     `(message-header-subject ((,class (:foreground ,green2))))
     `(message-header-to ((,class (:foreground ,bluegreen1))))
     `(message-separator ((,class (:foreground ,red1 :inherit bold))))
     `(message-cited-text-1 ((,class (:foreground ,(nth 0 outline)))))
     `(message-cited-text-2 ((,class (:foreground ,(nth 1 outline)))))
     `(message-cited-text-3 ((,class (:foreground ,(nth 2 outline)))))
     `(message-cited-text-4 ((,class (:foreground ,(nth 3 outline)))))
     
     ;; ANSI colors
     `(ansi-color-black ((,class (:background ,gray0 :foreground ,gray0))))
     `(ansi-color-red ((,class (:background ,red0 :foreground ,red0))))
     `(ansi-color-green ((,class (:background ,green0 :foreground ,green0))))
     `(ansi-color-yellow ((,class (:background ,brown0 :foreground ,brown0))))
     `(ansi-color-blue ((,class (:background ,blue0 :foreground ,blue0))))
     `(ansi-color-magenta ((,class (:background ,purple1 :foreground ,purple1))))
     `(ansi-color-cyan ((,class (:background ,bluegreen0 :foreground ,bluegreen0))))
     `(ansi-color-white ((,class (:background ,white1 :foreground ,white1))))
     `(ansi-color-bright-black ((,class (:background ,gray4 :foreground ,gray4))))
     `(ansi-color-bright-red ((,class (:background ,red1 :foreground ,red1))))
     `(ansi-color-bright-green ((,class (:background ,green1 :foreground ,green1))))
     `(ansi-color-bright-yellow ((,class (:background ,brown2 :foreground ,brown2))))
     `(ansi-color-bright-blue ((,class (:background ,blue1 :foreground ,blue1))))
     `(ansi-color-bright-magenta ((,class (:background ,purple2 :foreground ,purple2))))
     `(ansi-color-bright-cyan ((,class (:background ,bluegreen1 :foreground ,bluegreen1))))
     `(ansi-color-bright-white ((,class (:background ,white2 :foreground ,white2)))))))

(provide-theme 'fatso)

;;; fatso-theme.el ends here
