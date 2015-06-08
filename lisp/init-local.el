;;Shell-mode
;;通过上下键执行历史命令
(defun my-comint-mode-hook ()
  (interactive)
  (define-key comint-mode-map (kbd "<up>")
    'comint-previous-input)
  (define-key comint-mode-map (kbd "<down>")
    'comint-next-input)
  )
(add-hook 'comint-mode-hook 'my-comint-mode-hook)

;;window-numbering-mode
;;功能稍微好用于 http://nschum.de/src/emacs/window-numbering-mode/
;;(require 'window-numbering)
;;(window-numbering-mode 1) ;;采用M-x进行窗口导航切换 M-0切换到激活的minibuffer
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (setq window-numbering-assign-func                              ;;
;;       (lambda () (when (equal (buffer-name) "*Calculator*") 9)) ;;
;;       )                                                         ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; winner-mode installed from epla
(winner-mode 1);;in GNU emacs 23.2
(global-set-key (kbd "C-x 4 u") 'winner-undo)
(global-set-key (kbd "C-x 4 r") 'winner-redo)
(require-package 'revive)

;;Moving Cursor between different panes
;; use Shift+arrow_keys to move cursor around split panes
(windmove-default-keybindings)

;; when cursor is on edge, move to the other side, as in a toroidal space
;; note working in org-mode
(setq windmove-wrap-around t )

;;Stardict
;; author: pluskid
;; 调用 stardict 的命令行接口来查辞典
;; 如果选中了 region 就查询 region 的内容，
;; 否则就查询当前光标所在的词
(global-set-key (kbd "C-c d") 'yasdcv-translate-at-point)

;;Emacs Config by Xah Lee
;; make cursor movement keys under right hand's home-row.
(global-set-key (kbd "M-j") 'backward-char) ; was indent-new-comment-line
(global-set-key (kbd "M-l") 'forward-char)  ; was downcase-word
(global-set-key (kbd "M-i") 'previous-line) ; was tab-to-tab-stop
(global-set-key (kbd "M-k") 'next-line) ; was kill-sentence
                                        ;(global-set-key (kbd "M-a") 'execute-extended-command) ; was backward-sentence
;;Emacs Config by lkh
(global-set-key (kbd "M-y") 'whole-line-or-region-yank) ; was  cua-paste-pop
(global-set-key (kbd "M-a") 'move-beginning-of-line); was window-numbering-mode
(global-set-key (kbd "M-2") 'set-mark-command) ; was just-one-space
(global-set-key (kbd "M-e") 'move-end-of-line) ; forward-sentence
(global-set-key (kbd "M-q") 'keyboard-quit) ;  was paredit-reindent-defun
(global-set-key (kbd "M-_") 'undo-tree-undo) ; was undo-tree-redo
(global-set-key (kbd "M-o") 'switch-window) ; was set face .......
(provide 'init-local)
