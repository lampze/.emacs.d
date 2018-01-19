(require-package 'tidy)
(maybe-require-package 'emmet-mode)
(add-hook 'html-mode-hook (lambda () (tidy-build-menu html-mode-map)))
(add-hook 'html-mode-hook 'emmet-mode)

(require-package 'tagedit)
(after-load 'sgml-mode
  (tagedit-add-paredit-like-keybindings)
  (add-hook 'sgml-mode-hook (lambda () (tagedit-mode 1))))

(add-auto-mode 'html-mode "\\.\\(jsp\\|tmpl\\)\\'")

;; Note: ERB is configured in init-ruby-mode

(provide 'init-html)
