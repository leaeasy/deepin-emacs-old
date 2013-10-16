;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;��������;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; ### Unset key ###
;;; --- ж�ذ���
(lazy-unset-key                         ;ȫ�ְ�����ж��
 '("C-z" "C-q" "s-W" "s-z" "M-h" "C-x C-c" "C-\\"))
;;; ### Sdcv ###
;;; --- �Ǽ�����������
(defvar sdcv-key-alist nil
  "The key alist that sdcv.")
(setq sdcv-key-alist
      '(("p" . sdcv-search-pointer)     ;��괦�ĵ���, buffer��ʾ
        ("y" . sdcv-search-pointer+)    ;��괦�ĵ���, tooltip��ʾ
        ("i" . sdcv-search-input)       ;����ĵ���, buffer��ʾ
        (";" . sdcv-search-input+)))    ;����ĵ���, tooltip��ʾ
(lazy-set-key sdcv-key-alist nil "C-z") ;sdcv��ȫ�ְ�����
;;; ### Vi-move ###
;;; --- Viʽ�ƶ�
(defvar vi-move-key-alist nil
  "The key alist that like vi move.")
(setq vi-move-key-alist
      '(("j" . next-line)               ;��һ��
        ("k" . previous-line)           ;��һ��
        ("h" . backward-char)           ;����ƶ�
        ("l" . forward-char)            ;��ǰ�ƶ�
        ("e" . scroll-down)             ;���¹���һ��
        ("SPC" . scroll-up)))           ;���Ϲ���һ��
;;; ### Doi ###
;;; --- Do Or Insert
(defvar doi-key-alist nil
  "The key alist that like doi.")
(setq doi-key-alist
      '(("SPC" . doi-scroll-up)            ;���Ϲ���һ��
        ("e" . doi-scroll-down)            ;���¹���һ��
        ("k" . doi-previous-line)          ;��һ��
        ("j" . doi-next-line)              ;��һ��
        ("h" . doi-backward-char)          ;��һ���ַ�
        ("l" . doi-forward-char)           ;ǰһ���ַ�
        ("J" . doi-scroll-up-one-line)     ;���Ϲ���һ��
        ("K" . doi-scroll-down-one-line)   ;���¹���һ��
        ("H" . doi-backward-word)          ;��һ����
        ("L" . doi-forward-word)           ;ǰһ����
        ("y" . doi-sdcv-search-pointer+)   ;����
        ("s" . doi-isearch-forward)        ;��ǰ����
        ("r" . doi-isearch-backward)       ;�������
        ("A" . doi-move-beginning-of-line) ;�ƶ�������
        ("E" . doi-move-end-of-line)       ;�ƶ�����ĩ
        ("," . doi-end-of-buffer)          ;�ƶ���bufferĩβ
        ("." . doi-beginning-of-buffer)    ;�ƶ���buffer��ͷ
        ))
;;; ### Rect ###
;;; --- ���β���
(lazy-set-key
 '(
   ("s-M" . rm-set-mark)                         ;���α��
   ("s-X" . rm-exchange-point-and-mark)          ;���ζԽǽ���
   ("s-D" . rm-kill-region)                      ;����ɾ��
   ("s-S" . rm-kill-ring-save)                   ;���α���
   ("s-Y" . yank-rectangle)                      ;ճ������
   ("s-O" . open-rectangle)                      ;�ÿհ�������, �������ƶ��ı�
   ("s-C" . clear-rectangle)                     ;��վ���
   ("s-T" . string-rectangle)                    ;���ַ���������ε�ÿһ��
   ("s-I" . string-insert-rectangle)             ;�����ַ����ھ��ε�ÿһ��
   ("s-F" . delete-whitespace-rectangle)         ;ɾ�������пո�
   ("s-:" . mark-rectangle-to-end)               ;��Ǿ��ε���ĩ
   ("s-H" . execute-command-with-region-replace) ;��ѡ���������ִ������滻
   ("s-P" . execute-command-with-region-kill)    ;��ѡ���������ִ�����ɾ��
   ("s-\"" . copy-rectangle-to-register)         ;�������ε��Ĵ���
   ))
;;; ### Customize ###
;;; --- �Զ���ģʽ
(lazy-set-key doi-key-alist custom-mode-map)          ;doi �ľֲ�������
;;; ### Compilation ###
;;; --- ����ģʽ
(lazy-set-key sdcv-key-alist compilation-mode-map)    ;sdcv �����ֲ���
(lazy-set-key vi-move-key-alist compilation-mode-map) ;vi ģʽ�����ֲ���
;;; ### Font ###
;;; --- ��������
(lazy-set-key
 '(
   ("s--" . text-scale-decrease)        ;��С�����С
   ("s-=" . text-scale-increase)        ;���������С
   ("M--" . text-scale-decrease-global) ;���������С, ȫ��
   ("M-+" . text-scale-increase-global) ;���������С, ȫ��
   ("M-=" . text-scale-default-global)  ;�ָ������С, ȫ��
   ))
;;; ### Winner-mode ###
;;; --- �������ó����򷵻�
(lazy-set-key
 '(
   ("s-<" . winner-undo)                ;�������ó���
   ("s->" . winner-redo)                ;�������÷���
   ))
;;; ### Scim-bridge ###
;;; --- SCIM Bridge �� emacs �ӿ�
;; (scim-define-common-key (kbd "s-SPC") t) ;scim�л����� ��Ӧ��SCIM�е�GUI����
;; (scim-define-common-key (kbd "C-SPC") nil)
;; (scim-define-common-key (kbd "C-\\") nil)
;;; ### Gtk2hs ###
(lazy-set-key
 '(("M-s-;" . gtk2hs-format-docs)
   ("M-s-'" . gtk2hs-format-fun)
   ("M-s-/" . gtk2hs-format-args)))
;;; ### Yoaddmuse ###
;;; --- Yet another oddmuse mode
(lazy-set-key
 '(
   ;; ("M-s-;" . one-key-menu-yaoddmuse)   ;yaoddmuse �˵�
   ))
;;; ### Thingh-edit ###
;;; --- ��ǿʽ�༭��ǰ���Ķ���
(lazy-set-key
 '(
   ("M-s-h" . one-key-menu-thing-edit)  ;thing-edit �˵�
   ))
;;; ### Tabbar ###
;;; --- ���ǩ���
(lazy-set-key
 '(
   ("M-7" . tabbar-backward-tab)              ;�ƶ�����һ����ǩ
   ("M-8" . tabbar-forward-tab)               ;�ƶ���ǰһ����ǩ
   ("M-9" . tabbar-backward-group)            ;�ƶ�����һ����ǩ��
   ("M-0" . tabbar-forward-group)             ;�ƶ���ǰһ����ǩ��
   ("M-&" . tabbar-backward-tab-other-window) ;��ǰ�ƶ��������ڵı�ǩ
   ("M-*" . tabbar-forward-tab-other-window)  ;����ƶ��������ڵı�ǩ
   ("M-s-7" . tabbar-select-beg-tab)          ;�ƶ�������ߵı�ǩ
   ("M-s-8" . tabbar-select-end-tab)          ;�ƶ������ұߵı�ǩ
   ))
;;; ### EMMS ###
;;; --- Emacs ��ý��ϵͳ
(lazy-set-key
 '(
   ("C-c p" . one-key-menu-emms)        ;�������˵�
   ("<up>" . emms-volume-mode-plus)     ;��������
   ("<down>" . emms-volume-mode-minus)  ;��������
   ("<left>" . emms-seek-backward)      ;����
   ("<right>" . emms-seek-forward)      ;ǰ��
   ("M-A" . emms-pause)                 ;��ͣ/����
   ("M-X" . emms-random)                ;�������
   ("M-Z" . emms-stop)                  ;ֹͣ
   ))
;;; ### Emms Playlist ###
;;; --- EMMS �����б�
(lazy-unset-key
 '("s" "m" "u" "M-<" "M->")
 emms-playlist-mode-map)                ;ж�ذ���
(lazy-set-key
 '(
   ("C-x C-s" . emms-playlist-save)             ;���沥���б�
   ("C-y" . emms-playlist-mode-yank)            ;����
   ("C-k" . emms-playlist-mode-kill-track)      ;ɾ����ǰTRACK
   ("C-w" . emms-playlist-mode-kill)            ;ɾ��
   ("C-/" . emms-playlist-mode-undo)            ;����
   ("J" . scroll-up-one-line)                   ;���Ϲ���һ��
   ("K" . scroll-down-one-line)                 ;���¹���һ��
   ("." . emms-playlist-mode-first)             ;���������һ��
   ("," . emms-playlist-mode-last)              ;���������һ��
   ("C-j" . emms-playlist-mode-insert-newline)  ;�½�һ��
   ("M-y" . emms-playlist-mode-yank-pop)        ;YANK����
   ("M-n" . emms-playlist-mode-next)            ;��һ�������б�
   ("M-p" . emms-playlist-mode-previous)        ;��һ�������б�
   ("a" . emms-playlist-mode-add-contents)      ;��ǰ�����б��������
   ("d" . emms-playlist-mode-kill-entire-track) ;�Ӳ����б����Ƴ���ǰTRACK
   ("C" . emms-playlist-mode-clear)             ;��յ�ǰ�Ĳ����б�
   ("f" . emms-playlist-mode-play-smart)        ;���ŵ�ǰTRACK
   ("b" . emms-playlist-set-playlist-buffer)    ;�趨��ǰ�����б�BUFFER
   ("n" . emms-next)                            ;������һ��
   ("p" . emms-previous)                        ;������һ��
   ("r" . emms-random)                          ;���������һ��
   (">" . emms-seek-forward)                    ;ǰ��
   ("<" . emms-seek-backward)                   ;����
   ("X" . emms-pause)                           ;��ͣ
   ("T" . emms-stop)                            ;ֹͣ
   ("Z" . emms-show)                            ;��ʾ������Ϣ
   ("q" . emms-playlist-mode-bury-buffer)       ;�˳�
   ("?" . describe-mode)                        ;����
   ("g" . emms-playlist-mode-center-current)    ;��ת����ǰ����TRACK
   ("G" . emms-jump-to-file)                    ;��λ��ǰ�����ļ���λ��
   ("D" . emms-delete-file-from-disk)           ;�Դ���ɾ����ǰ���ļ�
   (";" . emms-tag-editor-edit-marked-tracks)   ;�༭��ǵ�TAG
   ("H" . emms-last-mark-track)                 ;���һ�����
   ("L" . emms-first-mark-track)                ;��һ�����
   ("N" . emms-next-mark-track)                 ;��һ�����
   ("P" . emms-prev-mark-track)                 ;��һ�����
   ("s" . one-key-menu-emms-playlist-sort)      ;�б�����˵�
   ("m" . one-key-menu-emms-playlist-mark)      ;�б��ǲ˵�
   )
 emms-playlist-mode-map
 )
(lazy-set-key vi-move-key-alist emms-playlist-mode-map) ;vi-move �ľֲ�����
;;; ### Python ###
;;; --- Python mode
(lazy-set-key
 '(
   ("C-S-j" . jump-to-import)
   )
 python-mode-map)
