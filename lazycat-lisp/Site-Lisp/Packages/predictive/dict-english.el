(provide 'dict-english)
(require 'dict-tree)
(defvar dict-english nil "Dictionary dict-english.")
(let ((ordered-hash (make-hash-table :test 'equal))
      (tstree (dictree--tstree dict-english)))
  (mapc
   (lambda (entry)
     (puthash
      (car entry)
      (dictree--cache-create
       (mapcar
        (lambda (key)
          (cons key (tstree-member tstree key)))
        (dictree--cache-completions (cdr entry)))
       (dictree--cache-maxnum (cdr entry)))
      ordered-hash))
   (dictree--ordered-hash dict-english))
  (dictree--set-ordered-hash dict-english ordered-hash))
(dictree--set-filename dict-english (locate-library "dict-english"))
(unless (memq dict-english dictree-loaded-list) (push dict-english dictree-loaded-list))