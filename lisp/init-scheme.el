(defun shirui/add-pretty-lambda ()
  "Make some word or string show as pretty Unicode symbols."
  (setq prettify-symbols-alist
        '(
          ("lambda" . 955)
          )))

(add-hook 'scheme-mode-hook 'shirui/add-pretty-lambda)
(add-hook 'scheme-mode-hook (lambda () (paredit-mode t)))

(provide 'init-scheme)
;;; init-scheme.el ends here