;;; ### JS2 Mode ###
;;; --- JS2 ģʽ
(lazy-set-key
 '(
   ("C-x '" . js2-next-error)
   )
 js2-mode-map)
;;; ### Emms Tag Editor ###
;;; --- Emms ��ǩ�༭��
(lazy-set-key
 '(
   ("C-c C-j" . emms-tag-editor-next-same-field)  ;��һ����ͬ������
   ("C-c C-k" . emms-tag-editor-prev-same-field)  ;��һ����ͬ������
   ("C-c C-r" . emms-tag-editor-set-all+)         ;�滻���б�ǩ
   ("C-c C-l" . emms-tag-editor-set-tracknumber)  ;����켣���, Ҫȷ��
   ("C-c C-i" . emms-tag-editor-set-tracknumber+) ;����켣���, ����ȷ��
   )
 emms-tag-editor-mode-map
 )
;;; ### EMMS Browser ###
;;; --- EMMS �����
(lazy-set-key
 '(
   ("J" . emms-browser-next-non-track)      ;��һ���ڵ�
   ("K" . emms-browser-prev-non-track)      ;��һ���ڵ�
   ("f" . emms-browser-toggle-subitems)     ;��ʾ
   ("s" . one-key-menu-emms-browser-search) ;�����˵�
   ("L" . one-key-menu-emms-browser-lookup) ;��ѯ�˵�
   )
 emms-browser-mode-map
 )
(lazy-set-key sdcv-key-alist emms-browser-mode-map)    ;sdcv �ľֲ�����
(lazy-set-key vi-move-key-alist emms-browser-mode-map) ;vi-move �ľֲ�����
;;; ### EMMS Stream ###
;;; --- EMMS ��ý��
(lazy-set-key
 '(
   ("a" . emms-stream-add-bookmark)          ;���
   ("d" . emms-stream-delete-bookmark)       ;ɾ��
   ("E" . emms-stream-edit-bookmark)         ;�༭
   ("q" . emms-stream-quit)                  ;�˳�
   ("s" . emms-stream-save-bookmarks-file)   ;����
   ("t" . emms-stream-toggle-default-action) ;�л�
   ("i" . emms-stream-info-bookmark)         ;��Ϣ
   ("f" . emms-stream-play)                  ;����
   )
 emms-stream-mode-map
 )
(lazy-set-key vi-move-key-alist emms-stream-mode-map) ;vi-move �ľֲ�����
;;; ### Dired ###
;;; --- �ļ������
(lazy-set-key
 '(
   ("h" . dired-next-subdir)                   ;��һ����Ŀ¼
   ("l" . dired-prev-subdir)                   ;��һ����Ŀ¼
   ("j" . dired-next-file-line)                ;��һ��
   ("k" . dired-previous-file-line)            ;��һ��
   ("n" . dired-next-dirline)                  ;��һ��Ŀ¼
   ("p" . dired-prev-dirline)                  ;��һ��Ŀ¼
   ("f" . dired-find-file+)                    ;�򿪵�ǰ�ļ���Ŀ¼
   ("C-m" . dired-find-file+)                  ;�򿪵�ǰ�ļ���Ŀ¼
   ("P" . dired-do-kill-lines)                 ;ɾ����ǵ���
   ("4" . dired-serial-rename)                 ;����������
   ("5" . dired-translate-to-html)             ;ת����HTML��ʽ
   ("7" . dired-move-to-last-file)             ;�ƶ������һ���ļ�
   ("8" . dired-move-to-first-file)            ;�ƶ�����һ���ļ�
   ("9" . auto-install-from-dired)             ;�Զ���EmacsWiki��װ��ǵ��ļ�
   ("E" . dired-touch-now)                     ;Touch����
   ("z" . dired-do-moccur)                     ;����dired
   ("I" . image-dired)                         ;�����ģʽ
   ("w" . wdired-change-to-wdired-mode)        ;�л���dired�༭ģʽ
   ("W" . dired-x-find-file)                   ;�����ļ�
   ("\"" . find-lisp-find-dired-pwd)           ;�����ض���lisp�ļ�
   ("J" . dired-goto-file)                     ;����ĳ���ļ�
   ("K" . dired-open-file)                     ;��W3M�򿪸����ļ�
   ("X" . traverse-cp-or-mv-extfiles-in-dir)   ;�������ƶ�Ŀ¼��ָ����չ�����ļ�
   ("V" . traverse-dired-browse-archive)       ;���ѹ���ļ�
   (";" . dired-view-minor-mode-toggle)        ;��ĸ���뵼��ģʽ
   ("," . dired-diff)                          ;�Ƚ��ļ�
   ("'" . dired-up-directory-single)           ;������һ��Ŀ¼
   ("C-s" . dired-isearch-forward)             ;�������
   ("C-r" . dired-isearch-backward)            ;��ǰ����
   ("ESC C-s" . dired-isearch-forward-regexp)  ;��ǰ������ʽ����
   ("ESC C-r" . dired-isearch-backward-regexp) ;���������ʽ����
   ("SPC" . scroll-up)                         ;���·�ҳ
   ("e" . scroll-down)                         ;���Ϸ�ҳ
   ("c" . kill-this-buffer)                    ;�رյ�ǰ��ǩ
   ("/" . copy-buffer-file-name-as-kill)       ;��ʾ·��������
   ("[" . dired-rename-with-copy)              ;����������
   ("]" . dired-nautilus)                      ;�� Nautils ���ص�ǰĿ¼
   ("{" . dired-gnome-open-file)               ;��GNOME��ʽ���ļ�
   ("s" . one-key-menu-dired-sort)             ;����
   ("?" . dired-get-size)                      ;�õ��ļ��Ĵ�С
   ("M-o" . dired-toggle-omit)                 ;�л�����״̬
   )
 dired-mode-map
 )
;;; ### Wdired ###
;;; --- Dired �ı༭ģʽ
(lazy-set-key
 '(
   ("C-c C-e" . wdired-format-filename) ;��ʽ���ļ���
   )
 wdired-mode-map
 )
;;; ### W3m ###
;;; --- ��ҳ�����
(lazy-set-key
 '(
   ("C-z C-z" . w3m)                          ;����W3M
   ("C-z z" . w3m-startup-background)         ;����W3M, ��̨
   ("C-x C-z" . toggle-w3m-with-other-buffer) ;��W3M��buffer���л�
   ("s-W" . one-key-menu-w3m-search)          ;w3m �����˵�
   ))
