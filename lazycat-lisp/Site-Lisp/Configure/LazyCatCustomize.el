;;;;;;;;;;;;;;;;;;;;;;;;;; ��Ҫ�޸ĵĶ��� ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ��չ�Զ������
(custom-set-variables
 ;; ������Ϣ
 '(my-name "Andy")                          ;����
 '(my-full-name "Andy Stewart")             ;ȫ��
 '(my-mail "lazycat.manatee@gmail.com")     ;�ʼ���ַ
 '(my-homepage "http://www.google.com/ncr") ;��ҳ, �޹���/�������Զ�ת��
 '(my-irc-nick "")                          ;IRC�ǳ�
 '(my-irc-passwd "")                        ;IRC����
 '(my-irc-channel-list
   '(
     "##manatee"
     "#emacs"
     "#haskell"
     "#darcs"
     "#ghc"
     "#python"
     "#debian"
     "#lisp"
     ))
 ;; �򿪻�ر��ļ�
 '(startup-open-file-list               ;�����򿪵��ļ��б�
   '(
     ;; "/usr/share/deepin-emacs/Org/Manatee.org"
     ))
 '(startup-close-file-list              ;�����رյ�buffer�б�
   '(
     ))
 ;; Ŀ¼����
 '(my-home-directory "~/")                                          ;HOMEĿ¼
 '(my-mldonkey-download-directory "~/.aMule/Incoming/")             ;mldonkey������Ŀ¼
 '(my-default-download-directory "/test/Download/")                 ;Ĭ������Ŀ¼
 '(my-resource-backup-directory "/data/Backup/")                    ;���ϱ���Ŀ¼
 '(my-book-directory "/data/Book/")                                 ;ͼ��Ŀ¼
 '(my-reading-directory "/data/Book/Reading/")                      ;����Ŀ¼
 '(my-translate-png-directory "/data/Book/Doc-View_Translate_Book") ;PDFת����ͼƬ��Ŀ¼
 '(my-picture-directory "/data/Picture/")                           ;ͼƬĿ¼
 '(my-lyrics-directory "/data/Lyrics/")                             ;���Ŀ¼
 '(my-screenshots-storage-directory "/data/Picture/Screenshots/")   ;��Ļ��ͼĿ¼
 '(my-emlue-download-directory "/test/WindowsDownload/eMule/")      ;��¿Ŀ¼
 '(my-notes-directory "/usr/share/deepin-emacs/Org/")               ;�ʼ�Ŀ¼
 '(my-emacs-backup-directory "/usr/share/deepin-emacs/Backup/")     ;�����ļ�Ŀ¼
 '(my-emacs-lisp-package-directory "/usr/share/deepin-emacs/Site-Lisp/Packages/") ;elisp Ŀ¼
 '(my-elisp-directory "/usr/share/deepin-emacs/Site-Lisp/Packages/LazyCatSelf/")  ;�Լ���չĿ¼
 '(my-config-directory "/usr/share/deepin-emacs/Site-Lisp/Configure/Init/")       ;����Ŀ¼
 '(my-windows-share-directory "/test/WindowsShare/")                              ;Windows ����Ŀ¼
 ;; ERC
 '(erc-server "irc.freenode.net")       ;���÷�����
 '(erc-port 6667)                       ;���ö˿�
 `(erc-ignore-list '("ams", "trick"))   ;���ð׳��б�, �����Ϳ��������ǵ���Ϣ
 ;; Google Desktop Search
 '(google-desktop-search-url "http://127.0.0.1:38923/?hl=zh_CN&s=vhITkQ_HHma9o9JG6cj-xJjhra0") ;Google����������ΨһURL, ������ⲿ������ĵ�ַ������
 ;; Gmail
 '(w3m-gmail-login-string "http://mail.google.com/mail/h/h4339zs3i3b6/?zy=n&f=1") ;gmail ��¼�ַ���
 )

(provide 'LazyCatCustomize)
