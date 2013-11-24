;;; �Ѽ�����չ����
(require 'python)                  ;Python mode
(require 'tooltip)                 ;������ʾ
(require 'eldoc)                   ;����������ʾ
(require 'avoid)                   ;�����Ϊ
(require 'shell)                   ;Shellģʽ
(require 'shell-command)           ;��ǿ��shell-command
(require 'ansi-color)              ;ת��shell�е���ɫ����Ϊface
(require 'flymake)                 ;ʵʱ�﷨���
(require 'flymake-shell)           ;��shellģʽ��ʵʱ�﷨���
(require 'flymake-python)          ;��Python����ʵʱ���
(require 'kill-ring-search)        ;Kill ring ����
(require 'highlight-parentheses)   ;��������
(require 'top-mode)                ;top
(require 'pick-backup)             ;�������
(require 'autoload)                ;����'autoload'�Ĵ���
(require 'ppindent)                ;����CԤ�����ʽ
(require 'find-dired-lisp)         ;�ļ�����
;; (require 'rx)                        ;����������ʽ����
;; (require 'sregex)                    ;������һ��������ʽ����
(require 'windresize)                ;��������
(require 'etags)                     ;Դ���뵼��
(require 'save-abbreviation-mode)    ;LISP����
(require 'zone)                      ;����
;; (require 'maxima)                       ;��������ϵͳ
;; (require 'imaxima)                      ;��Tex��ʾ�������ʽ
(require 'tempbuf)                      ;�Զ��ر���ʱbuffer
(require 'doxymacs)                     ;�ĵ�ϵͳ
(require 'info)                         ;Info
(require 'info+)                        ;Info ��ǿ
(require 'apt-sources)                  ;AptԴ�༭
(require 'rect)                         ;���α༭
(require 'rect-mark)                    ;���β���
(require 'term)                         ;�ն�ģ����
(require 'uniquify)                     ;�������������buffer, ����ǰ�����·������
(require 'org)                          ;������Ϣ����
(require 'color-moccur)                 ;���Ի�����������
(require 'moccur-edit)                  ;�����༭
(require 'apt-utils)                    ;APT����������
;; (require 'g)                  ;Google Client, ����Google����, ����, �Ķ���
(require 'cycle-buffer)       ;bufferѭ���л�
;; (require 'tramp)            ;��ǿ��Զ���ļ����ʹ���
;; (require 'rcirc)                        ;Emacs����һ������IRC�ͻ���
;; (require 'rcirc-color)                  ;rcirc����, �����ɫ�ݳ�
;; (require 'rcirc-sound)                  ;CTCP����֧��
(require 'windows)                      ;���ڱ���
;; (require 'festival)                     ;�����ϳ�
;; (require 'what-domain)      ;������ѯ
(require 'goto-last-change)             ;��ת�����༭�ĵط�
(require 'iman)                         ;���õ�man�ֲ�
(require 'yasnippet)                    ;����TextMate�����ģ��ģʽ
(require 'showtip)                      ;һ����ʾ��Ϣ�ĵ���С����, ����tooltip
(require 'less)                         ;���ģʽ
;; (require 'google-define)                ;Google �����ѯ
(require 'java-mode-indent-annotations) ;Java ����
;; (require 'beanshell)        ;Beanshell
(require 'font-lock)                  ;Font-lock
(require 'abbrev)                     ;���ڲ�ȫ
;; (require 'crosshairs)                  ;�����к���
;; (require 'mldonkey)                    ;mldonkey �Ĺ������
(require 'wget)                         ;Wget�Ĺ������
(require 'ansi-color)                   ;shell������ʾ��ɫ
(require 'miniedit)                     ;�༭minibuffer
(require 'buffer-move)                  ;buffer�ƶ�����
(require 'scroll-mode-line-mode)        ;Mode-line����
(require 'cc-mode)                      ;C����ģʽ
(require 'redo)                         ;��������
;;(require 'ascii)                        ;ASCII����
(require 'ediff)                        ;�ļ��ȽϹ���
(require 'ediff+)                       ;ediff��ǿ
(require 'ctypes)                       ;Cģʽ�����Ͷ���(typedef)�﷨����
(require 'modeline-posn)                ;modeline��Ϣ��ʶ
(require 'show-wspace)                  ;�ո���ʾ
(require 'windmove)                     ;�����ƶ�����
(require 'compile-dwim)                 ;���ܱ������г���
;;(require 'eassist)                     ;h, cpp�ļ���ת����, ֧�ּ�ʱ����ѡ��
;; (require 'chart)                       ;Emacs���ڴ�ʹ��
(require 'ibuffer)                     ;ibufferģʽ
(require 'ido)                         ;idoģʽ
(require 'tabbar)                      ;��ǩ����
(require 'browse-kill-ring)            ;��ǿ�ָ�
(require 'recentf)                     ;��������ļ�
;; (require 'xcscope)                     ;cscope
(require 'linum)                       ;��ʾ�к�
(require 'smiley)                      ;����simpley
(require 'emms-source-file)            ;Emms �ļ�
(require 'emms-source-playlist)        ;Emms �б�
(require 'emms-player-simple)          ;Emms simple
(require 'emms-player-mplayer)         ;Emms mplayer������
(require 'emms-playlist-mode)          ;Emms �����б�ģʽ
(require 'emms-info)                   ;Emms��Ϣģʽ
(require 'emms-cache)                  ;Emms����
(require 'emms-playing-time)           ;Emms ����ʱ��
(require 'emms-volume)                 ;Emms ��������
(require 'emms-lyrics)                 ;Emms ���
(require 'emms-setup)                  ;Emms ����
(require 'emms-player-mpg321-remote)   ;Emms Զ�̲���
(require 'emms-streams)                ;Emms ��ý��
(require 'emms-volume-amixer)          ;Emms ��������
(require 'emms-lyrics-download)        ;�Զ����ظ��
(require 'emms-i18n)                   ;�Զ�ʶ�����ֱ�ǩ�ı���
(require 'emms-history)                ;�Զ�����͵����ϴεĲ����б�
(require 'emms-browser)                ;EMMS �����
(require 'emms-cache)                  ;EMMS ����
(require 'emms-tag-editor)             ;EMMS ��ǩ�༭��
(require 'executable)                  ;ִ�н��ͽű�
(require 'w3m)                         ;W3M
(require 'w3m-search)                  ;w3m����
(require 'w3m-bookmark)                ;w3m��ǩ
(require 'w3m-tabmenu)                 ;W3m��ǩ�˵�
(require 'w3m-wget)                    ;W3m wget ����
(require 'w3m-lnum)                    ;W3M ���ֿ��ٵ���
(require 'w3m-form)                    ;W3m ���
(require 'w3m-util)                    ;w3m ����
(require 'w3m-symbol)                  ;w3m ���Ŵ���
(require 'dired)                       ;Dired
(require 'dired+)                      ;��ǿdired
(require 'dired-details)               ;Dired��ϸ��Ϣ
(require 'dired-details+)              ;Dired��ϸ��Ϣ�л�
(require 'dired-tar)                   ;��tar�ļ��ϰ�T��������ļ�
(require 'dired-single)                ;��Diredģʽ���õ�һ��Buffer���Ա���Buffer֮����л�
(require 'dired-x)                     ;Dired��ǿ
(require 'dired-view)                  ;Dired�е��ļ�����ת
(require 'dired-isearch)               ;dired������������
(require 'wdired)                      ;Dired �༭ģʽ
;; (require 'fvwm-mode)                   ;fvwmģʽ
(require 'nnmairix)                    ;�ʼ�����
;; (require 'bbdb)                         ;���ݿ�
;; (require 'bbdb-autoloads)               ;bbdb �Զ�����
(require 'shell-history)               ;Shell��ʷ
(require 'paredit)                     ;���ű༭ģʽ
;; (require 'mwe-log-commands)       ;������־
(require 'predictive)                  ;Ӣ������
(require 'contentswitch)               ;�������л�������ļ�
;; (require 'etest)                  ;���Թ���
(require 'fringe-helper)               ;��Ե����
(require 'newcomment)                  ;����ע�͵ĺ���
;;(require 'icicles)                      ;����minibuffer��ȫ
;;(require 'icicles-install)              ;icicles�Զ���װ
(require 'cus-edit+)                   ;cus-edit����ǿ
(require 'eyedropper)                  ;��ȡ��ǰ��괦��ǰ���ͱ���ɫ
(require 'help-mode+)                  ;help-mode��ǿ
(require 'help-fns+)                   ;help-fns��ǿ
(require 'lib-requires)                ;�г�Emacs Lisp�������
(require 'timid)                       ;��ǿfind-file��iswitch�е���ʷ����
;; (require 'gtk-look)               ;��HTML����ʽ�鿴GTK�ĵ�
(require 'starttls)                     ;SSL����Э��
(require 'smtpmail)                     ;SMTPЭ��
(require 'supercite)                    ;��ɫ���ʼ�����
;; (require 'eperiodic)              ;��ѧԪ�����ڱ�
(require 'gnus-srvr)                    ;gnus���������
(require 'gnus-demon)                   ;Gnus���س���
(require 'redo+)                        ;Extension redo.el
(require 'uptimes)                      ;��¼����ʱ��
;; (require 'ub)                     ;ǿ��ĳ���ϵͳ
(require 'cal-china-x)                  ;��������
(require 'ielm)                         ;ELISP��������
(require 'traverselisp)                 ;��Ŀ¼���������滻, ֧��AVFS!
(require 'goto-chg)                     ;������޸�����ת
(require 'levents)                      ;֧��xgtags.el
(require 'gtags)                        ;gtags.el
(require 'xgtags)                       ;gtags�Ľ���
(require 'macros+)                      ;macro����չ
(require 'switch-to-new-buffer)         ;�л���һ���µ�buffer
(require 'apropos)                      ;������ѯ
;; (require 'apropos-fn+var)               ;apropos��ǿ
(require 'pp+)                          ;pp��ǿ
;; (require 'elscreen)                     ;������
(require 'breadcrumb)                   ;������ǩ����
(require 'unbound)                      ;����һ��û�а󶨵İ���
(require 'window-number)                ;�������ֵ���
(require 're-builder)                   ;���ӻ�����������ʽ
(require 'scim-bridge-zh-si)            ;scim-brige ����SCIM���뷨
(require 'highlight-fixmes-mode)        ;����fixme�ȹؼ���
(require 'cedet)                        ;���ɿ�������
(require 'semantic)                     ;semantic
(require 'hideshow-fringe)              ;hideshow �� fringe ��ʾ
(require 'cursor-chg)                   ;�������״̬�ı���״����ɫ
(require 'crontab-mode)                 ;crontab ģʽ
(require 'edit-env)                     ;�༭��������
;; (require 'intel-hex-mode)      ;Intel ʮ������ģʽ
(require 'wtf)                          ;��ѯ�Ի���д��
(require 'cldoc)                        ;��ʾcommon lisp�Ĳ������ͱ�����Ϣ
(require 'haskell-mode)                 ;Haskellģʽ
(require 'haskell-ghci)                 ;Haskell GHCi ����ģʽ
(require 'haskell-indent)               ;Haskell ��������
;; (require 'eimp)                        ;ͼ�����
(require 'look-mode)                    ;�����ļ����ģʽ
(require 'anything)                     ;Anything
(require 'anything-config)              ;Anything config
(require 'anything-complete)            ;Anything ��ȫ
(require 'anything-match-plugin)        ;Anything ƥ���㷨�����Ի�����
(require 'anything-gtags)               ;Anything ��� Gtags
(require 'anything-c-yasnippet)         ;Anything yasnippet
(require 'anything-c-moccur)            ;Anything �� moccur����
(require 'anything-etags)               ;Anything etags
(require 'sys-apropos)                  ;ϵͳ��ز�ѯ
(require 'ireplace)                     ;isearch ģʽ�е��滻����
;;(require 'file-journal)                ;�ļ������ڷ���
;; (require 'babel)                       ;���緭��ӿ�
(require 'auto-complete)                ;�Զ���ȫ
(require 'auto-complete-cpp)            ;���� auto-complete �� C++
(require 'auto-complete-emacs-lisp)     ;���� auto-complete �� emacs-lisp
(require 'auto-complete-gtags)          ;���� auto-complete �� gtags
;; (require 'auto-complete-semantic)      ;���� auto-complete �� semantic
(require 'auto-complete-yasnippet)      ;���� auto-complete �� yasnippet
;;(require 'auto-complete-css)           ;���� auto-complete �� css
(require 'ac-dabbrev)                  ;auto-complete �� `dabbrev' ֧��
;; (require 'boxquote)                    ;�ı����ù���
(require 'erc)                         ;IRC����
(require 'erc-highlight-nicknames)     ;��ͬ�ǳƵ���ɫ
(require 'files+)                      ;file.el ��ǿ
(require 'ls-lisp+)                    ;ls-lisp.el ��ǿ
(require 'magit)                       ;Emacs Git �ͻ���
;; (require 'egg)                          ;���� magit �Ľ���
;; (require 'egg-grep)                     ;egg grep ֧��
(require 'speedbar)
(require 'sr-speedbar)           ;����speedbar����ǰframe
(require 'winpoint)              ;��¼ÿһ������buffer���ض�λ��
;; (require 'xray)                         ;��ʾEmacs������ڲ��ṹ
(require 'ispell)                       ;ƴд���
(require 'color-grep)                   ;��ɫ��ʾ grep buffer
(require 'grep-edit)                    ;grep �༭�ĸ߼�ģʽ
(require 'hs-lint)                      ;`hs-lint' ����
;; (require 'hs-scan)                      ;`hs-scan'
(require 'find-lisp)                    ;����lisp�ļ�
(require 'hl-sexp)                      ;���� sexp
(require 'jump-dls)                     ;���ҷ��ŵĶ���
(require 'auto-document)                ;�Զ������ĵ�
(require 'highlight-cl)                 ;���� `cl' ����
;; (require 'company)                      ;�����Զ���ȫ
(require 'hs-lint)                      ;Haskell ���뽨��
(require 'compilation-always-kill)      ;����ɱ���Ѵ��ڵı������
(require 'compilation-recenter-end)     ;�����ָ�
(require 'darcsum)                      ;darcs mode
;; (require 'mumamo)
(require 'js2-mode)                     ;javascript mode
(require 'pretty-lambdada)              ;pretty lambda
(require 'html-helper-mode)             ;html helper mode
(require 'zencoding-mode)
(require 'tuareg)                       ;ocaml edit mode
(require 'ocamldebug)                   ;ocaml debug mode
(require 'flymake-jslint)               ;flymake for javascript
(require 'go-mode)                      ;Go language
(require 'go-flymake)                   ;Go flymake
(require 'coffee-mode)
(require 'markdown-mode)                ;Markdown
(require 'slime)

;;; �Լ�����չ����
(require 'basic-edit-toolkit)           ;�����༭��
(require 'fullscreen)                   ;ȫ��
(require 'shell-command-extension)      ;shell command ��չ
(require 'lazycat-toolkit)              ;���߰�
(require 'wget-extension)               ;wget ��չ
(require 'find-func-extension)          ;`find-func' ����չ
(require 'window-extension)             ;������ǿ����
(require 'buffer-extension)             ;������ǿ����
(require 'lazy-set-key)                 ;���谴������
(require 'sdcv)                         ;�Ǽ�������֧��
(require 'w3m-extension)                ;W3m��չ
(require 'thing-edit)                   ;����thingatpt�ı༭��չ
(require 'thing-edit-extension)         ;thing-edit ��ǿ
;; (require 'rcirc-notify+)                ;rcirc����
;; (require 'rcirc-extension)              ;rcirc����չ
(require 'doc-view-extension)           ;doc-view��չ
(require 'org-extension)                ;Org��ǿ
(require 'org-w3m)                      ;Org w3m ����ת��
;; (require 'alarm)                        ;����
(require 'mail-notify)                  ;�ʼ�����
(require 'gnus-notify+)                 ;Gnus����
(require 'speedbar-extension)           ;speedbar��չ
;; (require 'etags-extension)              ;etags��չ
(require 'multi-term)                   ;���ǩSHELL
(require 'lazycat-c-style)              ;C �ı�̷��
;; (require 'festival-extension)           ;Festival��չ
(require 'emms-extension)               ;emms��չ
(require 'paredit-extension)            ;Paredit��չ
;; (require 'xgtags-extension)             ;xgtags����չ
(require 'c-mode-extension)             ;C ģʽ����չ
(require 'newsticker-extension)         ;newsticker��չ
(require 'scim-bridge-extension)        ;scim-brige ��һЩ��չ
(require 'dired-extension)              ;dired ��һЩ��չ
(require 'wdired-extension)             ;wdired ����չ
(require 'dired-sort)                   ;���� dired �ļ�
(require 'dired-open)                   ;�� dired �д򿪲�ͬ�ļ�
(require 'flymake-extension)            ;flymake ��һЩ��չ
(require 'haskell-extension)            ;Haskell��һЩ��չ
(require 'show-help)                    ;�� showtip ��ʾ������Ϣ
(require 'rect-extension)               ;���α༭��չ
(require 'stripe-buffer)                ;����buffer
;; (require 'auto-scroll)                  ;�Զ�����
(require 'tabbar-extension)             ;Tabbar ����չ
(require 'auto-complete-extension)      ;Auto-complete ����չ
(require 'erc-extension)                ;ERC��һЩ��չ
(require 'erc-nick-notify)              ;ERC ��Ϣ����
;; (require 'lisppaste-extension)          ;lisppaste ����չ
(require 'eldoc-extension)              ;Eldoc��չ
(require 'gnus-switch)                  ;����gnus�л�
(require 'gnus-summary-stripe)          ;Gnus Summary ���ƻ�
(require 'paste2)                       ;����ճ��
(require 'multi-shell)                  ;��shell������
(require 'auto-install)                 ;�Զ����ذ�װelisp
(require 'auto-install-extension)       ;auto-install.el ��չ
(require 'doi)                          ;Do Or Insert
(require 'doi-extension)                ;doi ����չ
(require 'anything-extension)           ;Anything ��һЩ��չ
(require 'anything-auto-install)        ;auto-install �� anything ����
(require 'anything-emms)                ;emms �� anything ����
(require 'anything-irfc)                ;irfc �� anything ����
(require 'newsticker-notify)            ;newsticker����
(require 'isearch-extension)            ;isearch��չ
(require 'one-key)                      ;one-key
(require 'one-key-config)               ;one-key ��չ
(require 'lazy-search)                  ;��������
(require 'lazy-search-extension)        ;lazy-seach ��չ
(require 'gnus-extension)               ;gnus��չ
(require 'ispell-extension)             ;ispell��չ
(require 'yaoddmuse)                    ;��һ�� oddmuse ģʽ
(require 'yaoddmuse-extension)          ;yaoddmuse ����չ
(require 'go-to-char)                   ;��ת��ĳ���ַ�
(require 'elisp-depend)                 ;����elisp�ļ�����
(require 'irfc)                         ;RFC �ĵ��Ķ�
;; (require 'oicq)                         ;QQ
(require 'elisp-format)                 ;elisp �����ʽ��
(require 'multi-scratch)                ;���زݸ�
(require 'chm-view)                     ;CHM �ļ��Ķ�
(require 'org-oddmuse)                  ;ת�� Org-mode �� Oddmuse ģʽ
(require 'gtk2hs)                       ;gtk2hs�󶨹���
(require 'python-mode-utils)            ;Python ����
(require 'qml-mode)                     ;QML mode
(require 'slime-extension)              ;Slime mode
(require 'go-autocomplete)

(provide 'LazyCatDepend)