(lazy-set-key
 '(("1" . emms-play-online)                             ;����������
   ("2" . kill-google-define-windows)                   ;�ر�Google���崰��
   ("3" . google-define)                                ;�������뵥�ʵ�Google����
   ("4" . google-define-pointer)                        ;���ҵ�ǰ��괦��Google����
   ("5" . w3m-open-rcirc-window)                        ;��RCIRC����
   ("6" . w3m-session-save)                             ;���������¼
   ("7" . w3m-session-select)                           ;�����˳�ǰ���������¼
   ("8" . w3m-emacswiki-view-other-version)             ;�鿴��ǰwikiҳ��������汾
   ("9" . w3m-auto-install-elisp)                       ;�Զ���װelisp�ļ�
   ("0" . w3m-gmail-toggle-mark)                        ;�л����ѡ���
   ("(" . w3m-gmail-mark-all)                           ;���ѡ���
   (")" . w3m-gmail-unmark-all)                         ;ȡ�����ѡ���
   ("c" . w3m-delete-buffer-and-select-right)           ;�رյ�ǰ��ǩ��ѡ���ұߵı�ǩ
   ("/" . w3m-next-form)                                ;��һ�����
   ("e" . w3m-scroll-down-or-previous-url)              ;���Ϸ�ҳ
   ("b" . w3m-edit-current-url)                         ;�༭��ǰҳ��
   ("z" . w3m-zoom-in-image)                            ;�Ŵ�ͼƬ
   ("x" . w3m-zoom-out-image)                           ;��СͼƬ
   ("O" . w3m-goto-linknum)                             ;�������ӿ�����ת
   ("f" . w3m-view-this-url)                            ;�ڵ�ǰ��ǩ��
   ("o" . w3m-view-this-url-new-session)                ;�ں�̨��ǩ��
   ("M" . w3m-open-link-in-chromium)                    ;Open link in chromium browser
   ("M-o" . w3m-open-link-file-under-current-directory) ;open link file under current directory
   ("m" . tabbar-forward-tab)                           ;�л����ұߵı�ǩ
   ("n" . tabbar-backward-tab)                          ;�л�����ߵı�ǩ
   ("'" . w3m-open-dead-link-with-external-browser)     ;����������
   ("s-j" . w3m-visual-scroll-up)                       ;���ӻ����Ϲ���
   ("s-k" . w3m-visual-scroll-down)                     ;���ӻ����¹���
   ("b" . w3m-history)                                  ;��ʷ
   ("D" . w3m-dtree)                                    ;��ʾ����Ŀ¼��
   ("B" . w3m-view-previous-page)                       ;����
   ("F" . w3m-view-next-page)                           ;ǰ��
   ("S" . w3m-google-desktop-url-open)                  ;Google���������
   ("L" . w3m-submit-form)                              ;�ύform�е�����
   ("C" . w3m-delete-other-buffers)                     ;�رպ�̨��ǩ
   ("d" . w3m-download-with-wget-current-position)      ;��Wget�첽���ص�ǰ������
   ("Y" . wget-web-page)                                ;��ҳ����
   ("-" . org-w3m-copy-for-org-mode)                    ;ת����ҳ�� `org-mode' �����Ӹ�ʽ
   ("_" . w3m-copy-link-in-region)                      ;����w3m buffer ����������
   ("&" . yaoddmuse-w3m-edit-emacswiki-page)            ;�༭ emacswiki ҳ��
   ("*" . w3m-emacswiki-view-diff)                      ;�鿴��ǰwikiҳ��Ĳ�ͬ
   ("\"" . w3m-emacswiki-recent-changes)                ;������޸�
   ("C-u s" . w3m-db-history)                           ;��ʷ���ݿ�
   ("<up>" . emms-volume-mode-plus)                     ;��������
   ("<down>" . emms-volume-mode-minus)                  ;��������
   ("<left>" . emms-seek-backward)                      ;����
   ("<right>" . emms-seek-forward)                      ;ǰ��
   ("<" . w3m-shift-left)                               ;���������Ļһ����
   (">" . w3m-shift-right)                              ;���ҹ�����Ļһ����
   ("." . go-to-char-forward-word)                      ;������ĳһ���ַ�, �Ե���Ϊ��λǰ��
   ("," . go-to-char-backward-word)                     ;��ǰ����ĳһ���ַ�, �Ե���Ϊ��λ����
   ("M-s" . lazy-search-menu)                           ;��������
   ("M-A" . emms-pause)                                 ;��ͣ
   ("M-j" . scim-handle-event)                          ;����Ϊ���뷨�л���
   ("C-M-7" . w3m-tab-move-left)                        ;�ƶ���ǰ��ǩ�����
   ("C-M-8" . w3m-tab-move-right)                       ;�ƶ���ǰ��ǩ���ұ�
   ("C-S-7" . w3m-delete-left-tabs)                     ;ɾ����ߵı�ǩ
   ("C-S-8" . w3m-delete-right-tabs)                    ;ɾ���ұߵı�ǩ
   )
 w3m-mode-map
 )
(lazy-set-key sdcv-key-alist w3m-mode-map) ;sdcv�ľֲ�������
(lazy-unset-key
 '("s")
 w3m-mode-map)                          ;ж�ذ���
(lazy-set-key
 '(
   ("s" . one-key-menu-w3m-search)      ;w3m �����˵�
   )
 w3m-mode-map)
;;; ### Etags ###
;;; --- ��������
(lazy-set-key
 '(
   ("s-E" . one-key-menu-etags)))
;;; ### IRC ###
;;; --- ����
(lazy-set-key
 '(
   ("C-c i" . switch-to-erc)                     ;�л���IRC���Զ���¼IRC
   ("C-c I" . erc-nick-notify-jump-last-channel) ;�Զ���ת������յ���Ϣ��Ƶ��
   ("M-U" . one-key-menu-irc-channel)            ;��ת��IRCƵ��
   ))
;;; ### ERC ###
;;; --- IRC �ͻ���
(lazy-set-key
 '(
   ("C-c C-y" . paste2-buffer-create)   ;ճ���������
   ("/" . doi-erc-command)              ;erc����
   )
 erc-mode-map
 )
(lazy-set-key doi-key-alist erc-mode-map) ;doi �ľֲ�����
;;; ### Rcirc ###
;;; --- IRC �ͻ���
(lazy-set-key
 '(
   ("M-o" . backward-delete-char-untabify)
   ("M-O" . rcirc-omit-mode)                    ;�л�����ģʽ
   ("C-c SPC" . rcirc-cmd-read-current-message) ;�Ķ���ǰ��Ϣ
   ("C-c C-v" . rcirc-cmd-talk-to)              ;����ĳ�˵��ǳ�
   )
 rcirc-mode-map
 )
(lazy-set-key doi-key-alist rcirc-mode-map) ;doi �ľֲ�����
;;; ### Auto-Install ###
;;; --- �Զ����ذ�װelisp�ļ�
(lazy-set-key
 '(
   ("C-z e" . anything-auto-install)    ;�Ӷ��ַ�ʽ��װ elisp ��
   ))
;;; ### Paste2 ###
;;; --- paste2.org ��ճ������
(lazy-set-key
 '(
   ("C-s-s" . paste2-send-paste)                     ;����ճ��
   ("C-s-z" . paste2-get-paste)                      ;�õ�ճ��������
   ("C-s-a" . paste2-buffer-append)                  ;���ӵ�ǰ�����ݵ�ճ��buffer
   ("C-s-x" . paste2-buffer-create)                  ;����ճ��buffer
   ("C-s-c" . paste2-send-paste-with-command-output) ;ճ�����������
   ))
;;; ### Alarm Clock ###
;;; --- ����
(lazy-set-key
 '(
   ("s-x s-s" . alarm-clock)            ;�趨��Ϣ����
   ("s-x s-c" . alarm-clock-cancel)     ;ȡ����Ϣ����
   ))
;;; ### irfc ###
;;; --- RFC �ĵ��Ķ�
(lazy-set-key sdcv-key-alist irfc-mode-map)
(lazy-set-key
 '(
   ("c" . kill-this-buffer)                         ;�رյ�ǰbuffer
   ("C" . kill-current-mode-buffers-except-current) ;�ر����к�̨��ǩ
   ("m" . tabbar-forward-tab)                       ;����һ����ǩ
   ("n" . tabbar-backward-tab)                      ;����һ����ǩ
   ("." . go-to-char-forward-word)                  ;��������ƶ�
   ("," . go-to-char-backward-word)                 ;���ҿ����ƶ�
   ("<" . end-of-buffer)                            ;������
   (">" . beginning-of-buffer)                      ;������
   )
 irfc-mode-map
 )
;;; ### Less ###
;;; --- �������ģʽ
(lazy-set-key
 '(
   ("M-s-l" . less-minor-mode)          ;��lessģʽ
   ))
(lazy-set-key
 '(
   ("J" . less-scroll-up-one-line)      ;�������
   ("K" . less-scroll-down-one-line)    ;�������
   ("." . go-to-char-forward)           ;������ĳһ���ַ�
   ("," . go-to-char-backward)          ;��ǰ����ĳһ���ַ�
   (">" . beginning-of-buffer)          ;BUFFER��β
   ("<" . end-of-buffer)                ;BUFFER��ʼ
   ("q" . less-quit)                    ;�˳�lessģʽ
   ("b" . one-key-menu-hideshow)        ;hideshow �˵�
   ("t" . one-key-menu-etags)           ;Etags �˵�
   ("dd" . auto-scroll-mode)            ;��ʼ����
   ("df" . auto-scroll-faster)          ;�����Ŀ�һ��
   ("ds" . auto-scroll-slower)          ;��������һ��
   )
 less-minor-mode-map
 )
(lazy-set-key sdcv-key-alist less-minor-mode-map)    ;sdcv�ľֲ�������
(lazy-set-key vi-move-key-alist less-minor-mode-map) ;vi-move �ľֲ�����
;;; ### Hexl ###
;;; --- ʮ������ģʽ
(lazy-set-key
 '(
   ("s-c hh" . hexl-mode)               ;ʮ������ģʽ
   ("s-c hf" . hexl-find-file)          ;��ʮ�����ƴ��ļ�
   ))
;;; ### Compile DWIM ###
;;; --- ���ܱ���
(lazy-set-key
 '(
   ("C-9" . compile-dwim-compile+)      ;���ܱ������
   ("C-0" . compile-dwim-run)           ;�������г���
   ))
;;; ### Re-builder ###
;;; --- ���ӻ�������ʽ����
(lazy-set-key
 '(
   ("C-c b" . reb-change-target-buffer) ;�ı�Ŀ��buffer
   ("C-c c" . reb-toggle-case)          ;�л���Сд
   ("C-c e" . reb-enter-subexp-mode)    ;������ʽģʽ
   ("C-c r" . reb-prev-match)           ;ǰһ��ƥ��
   ("C-c s" . reb-next-match)           ;��һ��ƥ��
   ("C-c u" . reb-force-update)         ;����
   ("C-c w" . reb-copy)                 ;����
   ("C-c q" . reb-quit)                 ;�˳�
   ("C-c TAB" . reb-change-syntax)      ;�ı��﷨
   )
 reb-mode-map
 )
;;; ### Company Mode ###
;;; --- ֱ�۵��б�ʽ��ȫ
;; (lazy-unset-key
;;  '("TAB")
;;  company-mode-map)                      ;ж�ذ���
;; (lazy-unset-key
;;  '("M-p" "M-n" "M-1"
;;    "M-2" "M-3" "M-4"
;;    "M-5" "M-6" "M-7"
;;    "M-8" "M-9" "M-0"
;;    "C-m")
;;  company-active-map)
;; (lazy-set-key
;;  '(
;;    ("M-h" . company-complete-common)    ;��ȫ��������
;;    ("M-H" . company-complete-selection) ;��ȫѡ���
;;    ("M-w" . company-show-location)      ;��ʾ�ֲ���
;;    ("M-s" . company-search-candidates)  ;������ѡ
;;    ("M-S" . company-filter-candidates)  ;���˺�ѡ
;;    ("M-," . company-select-next)        ;��һ��
;;    ("M-." . company-select-previous)    ;��һ��
;;    )
;;  company-active-map
;;  )
;;; ### Auto-complete ###
;;; --- �Զ���ȫ
(lazy-unset-key
 '("RET" "TAB")
 ac-complete-mode-map)
(lazy-set-key
 '(
   ("M-h" . ac-complete)                ;��ȫ��ǰѡ�е�
   ("M-H" . ac-expand-common)           ;��ȫ��������
   ("M-U" . ac-stop)                    ;ֹͣ
   ("M-," . ac-next)                    ;��һ��
   ("M-." . ac-previous)                ;��һ��
   )
 ac-complete-mode-map
 )
;;; ### C ###
;;; --- C ����ģʽ
(lazy-set-key
 '(
   ("M-j" . toggle-input-method)                  ;�л����뷨
   ("M-[" . my-c-function-init-indent)            ;�������Ÿ�ʽ��
   ("M-'" . my-c-mode-auto-newline-break)         ;Cģʽauto-newline���һ��������, ���������ұ�
   ("M-," . my-c-mode-auto-newline-break-newline) ;Cģʽauto-newline���һ��������, ������
   ("RET" . newline-and-indent)                   ;����C����ģʽʱ��RET�Զ����кͶ���
   ("M-:" . my-c-previous-line-comment)           ;C������һ��ע��
   ("M-s-m" . eassist-list-methods)               ;ѡ�񷽷�
   )
 c-mode-base-map
 )
;;; ### Xgtags ###
;;; --- Gtags �Ľ���, ���ٴ�������
(lazy-set-key
 '(
   ("s-G" . one-key-menu-gtags)         ;gtags ����
   ))
(lazy-set-key vi-move-key-alist xgtags-select-mode-map) ;vi-move �ľֲ�����
(lazy-set-key sdcv-key-alist xgtags-select-mode-map)    ;sdcv�ľֲ�����
(lazy-set-key
 '(
   ("f" . xgtags-select-tag-other-window)   ;����������ѡ��TAG��ͼ
   ("r" . xgtags-select-tag-return)         ;����ѡ��ǰ�Ĵ�������
   ("J" . xgtags-select-next-tag-line)      ;��һ��������
   ("K" . xgtags-select-prev-tag-line)      ;��һ��������
   ("N" . xgtags-select-next-tag-line-show) ;������������ʾ��һ������
   ("P" . xgtags-select-prev-tag-line-show) ;������������ʾ��һ������
   ("H" . xgtags-select-next-file)          ;��һ���ļ�
   ("L" . xgtags-select-prev-file)          ;��һ���ļ�
   )
 xgtags-select-mode-map
 )
;;; ### Emacs-Lisp ###
;;; --- Emacs Lisp ģʽ
(lazy-unset-key
 '("M-TAB")
 emacs-lisp-mode-map)                   ;ж�ذ���
(lazy-set-key
 '(
   ("<s-f1>" . elisp-index-search+)     ;��elisp�ֲ��в��Һ���
   ))
(lazy-set-key
 '(
   ("RET" . comment-indent-new-line)    ;�Զ����в�ע��
   )
 emacs-lisp-mode-map
 )
;;; ### Wget ###
;;; --- ���س���
(lazy-set-key
 '(
   ("s-c dd" . wget-show)               ;��ʾ������Ϣ
   ("s-c dh" . wget-hide)               ;����������Ϣ
   ("s-c dq" . wget-quit-and-exit)      ;ֹͣ����
   ))
;;; ### Hideshow ###
;;; --- �����۵�
(lazy-set-key
 '(
   ("C-c b" . one-key-menu-hideshow)    ;�ṹ���˵�
   ))
;;; ### Google Define ###
;;; --- Google ����
(lazy-set-key
 '(
   ("C-z g" . google-define)              ;�������뵥�ʵ�Google����
   ("C-z s" . google-define-pointer)      ;���ҵ�ǰ��굥�ʵ�Google����
   ("C-z h" . kill-google-define-windows) ;�ر�Google���崰��
   ))
;;; ### Org ###
;;; --- �ʼǹ������֯

(lazy-set-key
 '(
   ("s-u" . one-key-menu-org-mode)           ;Org-mode �˵�
   ("s-U" . one-key-menu-org-mode-recursive) ;Org-mode �˵�, ���ǵݹ��
   ("M-O" . org-display-all-todo-item)       ;��ʾ����TODO�б�
   )
 org-mode-map
 )
(lazy-set-key
 '(
   ("s-s" . one-key-menu-org-file)      ;Org �ļ�
   ("C-c r" . org-remember)             ;Org-remeber
   ))
;;; ### Newsticker ###
;;; --- �����Ķ���
(lazy-set-key
 '(
   ("M-D" . newsticker-show-news)       ;�������Ķ���
   ))
(defconst newsticker-treeview-mode-map
  (let ((map (make-sparse-keymap 'newsticker-treeview-mode-map)))
    (lazy-set-key
     '(
       ("i" . newsticker-treeview-toggle-item-immortal)              ;�л�����״̬
       ("e" . newsticker-treeview-prev-page)                         ;��һ��
       (" " . newsticker-treeview-next-page)                         ;��һ��
       ("." . newsticker-treeview-scroll-item+)                      ;���Ϲ����������
       ("," . newsticker-treeview-scroll-item)                       ;���¹����������
       ("L" . newsticker-treeview-first-feed)                        ;��һ������
       ("H" . newsticker-treeview-last-feed)                         ;���һ������
       ("P" . newsticker-treeview-prev-feed)                         ;��һ������
       ("N" . newsticker-treeview-next-feed)                         ;��һ������
       ("j" . newsticker-treeview-next-item)                         ;��һ����Ŀ
       ("k" . newsticker-treeview-prev-item)                         ;��һ����Ŀ
       ("K" . newsticker-treeview-prev-new-or-immortal-item)         ;��һ���µ���Ŀ
       ("J" . newsticker-treeview-next-new-or-immortal-item)         ;��һ���µ���Ŀ
       ("g" . newsticker-treeview-get-news)                          ;ץȡ��ǰ���ӵ�����
       ("v" . newsticker-treeview-jump)                              ;��ת
       ("O" . newsticker-treeview-mark-list-items-old)               ;��������б����ĿΪ�ɵ�
       ("o" . newsticker-treeview-mark-item-old)                     ;�����ĿΪ�ɵ�
       ("q" . newsticker-treeview-quit)                              ;����
       ("S" . newsticker-treeview-save-item)                         ;������ҳ
       ("s" . newsticker-treeview-save)                              ;������Ŀ
       ("u" . newsticker-treeview-update)                            ;����
       ("f" . newsticker-treeview-browse-url-with-w3m)               ;�������
       ("a" . newsticker-add-url)                                    ;�������
       ("G" . newsticker-get-all-news)                               ;ץȡ��������
       ("w" . newsticker-switch-to-w3m)                              ;�л���w3m��ͼ
       ("m" . newsticker--treeview-browse-url-with-firefox)          ;���ⲿ��������
       ("M" . newsticker--treeview-browse-url-with-chromium-browser) ;���ⲿ��������
       ("M-m" . newsticker-group-move-feed)                          ;�ƶ����ӵ���
       ("M-a" . newsticker-group-add-group)                          ;�����
       )
     map
     )
    map)
  "Mode map for newsticker treeview.")
;;; ### Festival ###
;;; --- �����Ķ�
(lazy-set-key
 '(
   ("s-x r" . one-key-menu-festival)    ;�����Ķ��˵�
   ))
;;; ### Revie ###
;;; --- �������ù���
(lazy-set-key
 '(
   ("s-v s" . save-current-configuration) ;���浱ǰ�Ĵ������÷���
   ("s-v f" . resume)                     ;�ָ���һ�εĴ������÷���
   ("s-v k" . wipe)                       ;��մ������÷���
   ))
;;; ### Multi-Term ###
;;; --- ���ǩʽ��shell
(lazy-set-key
 '(
   ("s-e" . multi-term-next)                 ;��һ���ն�
   ("s-w" . multi-term-prev)                 ;��һ���ն�
   ("s-n" . multi-term)                      ;�½�һ���ն�
   ("s-x s-x" . multi-term-dedicated-toggle) ;�л�רע�ն�
   ("s-x s-z" . multi-term-dedicated-select) ;ѡ��רע�ն�
   ))
;;; ### Multi-Scratch ###
;;; --- ���زݸ�
(lazy-set-key
 '(
   ("C-1" . multi-scratch-prev)         ;��һ���ݸ�
   ("C-2" . multi-scratch-next)         ;��һ���ݸ�
   ("C-3" . multi-scratch-new)          ;�½��ݸ�
   ))
;;; ### Ido ###
;;; --- ����ʽ�����ļ��ͻ���
(lazy-set-key
 '(
   ("C-x C-f" . ido-find-file)          ;����ʽ�����ļ�
   ("C-x b" . ido-switch-buffer)        ;����ʽ�л�buffer
   ("C-x i" . ido-insert-buffer)        ;���뻺��
   ("C-x I" . ido-insert-file)          ;�����ļ�
   ))
(add-hook 'ido-setup-hook
          '(lambda ()
             (interactive)
             (ido-my-keys ido-completion-map)))
(defun ido-my-keys (keymap)
  "Add my keybindings for ido."
  (lazy-set-key
   '(
     ("M-s-p" . ido-prev-match)              ;��һ��ƥ��
     ("M-s-n" . ido-next-match)              ;��һ��ƥ��
     ("M-s-h" . ido-next-work-directory)     ;��һ������Ŀ¼
     ("M-s-l" . ido-prev-work-directory)     ;��һ������Ŀ¼
     ("M-o" . backward-delete-char-untabify) ;��ǰɾ���ַ�
     ("M-O" . ido-delete-backward-updir)     ;ɾ���ַ��������һ��Ŀ¼
     )
   keymap
   ))
;; ### Icicles ###
;; --- Minibuffer ���벹ȫ���л�
(add-hook 'icicle-mode-hook 'bind-icicles-minibuffer-keys)
(defun bind-icicles-minibuffer-keys ()
  "Replace some default Icicles minibuffer bindings with others."
  (dolist
      (map (list
            minibuffer-local-isearch-map             ;isearch
            minibuffer-local-ns-map                  ;���ո�����ʱ
            minibuffer-local-shell-command-map       ;��ȫshell����ʱ
            minibuffer-local-map                     ;��minibuffer��ȡ
            minibuffer-local-completion-map          ;���벹ȫ
            minibuffer-local-must-match-map          ;���벹ȫ��ȷƥ��
            minibuffer-local-filename-completion-map ;�ļ�����ȫ
            ))
    (when icicle-mode
      (lazy-set-key
       '(
         ("s-o" . icicle-insert-history-element) ;������ʷԪ��
         )
       map
       )
      (ido-my-keys map)))
  (when icicle-mode
    (lazy-set-key
     '(
       ("TAB" . isearch-complete-edit)
       ("M-k" . isearch-delete-ring-element))
     minibuffer-local-isearch-map
     )))
(lazy-set-key
 '(
   ("M-s-z" . icicle-switch-to-Completions-buf) ;�л�����ʾbuffer
   ("M-s-x" . icicle-switch-to/from-minibuffer) ;��minibuffer������buffer֮���л�
   ("M-s-m" . icicle-complete-keys)             ;�鿴��ǰģʽ�İ���
   ))
;;; ### Predictive ###
;;; --- Ӣ������
(lazy-unset-key
 '("TAB")
 completion-dynamic-map)                ;ж�ذ���
(lazy-set-key
 '(
   ("M-r" . predictive-mode)            ;Ӣ������
   ))
(lazy-set-key
 '(
   ("M-h" . completion-accept)          ;���ܸ�����ȫ
   ("M-H" . completion-reject)          ;�ܾ�������ȫ
   )
 completion-map
 )
;;; ### Maxima ###
;;; --- ��������ϵͳ
(lazy-set-key
 '(
   ("s-A" . my-imaxima)                 ;��������ϵͳ
   ))
(defun my-maxima-keybind ()             ;��������ϵͳ����
  (lazy-set-key
   '(
     ("TAB" . maxima-complete)          ;��ȫ
     ("C-p" . comint-previous-input)    ;��һ������
     ("C-n" . comint-next-input)        ;��һ������
     ("M-p" . go-to-next-pair-right)    ;������ת
     ("M-n" . go-to-next-pair-left))
   (current-local-map)
   ))
;;; ### Pick-backup ###
;;; --- ���ٻָ��Աȱ����ļ�
(lazy-set-key
 '(
   ("s-b v" . pick-backup-and-view)     ;�鿴���ݰ汾
   ("s-b d" . pick-backup-and-ediff)    ;�Ƚϱ��ݰ汾�Ĳ�ͬ
   ("s-b r" . pick-backup-and-revert)   ;�ָ�ָ���ı��ݰ汾
   ))
;;; ### Flymake ###
;;; --- ��ʱƴд���
(lazy-set-key
 '(
   ("M-s-j" . flymake-show-next-error)  ;��ʾ��һ������
   ("M-s-k" . flymake-show-prev-error)  ;��ʾ��һ������
   ))
;;; ### Speedbar ###
;;; --- ���ٷ����ļ���tags
(setq speedbar-buffers-key-map nil)     ;ж��һЩ����
(setq speedbar-file-key-map nil)
(lazy-set-key
 '(
   ("s-z s-z" . sr-speedbar-toggle)        ;��ʾ/����speedbar
   ("s-z s-x" . sr-speedbar-select-window) ;ѡ��speedbar����
   ))
(lazy-set-key
 '(
   ;; ��������
   ("f" . speedbar-edit-line)             ;���뵱ǰ��Ŀ
   ("C-m" . speedbar-edit-line)           ;���뵱ǰ��Ŀ
   ("j" . speedbar-next)                  ;��һ��
   ("k" . speedbar-prev)                  ;��һ��
   ("n" . speedbar-forward-list)          ;��һ��Ŀ
   ("p" . speedbar-backward-list)         ;��һ��Ŀ
   ("u" . speedbar-forced-contract)       ;������һ��
   ("F" . speedbar-files)                 ;�л��ļ���ͼ
   ("B" . speedbar-buffers)               ;�л�������ͼ
   ("q" . sr-speedbar-toggle)             ;�˳�
   ;; ������
   ("x" . speedbar-expand-line)           ;չ����ǰ��
   ("z" . speedbar-contract-line)         ;������ǰ��
   ("v" . speedbar-toggle-line-expansion) ;�л���ǰ�е�״̬
   ;; �ļ�����
   ("g" . speedbar-refresh)             ;ˢ��
   ("'" . speedbar-up-directory)        ;��һ��Ŀ¼
   ("i" . speedbar-item-info)           ;��ʾ��Ϣ
   ("b" . speedbar-item-byte-compile)   ;����
   ("l" . speedbar-item-load)           ;����
   ("c" . speedbar-item-copy)           ;����
   ("d" . speedbar-item-delete)         ;ɾ��
   ("o" . speedbar-item-object-delete)  ;ɾ������
   ("r" . speedbar-item-rename)         ;������
   ("m" . speedbar-create-directory)    ;����Ŀ¼
   ("K" . speedbar-buffer-kill-buffer)  ;�رյ�ǰbuffer
   )
 speedbar-key-map
 )
;;; ### Top ###
;;; --- ���̹�����
(lazy-set-key
 '(
   ("<s-f8>" . top)                     ;TOP
   ))
(lazy-set-key
 '(
   ("s" . isearch-forward)              ;����
   ("g" . top)                          ;ˢ��
   ("q" . quit-window)                  ;�˳�
   ("d" . top-mode-kill)                ;ɾ��
   ("D" . top-mode-kill-noconfirm)      ;����Ҫȷ��ɾ��
   ("t" . top-mode-strace)
   ("T" . top-mode-strace-noconfirm)
   ("r" . top-mode-renice)
   ("R" . top-mode-renice-noconfirm)
   ("m" . top-mode-mark)                ;���
   ("u" . top-mode-unmark)              ;ɾ�����
   ("U" . top-mode-show-specific-user))
 top-mode-map
 )
(lazy-set-key sdcv-key-alist top-mode-map)    ;sdcv �ľֲ�����
(lazy-set-key vi-move-key-alist top-mode-map) ;vi-mode�ľֲ�����
;;; ### Color-moccur ###
;;; --- ��ǿ��moccur
(lazy-set-key
 '(
   ("s-x v" . moccur-grep)              ;������ǰĿ¼�µ��ļ�
   ("s-x g" . moccur-grep-find-pwd)     ;�ݹ�������ǰĿ¼�µ��ļ�
   ))
;;; ### Doc-view ###
;;; --- �ĵ��Ķ���
(lazy-unset-key
 '(".")
 doc-view-mode-map)                     ;ж�ذ���
(lazy-set-key
 '(
   ("C-M-j" . doc-view-scroll-up-or-next-page+)       ;����һ��������ͼ�����һҳ
   ("C-M-k" . doc-view-scroll-down-or-previous-page+) ;����һ��������ͼ�����һҳ
   ))
(lazy-unset-key
 '("x" "M-<" "M->")
 doc-view-mode-map)                     ;ж��һЩ����
(lazy-set-key
 '(
   ([remap scroll-up] . doc-view-next-line-or-next-page) ;���¶��򰴼�, ֧�� auto-scroll
   )
 doc-view-mode-map
 )
(lazy-set-key
 '(
   ("N" . doc-view-next-page)                      ;��һҳ
   ("P" . doc-view-previous-page)                  ;��һҳ
   ("." . doc-view-first-page)                     ;��һҳ
   ("," . doc-view-last-page)                      ;���һҳ
   ("g" . doc-view-goto-page)                      ;�����ڼ�ҳ
   ("e" . doc-view-scroll-down-or-previous-page)   ;���Ϲ���һ��
   ("SPC" . doc-view-scroll-up-or-next-page)       ;���¹���һ��
   ("j" . doc-view-next-line-or-next-page)         ;��һ�л���һ��
   ("k" . doc-view-previous-line-or-previous-page) ;��һ�л���һ��
   ("t" . doc-view-show-tooltip)                   ;��ǰҳ��ʾ
   ("q" . bury-buffer)                             ;����buffer
   ("Q" . doc-view-kill-proc-and-buffer)           ;�˳�����������
   ("C-s" . doc-view-search)                       ;����
   ("C-S-n" . doc-view-search-next-match)          ;��һ��ƥ��
   ("C-S-p" . doc-view-search-previous-match)      ;��һ��ƥ��
   ("+" . doc-view-enlarge)                        ;�Ŵ�ҳ��
   ("-" . doc-view-shrink)                         ;��Сҳ��
   ("C-c C-c" . doc-view-toggle-display)           ;���ı���ͼ����л�
   ("C-c C-t" . doc-view-open-text)                ;���ı�
   ("r" . revert-buffer)                           ;ˢ��
   ("s" . auto-scroll-mode)                        ;�Զ�����
   ("<" . auto-scroll-faster)                      ;�ӿ�����ٶ�
   (">" . auto-scroll-slower)                      ;���������ٶ�
   )
 doc-view-mode-map
 )
(lazy-set-key sdcv-key-alist doc-view-mode-map) ;sdcv�ľֲ�������
;;; ### Gnus ###
;;; --- �����Ķ���
(lazy-unset-key
 '("M-K" "s")
 gnus-summary-mode-map)                 ;ж�ذ���
(lazy-set-key
 '(
   ("M-E" . gnus-switch)                ;�л� Gnus
   ))
(add-hook 'gnus-group-mode-hook
          (lambda ()
            (local-set-key (kbd "q") 'gnus-switch)      ;�л�Gnus
            (local-set-key (kbd "Q") 'gnus-group-exit)) ;�˳�
          )
(lazy-set-key
 '(
   ("s" . one-key-menu-gnus-summary-sort)     ;�ʼ�����
   ("S" . gnus-summary-isearch-article)       ;�����ʼ�
   ("f" . gnus-summary-next-page)             ;��ʾ�ʼ�
   ("v" . gnus-summary-followup)              ;����, ��������ԭ���ߵ��ʼ�
   ("E" . gnus-summary-edit-article)          ;�༭�ʼ�
   ("d" . gnus-summary-delete-article)        ;ɾ���ʼ�
   ("y" . gnus-summary-select-article-buffer) ;��ʾ��Ӧ�� article
   )
 gnus-summary-mode-map
 )
(lazy-set-key
 '(
   ("y" . gnus-article-show-summary)    ;��ժҪ����Ӧ����֮����ת
   ("x" . gnus-mime-save-part)          ;����mime����
   )
 gnus-article-mode-map
 )
(lazy-set-key vi-move-key-alist gnus-summary-mode-map) ;vi-move �ľֲ�����
(lazy-unset-key '("t" "T") gnus-group-mode-map)        ;ж��һЩ����
(lazy-set-key
 '(
   ("f" . gnus-group-read-group-no-prompt) ;��ȡ��, ������
   ("K" . gnus-group-list-groups)          ;�г���
   ("t" . one-key-menu-gnus-topic-edit)    ;�༭�˵�
   ("T" . one-key-menu-gnus-topic-sort)    ;����˵�
   )
 gnus-group-mode-map
 )
(lazy-set-key vi-move-key-alist gnus-group-mode-map) ;vi-move �ľֲ�����
(lazy-set-key
 '(
   ("f" . gnus-server-read-server)      ;��ȡ������
   ("d" . gnus-server-kill-server)      ;ɾ��������
   )
 gnus-server-mode-map
 )
(lazy-set-key vi-move-key-alist gnus-server-mode-map) ;vi-move �ľֲ�����
(lazy-set-key
 '(
   ("J" . scroll-up-one-line)           ;���Ϲ���һ��
   ("K" . scroll-down-one-line)         ;���¹���һ��
   ("f" . gnus-browse-read-group)       ;�Ķ���ǰ��
   )
 gnus-browse-mode-map
 )
(lazy-set-key vi-move-key-alist gnus-browse-mode-map) ;vi-move �ľֲ�����
;;; ### Apt-utils ###
;;; --- Apt ������
(lazy-unset-key
 '("s")
 apt-utils-mode-map)                    ;ж�ذ���
(lazy-set-key
 '(
   ("s-x z" . apt-utils-search)         ;APT����
   ))
(lazy-set-key
 '(
   ("#" . apt-utils-rebuild-package-lists)    ;�ؽ����б�
   ("*" . apt-utils-list-package-files)       ;�г����ļ�
   ("F" . apt-utils-choose-package-link)      ;ѡ�������
   ("f" . apt-utils-follow-link)              ;��������
   ("<backtab>" . apt-utils-previous-package) ;��һ������
   ("TAB" . apt-utils-next-package)           ;��һ������
   ("q" . apt-utils-quit)                     ;�˳�
   ("d" . apt-utils-describe-package)         ;����
   ("B" . apt-utils-view-previous-package)    ;��һ����ͼ
   ("J" . scroll-up-one-line)                 ;���Ϲ���һ��
   ("K" . scroll-down-one-line)               ;���¹���һ��
   ("t" . apt-utils-toggle-package-info)      ;�л�info
   ("S" . apt-utils-show-package)             ;��ʾ��
   ("v" . one-key-menu-apt-utils-view)        ;�鿴�˵�
   ("s" . one-key-menu-apt-utils-search)      ;�����˵�
   ("b" . one-key-menu-apt-utils-browse)      ;����˵�
   )
 apt-utils-mode-map
 )
(lazy-set-key sdcv-key-alist apt-utils-mode-map)    ;sdcv�ľֲ�������
(lazy-set-key vi-move-key-alist apt-utils-mode-map) ;vi-move �ľֲ�����
;;; ### Paredit ###
;;; --- �ṹ�����
(lazy-unset-key
 '("M-J" "M-r" "M-s" "M-;" "C-M-f" "C-M-b")
 paredit-mode-map)                      ;ж�ذ���
(lazy-set-key
 '(
   ;; ���Ų���
   ("(" . paredit-open-parenthesis)             ;���� (
   (")" . paredit-close-parenthesis)            ;���� )
   ("[" . paredit-open-bracket)                 ;���� [
   ("]" . paredit-close-bracket)                ;���� ]
   ("{" . paredit-open-curly)                   ;���� {
   ("}" . paredit-close-curly)                  ;���� }
   ("C-s-," . paredit-open-angled)              ;���� <
   ("C-s-." . paredit-close-angled)             ;���� >
   ("\"" . paredit-doublequote)                 ;���� "
   ("\\" . paredit-backslash)                   ;���� \
   ;; ɾ��
   ("M-o" . paredit-backward-delete)            ;���ɾ��
   ("C-d" . paredit-forward-delete)             ;��ǰɾ��
   ("C-k" . paredit-kill)                       ;ɾ��
   ("C-M-m" . paredit-forward-kill-word)        ;��ǰ����ɾ��
   ("C-M-n" . paredit-backward-kill-word)       ;��󰴴�ɾ��
   ;; �ƶ�
   ("C-M-S-m" . paredit-forward)                ;��ǰ�ƶ�
   ("C-M-S-n" . paredit-backward)               ;����ƶ�
   ;; ��Χ
   ("M-\"" . paredit-meta-doublequote)          ;�� " " ��Χ����, �������ַ���
   ("M-(" . paredit-wrap-sexp)                  ;�� ( ) ��Χ��ǰ����
   ("M-[" . paredit-wrap-square)                ;�� [ ] ��Χ����
   ("M-{" . paredit-wrap-curly)                 ;�� { } ��Χ����
   ("C-(" . paredit-wrap-angled)                ;�� < > ��Χ����
   ("M-)" . paredit-splice-sexp+)               ;ȥ����Χ���������, ��ɾ������
   ;; ��������������
   ("M-:" . paredit-close-round-and-newline+)   ;���� ( ) �� " " ������
   ("M-?" . paredit-forward-sexp-and-newline)   ;�ƶ�����һ�����ʽ, ������
   ("M-}" . paredit-close-curly-and-newline)    ;���� { } ������
   ("M-]" . paredit-close-square-and-newline)   ;���� [ ] ������
   ("C-)" . paredit-close-angled-and-newline)   ;���� < > ������
   ;; ע��
   ("C-M-:" . paredit-comment-list-and-newline) ;ע�͵�ǰLIST������
   ;; ����
   ("C-j" . paredit-newline)            ;���ܻ��в�����
   ("M-q" . paredit-reindent-defun)     ;���¸�ʽ������
   ("M-s-r" . paredit-raise-sexp)       ;��ȡ���ʽ, ��ɾ��ͬһ�ȼ����������ʽ
   ("M-s-b" . paredit-convolute-sexp)   ;Ƕ�ױ��ʽ
   ;; ("M-s-'" . one-key-menu-paredit)     ;Paredit �˵�
   )
 paredit-mode-map
 )
;;; ### Haskell ###
;;; --- Haskell ����ģʽ
(lazy-set-key
 '(
   ("M-;" . comment-dwim-with-haskell-style) ;ע��
   )
 haskell-mode-map
 )
;;; ### Contentswitch ###
;;; --- �����ݿ�������
(lazy-set-key
 '(
   ("C-S-s-y" . contentswitch)          ;�����ݽ�������
   ))
(lazy-set-key
 '(
   ("C-n" . contentswitch-next-line)     ;��һ��
   ("C-p" . contentswitch-previous-line) ;��һ��
   ("C-v" . contentswitch-next-page)     ;��һ��
   ("M-v" . contentswitch-previous-page) ;��һ��
   ("C-m" . exit-minibuffer)             ;ѡ���������
   )
 contentswitch-map
 )
;;; ### Anything ###
;;; --- ����buffer�л�
(lazy-set-key
 '(("s-y" . anything)                   ;anything
   ("C-s-y" . anything-call-source)     ;�����ض���Դ
   ))
(lazy-set-key
 '(
   ("C-n" . anything-next-line)                  ;��һ��
   ("C-p" . anything-previous-line)              ;��һ��
   ("C-s" . anything-isearch)                    ;����
   ("C-m" . anything-exit-minibuffer)            ;ִ�ж���, ���˳�
   ("C-j" . anything-execute-persistent-action)  ;ִ�ж���, �����˳�
   ("C-v" . anything-next-page)                  ;��һҳ
   ("M-v" . anything-previous-page)              ;��һҳ
   ("M-s-y" . anything-insert-selection)         ;���뵱ǰ��Ŀ
   ("M-s-i" . anything-insert-symbol)            ;���뵱ǰ����
   ("M-s-o" . anything-insert-buffer-name)       ;���뻺������
   ("M-s-j" . anything-next-source)              ;��һ������
   ("M-s-k" . anything-previous-source)          ;��һ������
   ("M-s-h" . anything-select-action)            ;ѡ�������л���Դ
   ("M-s-l" . anything-select-source)            ;ѡ��Դ
   ("M-s-n" . anything-next-history-element)     ;��һ����ʷ��¼
   ("M-s-p" . anything-previous-history-element) ;��һ����ʷ��¼
   )
 anything-map
 )
;;; ### Timid ###
;;; --- ���ٲ�ȫ
(setq timid-keys
      (quote (("C-m" . timid-select-file)   ;ѡ��
              ("ESC" . timid-cleanup)       ;����
              ("C-p" . timid-previous-line) ;��һ��
              ("C-n" . timid-next-line)     ;��һ��
              ("M-v" . timid-previous-page) ;��һҳ
              ("C-v" . timid-next-page))))  ;��һҳ
;;; ### Apropos ###
;;; --- ����Ա�����ѯ
(lazy-set-key
 '(
   ("C-m" . apropos-follow)                ;����
   ("N" . forward-button-with-line-begin)  ;��һ����Ŀ
   ("P" . backward-button-with-line-begin) ;��һ����Ŀ
   ("J" . scroll-up-one-line)              ;���Ϲ���һ��
   ("K" . scroll-down-one-line)            ;���¹���һ��
   ("q" . quit-window)                     ;�˳�
   ("f" . push-button)                     ;ȷ��
   )
 apropos-mode-map
 )
(lazy-set-key sdcv-key-alist apropos-mode-map)    ;sdcv�ľֲ�������
(lazy-set-key vi-move-key-alist apropos-mode-map) ;vi-move �ľֲ�����
;;; ### Sys-apropos ###
;;; --- ϵͳ��ز�ѯ
(lazy-set-key
 '(
   ("f" . sys-apropos-run-woman)        ;����
   )
 sys-apropos-mode-map
 )
(lazy-set-key sdcv-key-alist sys-apropos-mode-map)    ;sdcv �ľֲ�����
(lazy-set-key vi-move-key-alist sys-apropos-mode-map) ;vi-mode �ľֲ�����
;;; ### Help ###
;;; --- ����ģʽ
(lazy-unset-key
 '("e" "h" "y")
 view-mode-map)                         ;ж�ذ���
(lazy-set-key
 '(
   ("C-h". one-key-menu-help)           ;�����˵�
   ))
(lazy-set-key
 '(
   ("s-j" . one-key-menu-android)
   ))
(lazy-set-key
 '(
   ("J" . scroll-up-one-line)           ;���¹���һ��
   ("K" . scroll-down-one-line)         ;���Ϲ���һ��
   ("H" . describe-mode)                ;����
   ("f" . help-go-forward)              ;ǰһ������
   ("b" . help-go-back)                 ;��һ������
   ("y" . sdcv-search-pointer+)         ;����
   ("<tab>" . forward-button)           ;ǰһ����ť
   )
 help-mode-map
 )
(lazy-set-key vi-move-key-alist help-mode-map) ;vi-move �ľֲ�����
;;; ### Info ###
;;; --- Info ģʽ
(lazy-set-key
 '(
   ("f" . Info-follow-nearest-node)     ;���뵱ǰ�ڵ�
   ("<tab>" . Info-next-reference)      ;��һ������
   ("<backtab>" . Info-prev-reference)  ;��һ������
   ("E" . Info-edit)                    ;�༭
   ("?" . Info-summary)                 ;����
   ("N" . Info-next)                    ;��һ��ͬ���ڵ�
   ("P" . Info-prev)                    ;��һ��ͬ���ڵ�
   ("J" . scroll-up-one-line)           ;���¹���һ��
   ("K" . scroll-down-one-line)         ;���Ϲ���һ��
   ("." . go-to-char-forward)           ;������ĳһ���ַ�
   ("," . go-to-char-backward)          ;��ǰ����ĳһ���ַ�
   ("<" . Info-forward-node)            ;��һ���ڵ�
   (">" . Info-backward-node)           ;��һ���ڵ�
   ("C-<" . Info-final-node)            ;���һ���ڵ�
   ("C->" . Info-top-node)              ;��ǰһ���ڵ�
   ("s" . Info-search)                  ;����
   ("S" . Info-search-case-sensitively) ;���ִ�Сд����
   ("g" . Info-goto-node)               ;����ָ���Ľڵ�
   ("q" . Info-exit)                    ;�˳�
   ("m" . Info-menu)                    ;�˵���ȫ
   ("d" . Info-directory)               ;��Ŀ¼
   ("I" . Info-index)                   ;����
   ("o" . Info-follow-reference)        ;�������ò�ȫ
   ("H" . Info-history)                 ;��ʷ
   ("F" . Info-history-forward)         ;��ʷ��ǰ
   ("B" . Info-history-back)            ;��ʷ���
   ("M-s" . Info-search)                ;�ڵ�����
   ("C" . clone-buffer)                 ;��¡��ǰbuffer
   ("c" . Info-copy-current-node-name)  ;������ǰ�ڵ�����
   ("u" . Info-up)                      ;������һ��
   ("T" . Info-toc)                     ;��������
   ("e" . Info-scroll-down)             ;���Ϲ���, vi-move �ĺ������¼���
   (" " . Info-fscroll-up)              ;���¹���
   )
 Info-mode-map
 )
(lazy-set-key sdcv-key-alist Info-mode-map)    ;sdcv�ľֲ�������
(lazy-set-key vi-move-key-alist Info-mode-map) ;vi-move �ľֲ�����
;;; ### Undo Browse ###
;;; --- ǿ��ĳ���ϵͳ
;; (lazy-set-key
;;  '(
;;    ("C-s-?" . ub-mode-on)               ;�򿪳���ϵͳ
;;    ))
;; (lazy-set-key
;;  '(
;;    ("m" . ub-movie)                     ;��Ӱ�ۿ�
;;    ("s" . ub-movie-stop)                ;��Ӱֹͣ
;;    ("n" . ub-movie-forward)             ;��һ����Ӱ
;;    ("p" . ub-movie-backward)            ;��һ����Ӱ
;;    ("S" . ub-movie-history)             ;��Ӱ��ʷ
;;    ("f" . ub-frame-forward)             ;ǰһ֡
;;    ("b" . ub-frame-backward)            ;��һ֡
;;    ("A" . ub-frame-beginning)           ;��һ֡
;;    ("E" . ub-frame-end)                 ;���һ֡
;;    ("g" . ub-frame-goto)                ;����ĳһ֡
;;    ("C-m" . ub-frame-retain-redo)       ;��������
;;    ("q" . ub-mode-quit)                 ;�˳�
;;    ("?" . ub-help)                      ;����
;;    ("J" . scroll-up-one-line)           ;���Ϲ���һ��
;;    ("K" . scroll-down-one-line)         ;����
;;    )
;;  ub-mode-map
;;  )
;; (lazy-set-key vi-move-key-alist ub-mode-map-default ) ;vi-move �ľֲ�����
;;; ### Calc ###
;;; --- ������
(lazy-set-key
 '(
   ("C-x c" . calc)                     ;������
   ))                                   ;;; ### Calendar ###
;;; --- ����
(lazy-set-key
 '(("C-c c" . calendar)))
(lazy-unset-key
 '("a")
 calendar-mode-map)                     ;ж�ذ���
(lazy-set-key
 '(
   ("j" . calendar-forward-week)              ;��һ������
   ("k" . calendar-backward-week)             ;��һ������
   ("l" . calendar-forward-day)               ;��һ��
   ("h" . calendar-backward-day)              ;��һ��
   ("L" . calendar-forward-month)             ;��һ��
   ("H" . calendar-backward-month)            ;��һ��
   ("J" . calendar-forward-year)              ;��һ��
   ("K" . calendar-backward-year)             ;��һ��
   ("aw" . calendar-beginning-of-week)        ;һ���ڵĵ�һ��
   ("ew" . calendar-end-of-week)              ;һ���ڵ����һ��
   ("am" . calendar-beginning-of-month)       ;һ�µĵ�һ��
   ("em" . calendar-end-of-month)             ;һ�µ����һ��
   ("ay" . calendar-beginning-of-year)        ;һ��ĵ�һ��
   ("ey" . calendar-end-of-year)              ;һ������һ��
   (";" . calendar-goto-today)                ;��������
   ("," . calendar-scroll-left)               ;�������һ��
   ("." . calendar-scroll-right)              ;���ҹ���һ��
   ("<" . calendar-scroll-left-three-months)  ;�����������
   (">" . calendar-scroll-right-three-months) ;���ҹ�������
   ("q" . calendar-exit)                      ;�˳�
   )
 calendar-mode-map)
;;; ### Keyboard Macro ###
;;; --- ���̺�
(lazy-set-key
 '(
   ("M-s-s" . kmacro-start-macro-or-insert-counter) ;��ʼ���̺�����
   ("M-s-d" . kmacro-end-or-call-macro)             ;�������̺�����
   ("M-s-c" . kmacro-delete-ring-head)              ;ɾ����ǰ�ļ��̺�
   ("M-s-w" . kmacro-cycle-ring-next)               ;��һ�����̺�
   ("M-s-e" . kmacro-cycle-ring-previous)           ;��һ�����̺�
   ("M-s-a" . kmacro-edit-macro)                    ;�༭���̺�
   ("M-s-v" . name-last-kbd-macro)                  ;���ǰ���̺�
   ("M-s-f" . insert-kbd-macro)                     ;������̺�
   ("M-s-q" . apply-macro-to-region-lines)          ;Ӧ�ü��̺굽ѡ�������
   ))
;;; ### Man ###
;;; --- Man
(lazy-set-key
 '(("C-<f1>" . woman)))
(lazy-set-key
 '(
   ("J" . scroll-up-one-line)           ;���Ϲ���һ��
   ("K" . scroll-down-one-line)         ;���¹���һ��
   ("," . end-of-buffer)                ;bufferĩβ
   ("." . beginning-of-buffer)          ;buffer��ʼ
   ("M-n" . Man-next-section)           ;��һ��
   ("M-p" . Man-previous-section)       ;��һ��
   ("g" . Man-goto-section)             ;��ת��ĳһ��
   ("G" . Man-goto-see-also-section)    ;��ת�� see-also
   ("f" . Man-follow-manual-reference)  ;��ǰ����man�ֲ�����
   ("F" . man-follow)                   ;ĳman�ֲ�����
   ("N" . Man-next-manpage)             ;��һ��ҳ��
   ("P" . Man-previous-manpage)         ;��һ��ҳ��
   ("q" . Man-quit)                     ;����
   ("Q" . Man-kill)                     ;�˳�
   )
 Man-mode-map
 )
(lazy-set-key sdcv-key-alist Man-mode-map)    ;sdcv�ľֲ�������
(lazy-set-key vi-move-key-alist Man-mode-map) ;vi-move �ľֲ�����
;;; ### Ielm ###
;;; --- Emacs Lisp ����ģʽ
(lazy-unset-key
 '("M-p" "M-n")
 ielm-map)                              ;ж�ذ���
(lazy-set-key
 '(
   ("M-s-i" . ielm-toggle)              ;�л�ielm
   ))
(lazy-set-key
 '(
   ("C-s-p" . comint-previous-input)    ;��һ������
   ("C-s-n" . comint-next-input)        ;��һ������
   )
 ielm-map
 )
;;; ### Go Change ###
;;; --- �޸Ĺ켣
(lazy-set-key
 '(
   ("s-/" . goto-last-change)           ;��ת������޸�, ��ǰ
   ("s-?" . goto-last-change-reverse)   ;��ת������޸�, ���
   ))
;;; ### Archive ###
;;; --- ѹ��ģʽ
;; (lazy-set-key
;;  '(
;;    ("j" . archive-next-line)            ;��һ��
;;    ("k" . archive-previous-line)        ;��һ��
;;    ("C-m" . archive-extract)            ;��ѹ
;;    ("E" . archive-extract-other-window) ;��ѹ����������
;;    ("m" . archive-mark)                 ;���
;;    ("d" . archive-flag-deleted)         ;ɾ�����
;;    ("x" . archive-expunge)              ;������ɾ����ǵ��ļ�
;;    ("u" . archive-unflag)               ;������, �����ƶ�
;;    ("i" . archive-unflag-backwards)     ;������, �������ƶ�
;;    ("U" . archive-unmark-all-files)     ;������б��
;;    ("g" . revert-buffer)                ;ˢ��
;;    ("q" . quit-window)                  ;�˳�
;;    ("f" . archive-view)                 ;���
;;    ("r" . archive-rename-entry)         ;������
;;    ("e" . scroll-down)                  ;���¹���һ��
;;    (" " . scroll-up)                    ;���Ϲ���һ��
;;    ("M" . archive-chmod-entry)          ;chmod����
;;    ("G" . archive-chgrp-entry)          ;chgrp����
;;    ("O" . archive-chown-entry)          ;chown����
;;    )
;;  archive-mode-map
;;  )
;;; ### Completion List ###
;;; --- ��ȫ�б�
(lazy-set-key vi-move-key-alist completion-list-mode-map) ;vi-move�ľֲ�����
(lazy-set-key sdcv-key-alist completion-list-mode-map)    ;sdcv �ľֲ�����
;;; ### Isearch ###
;;; --- ����ʽ����
(lazy-set-key
 '(
   ("TAB" . isearch-complete)               ;isearch��ȫ
   ("C-s" . isearch-repeat-forward)         ;�ظ���ǰ����, ��һ�ο�������������һ�ε���ʷӴ
   ("C-r" . isearch-repeat-backward)        ;�ظ��������
   ("C-g" . isearch-abort)                  ;��ֹ����
   ("C-w" . isearch-yank-word-or-char)      ;ճ������Ĵʻ��ַ���Ϊ��������
   ("C-y" . isearch-yank-line)              ;ճ�����������Ϊ��������
   ("M-o" . isearch-delete-char)            ;ɾ��
   ("M-l" . isearch-to-lazy-search)         ;�л���lazy-search
   ("M-p" . isearch-ring-retreat)           ;������ʷ���
   ("M-n" . isearch-ring-adjust)            ;������ʷ��ǰ
   ("M-y" . isearch-yank-kill)              ;�� kill ring ��ճ�����һ����������
   ("M-h" . isearch-yank-char)              ;ճ��������ַ�����������
   ("M-e" . isearch-edit-string)            ;�༭��������
   ("M-c" . isearch-toggle-case-fold)       ;�л���Сд
   ("M-r" . isearch-toggle-regexp)          ;�л�������ʽ
   ("M-w" . isearch-toggle-word)            ;�л���
   ("M-g" . isearch-moccur)                 ;moccur ��ǰ buffer
   ("M-G" . isearch-moccur-all)             ;moccur ���� buffer
   ("M->" . isearch-beginning-of-buffer)    ;��ת��buffer��ͷ����������, ������ǰ��һ��
   ("M-<" . isearch-end-of-buffer)          ;��ת��bufferĩβ����������, ���������һ��
   ("M-%" . isearch-query-replace)          ;�滻
   ("M-d" . isearch-find-duplicate-word)    ;�����ظ��ĵ���
   ("M-z" . isearch-find-duplicate-line)    ;�����ظ�����
   ("C-M-%" . isearch-query-replace-regexp) ;������ʽ�滻
   )
 isearch-mode-map
 )
;; Zencoding
(lazy-set-key
 '(
   ("C-c C-c" . gnome-open-buffer)
   ("C-c C-l" . dired-open-buffer)
   ("RET" . newline)
   ("TAB" . yas/expand)
   ("M-i" . forward-indent)
   )
 html-helper-mode-map
 )
;;; ### coffee-mode ###
(lazy-set-key
 '(
   ("C-m" . comment-indent-new-line)
   )
 coffee-mode-map)
;;; ### kill-ring-search ###
;;; --- ɾ�����ĵ���ʽ����
(lazy-set-key
 '(
   ("M-s-y" . kill-ring-search)         ;kill ring ����
   ))
(lazy-set-key
 '(
   ("C-s" . kill-ring-search-prev))     ;��һ��ƥ��
 kill-ring-search-keymap
 )
;;; ### Babel ###
;;; --- ���緭��ӿ�
;; (lazy-set-key
;;  '(
;;    ("s-t" . babel-smart)                ;���ܷ���
;;    ))
;; (lazy-set-key
;;  '(
;;    ("q" . babel-quit)                   ;�˳�
;;    ("," . end-of-buffer)                ;�����
;;    ("." . beginning-of-buffer)          ;��ǰ��
;;    ("s" . isearch-forward)              ;��ǰ����
;;    ("r" . isearch-backward)             ;�������
;;    )
;;  babel-mode-map
;;  )
;; (lazy-set-key vi-move-key-alist babel-mode-map)
;;; ### Breadcrumb ###
;;; --- ��ǩ������
(lazy-set-key
 '(
   ("s-7" . bc-local-next)              ;�ֲ���һ��
   ("s-8" . bc-local-previous)          ;�ֲ���һ��
   ("s-9" . bc-next)                    ;ȫ����һ��
   ("s-0" . bc-previous)                ;ȫ����һ��
   ("s-o" . bc-goto-current)            ;������ǰ
   ("s-l" . bc-list)                    ;��ǩ�б�
   ("s-'" . bc-set)                     ;��ǩ�趨
   ))
(lazy-set-key
 '(
   ("j" . next-line)                    ;��һ��
   ("k" . previous-line)                ;��һ��
   ("d" . bc-menu-mark-delete)          ;���ɾ����ǰ
   ("D" . bc-menu-mark-all-delete)      ;���ɾ������
   ("x" . bc-menu-commit-deletions)     ;ȷ��ɾ��
   ("u" . bc-menu-unmark-delete)        ;ȥ��ǵ�ǰ
   ("U" . bc-menu-unmark-all-delete)    ;ȥ�������
   ("v" . bc-menu-visit-other)          ;���������������
   ("f" . bc-menu-jump)                 ;������ǩ��
   )
 *bc-menu-mode-map*
 )
;;; ### Text Translator ###
;;; --- �ı�����
(lazy-set-key
 '(
   ("s-x ti" . text-translator)                             ;ȫ�ķ���, ����
   ("s-x tt" . text-translator-translate-by-auto-selection) ;ȫ�ķ����Զ�ѡ��
   ))
;;; ### Functin key ###
;;; --- ���ܺ���
(lazy-set-key
 '(
   ("<f1>" . sh-show-help)                       ;elisp help
   ("<f2>" . refresh-file)                       ;�Զ�ˢ���ļ�
   ("<f3>" . visit-tags-table)                   ;����TAGS�ļ� (����TAGS��)
   ("<f4>" . generate-gtags-files)               ;����gtags�����ļ�
   ("<f5>" . emacs-exit)                         ;�˳�emacs
   ("<f6>" . lock-screen)                        ;����
   ("<f7>" . one-key-menu-ui)                    ;�û�����˵�
   ("<f8>" . dired-jump)                         ;�ļ�������
   ("<f9>" . list-load-path-shadows)             ;��ʾ�ظ����صĿ�
   ("<f10>" . open-current-log-keyboard-command) ;��������־
   ("<f11>" . fullscreen-toggle)                 ;ȫ���л�
   ("<f12>" . hibernate-disk)                    ;����
   ("M-1" . strip-blank-lines)                   ;ɾ��ѡ����������п���
   ("M-2" . indent-buffer)                       ;�Զ���ʽ����ǰBuffer
   ("M-3" . delete-trailing-whitespace)          ;ɾ����ĩ�ո�
   ("M-4" . whitespace-cleanup)                  ;����ո�
   ("M-5" . insert-line-number+)                 ;�Զ�����������к�
   ("M-6" . strip-line-number)                   ;ɾ��ѡ��������к�
   ("C-4" . insert-changelog-date)               ;������־ʱ�� (%Y/%m/%d)
   ("C-5" . insert-standard-date)                ;�����׼ʱ�� (%Y-%m-%d %T)
   ("C-&" . switch-to-messages)                  ;��ת�� *Messages* buffer
   ("C-7" . jump-back)                           ;���ز��ҷ��Ŷ���ǰ��λ��
   ("C-8" . find-function-or-variable-at-point)  ;���ҷ��ŵĶ���
   ("M-I" . backward-indent)                     ;����ƶ�4���ַ�
   ))
;;; ### Buffer Move ###
;;; --- �����ƶ�
(lazy-set-key
 '(
   ("s-N" . move-text-down)                ;�ѹ�����ڵ���������(����)����һ��
   ("s-P" . move-text-up)                  ;�ѹ�����ڵ���������(����)����һ��
   ("s-J" . scroll-up-one-line)            ;���Ϲ���һ��
   ("s-K" . scroll-down-one-line)          ;���¹���һ��
   ("M-J" . scroll-other-window)           ;���¹�����������
   ("M-K" . scroll-other-window-down)      ;���Ϲ�����������
   ("M-<" . scroll-other-window-up-line)   ;���¹�����������һ��
   ("M->" . scroll-other-window-down-line) ;���Ϲ�����������һ��
   ("C-o" . open-newline-above)            ;������һ���½�һ��
   ("C-l" . open-newline-below)            ;������һ���½�һ��
   ("C-z k" . beginning-of-buffer)         ;���濪ʼ
   ("C-z j" . end-of-buffer)               ;�����β
   ("M-p" . go-to-next-pair-right)         ;��( ),' ', " ", [ ], { }������ƥ����ŵ��ұ�
   ("M-n" . go-to-next-pair-left)          ;��( ), ' ', " ", [ ], { }������ƥ����ŵ����
   ("%" . match-paren)                     ;���������ϰ� % ʱ, �Զ���ת���뵱ǰ����ƥ�����һ������
   ("s-g" . goto-percent)                  ;��ת����ǰBuffer���ı��ٷֱ�, ��λΪ�ַ�
   ("M-g" . goto-line)                     ;��ָ����
   ("M-G" . goto-column)                   ;��ָ����
   ("C-M-f" . forward-paragraph)           ;��һ������
   ("C-M-b" . backward-paragraph)          ;��һ������
   ("C-M-y" . backward-up-list)            ;�������� LIST
   ("C-M-o" . up-list)                     ;�������� LIST
   ("C-M-u" . backward-down-list)          ;�������� LIST
   ("C-M-i" . down-list)                   ;�������� LIST
   ("C-M-a" . beginning-of-defun)          ;������ͷ
   ("C-M-e" . end-of-defun)                ;����ĩβ
   ("C-c j" . go-to-char-forward)          ;������ĸ����, ��ǰ
   ("C-c k" . go-to-char-backward)         ;������ĸ����, ���
   ("C->" . remember-init)                 ;�����ʼ����
   ("C-<" . remember-jump)                 ;������ת����
   ("M-s" . lazy-search-menu)              ;��������
   ("M-s-," . point-stack-pop)             ;buffer������ת
   ("M-s-." . point-stack-push)            ;buffer�������
   ("s-{" . current-line-move-to-top)      ;�ƶ���ǰ�е�������һ��
   ))
;;; ### Buffer Edit ###
;;; --- ����༭
(lazy-set-key
 '(
   ("M-N" . kill-syntax-backward+)            ;�������﷨ɾ��
   ("M-M" . kill-syntax-forward+)             ;��ǰ�����﷨ɾ��
   ("C-:" . comment-or-uncomment-region+)     ;ע�͵�ǰ��
   ("C-s-n" . comment-dwim-next-line)         ;�ƶ�����һ�в�ע��
   ("C-s-p" . comment-dwim-prev-line)         ;�ƶ�����һ�в�ע��
   ("M-s-n" . comment-part-move-down)         ;�����ƶ�ע��
   ("M-s-p" . comment-part-move-up)           ;�����ƶ�ע��
   ("C-x C-x" . exchange-point-and-mark)      ;������ǰ��ͱ�ǵ�
   ("M-o" . backward-delete-char-untabify)    ;��ǰɾ���ַ�
   ("M-z" . zap-to-char)                      ;��ǰɾ������һ��������ַ�
   ("C-M-z" . zap-back-to-char)               ;���ɾ������һ��������ַ�
   ("C-/" . undo)                             ;����
   ("C-?" . redo)                             ;����
   ("s-k" . kill-and-join-forward)            ;����������֮��ɾ��
   ("C-x u" . mark-line)                      ;ѡ������
   ("C-M-S-h" . mark-paragraph)               ;ѡ�ж���
   ("C-S-o" . duplicate-line-or-region-above) ;���ϸ��Ƶ�ǰ�л�����
   ("C-S-l" . duplicate-line-or-region-below) ;���¸��Ƶ�ǰ�л�����
   ("C-S-s-o" . duplicate-line-above-comment) ;���Ƶ�ǰ�е���һ��, ��ע�͵�ǰ��
   ("C-S-s-l" . duplicate-line-below-comment) ;���Ƶ�ǰ�е���һ��, ��ע�͵�ǰ��
   ("M-SPC" . just-one-space)                 ;ֻ��һ���ո��ڹ�괦
   ))
;;; ### Buffer Name ###
;;; --- ��������
(lazy-set-key
 '(
   ("s-c r" . rename-file-and-buffer)        ;���ĵ�ǰ�ļ�������
   ("s-c g" . move-buffer-file)              ;���ĵ�ǰ�ļ���Ŀ¼
   ("s-c n" . copy-buffer-file-name-as-kill) ;����buffer����
   ))
;;; ### Completion Operation ###
;;; --- ��ȫ����
(lazy-set-key
 '(
   ;;("C-c l" . semantic-ia-complete-symbol-menu) ;������ȫ�˵�
   ("C-c SPC" . senator-completion-menu-popup) ;������ȫ�˵�
   ("M-/" . hippie-expand)                     ;���ܲ�ȫ
   ))
;;; ### Golang ###
(lazy-set-key
 '(
   ("C-c C-c" . go-run-buffer)
   ))
;;; ### VC ###
;;; --- �汾����
(lazy-set-key
 '(
   ("C-x v" . one-key-menu-VC)          ;�汾����
   ))
;;; ### Window Operation ###
;;; --- ���ڲ���
(lazy-set-key
 '(
   ("C-c v" . split-window-vertically)                ;����ָ��
   ("C-c h" . split-window-horizontally)              ;����ָ��
   ("C-'" . delete-current-buffer-and-window)         ;�رյ�ǰbuffer, ���رմ���
   ("C-\"" . delete-current-buffer-window)            ;ɾ����ǰbuffer�Ĵ���
   ("C-;" . kill-this-buffer)                         ;�رյ�ǰbuffer
   ("C-M-;" . kill-other-window-buffer)               ;�ر��������ڵ�buffer
   ("C-x ;" . delete-other-windows)                   ;�ر���������
   ("C-c V" . delete-other-windows-vertically+)       ;�ر����µ���������
   ("C-c H" . delete-other-windows-horizontally+)     ;�ر����ҵ���������
   ("s-Q" . kill-current-mode-buffers)                ;�ر��뵱ǰģʽ��ͬ������buffers
   ("s-q" . kill-current-mode-buffers-except-current) ;�رյ�ǰģʽ����buffers, ���˵�ǰbuffer
   ("s-;" . one-key-menu-window-navigation)           ;���ٴ��ڵ���
   ("s-a" . window-number-jump)                       ;���ڿ���ѡ��
   ("C-s-7" . select-next-window)                     ;ѡ����һ������
   ("C-s-8" . select-prev-window)                     ;ѡ����һ������
   ("M-s-o" . toggle-one-window)                      ;�л�һ������
   ))
;;; ### Ispell ###
;;; --- ƴд���
(lazy-set-key
 '(("s-v s-v" . ispell-buffer)))        ;��鵱ǰbuffer
;;; ### Slime mode ###
(lazy-set-key
 '(
   ("M-n" . go-to-next-pair-left)
   ("M-p" . go-to-next-pair-right)
   ("C-m" . comment-indent-new-line)
   ("C-c C-l" . slime-load-current-file)
   )
 slime-mode-map
 )
;;; ### Markdown ###
;;; --- Markdown mode
(lazy-set-key
 '(
   ("<tab>" . yas/expand))
 markdown-mode-map
 )
;;; ### Toolkit ###
;;; --- ���ߺ���
(lazy-set-key
 '(
   ("C-x C-c" . checkdoc)                   ;����ĵ�
   ("C-c ns" . notes-search)                ;��ǩ����
   ("C-c nn" . notes-new)                   ;�½���ǩ
   ("s-c o" . one-key-menu-directory)       ;Ŀ¼�򿪲˵�
   ("M-C" . one-key-menu-cycle-buffer)      ;�ض�ģʽ�л�
   ("s-*" . one-key-menu-backup-file)       ;��������
   ("s-," . bury-buffer)                    ;���ص�ǰbuffer
   ("s-." . unbury-buffer)                  ;�����ص�ǰbuffer
   ("s-&" . killall)                        ;ɱ������
   ("C-x w" . count-words)                  ;���㵥�ʵ�����
   ("C-z l" . linum-mode)                   ;�к�ģʽ�л�
   ("s-Z" . dot-emacs)                      ;��dot-emacs�ļ�
   ("C-x f" . find-file-at-point)           ;�ļ���ת
   ("s-f" . find-file-root)                 ;��root���ļ�
   ("s-r" . find-file-smb)                  ;����samba
   ("<print>" . save-screenshots)           ;����
   ("<M-s-return>" . toggle-debug-on-error) ;�л�����ģʽ
   ("s-R" . re-builder)                     ;���ӻ�����������ʽ
   ;; ("s-1" . elisp-depend-insert-require)    ;���� (require '...) ���
   ("s-1" . sort-lines)                  ;����
   ("s-2" . elisp-depend-insert-comment) ;���� `...' ע�ʹ���
   ("s-3" . hanconvert-region)           ;ת�������������
   ("s-4" . uniquify-all-lines-buffer)   ;ɾ���ظ�����
   ("s-[" . eval-expression)             ;ִ�б��ʽ
   ("s-\\" . artist-mode)                ;����ģʽ
   ("M-s-u" . ediff-buffers)             ;ediff
   ("C-s-q" . quoted-insert)             ;��ȡϵһ�������ַ�������
   ))

(provide 'LazyCatKeystoke)
