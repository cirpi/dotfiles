(add-to-list 'load-path (expand-file-name "lisp" "/home/sirpi/.config/emacs/"))
(require 'hooks)
(require 'lsp)
(require 'settings)
(require 'keymaps)
(require 'plugins)
(require 'sql-connections)
(require 'org-templates)
(require 'mail-config)
(require 'themes)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("1a1ac598737d0fcdc4dfab3af3d6f46ab2d5048b8e72bc22f50271fd6d393a00" "2078837f21ac3b0cc84167306fa1058e3199bbd12b6d5b56e3777a4125ff6851" "f38f24d7468df32f8945a0572c856223f8351b8ea050b717ce36b0051399e3ad" "eeaa104f99d641c8be210d3555eba029756d5dc7a2f9a342af526045c3a82c60" "e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7" "586e8c6133044c691daf2cb0cbbc47051c543612dc1868ee531a3f0a22d1a94f" "443e2c3c4dd44510f0ea8247b438e834188dc1c6fb80785d83ad3628eadf9294" "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738" "2853dd90f0d49439ebd582a8cbb82b9b3c2a02593483341b257f88add195ad76" "455aeeff00c55cac03e7cd9ee5f7545cd6b5656e1f2e6765e92f6ee897ef502b" "cd322dc37af17c4e122c99c93fe1a423dd1407797fe51d2278fc25c60a46be45" "180821795742c64e155841e8f9351b9d818e865d79dfc72f1aeab16b8724c9e4" "b6c43bb2aea78890cf6bd4a970e6e0277d2daf0075272817ea8bb53f9c6a7f0a" "91c008faf603a28d026957120a5a924a3c8fff0e12331abf5e04c0e9dd310c65" "e7ce09ff7426c9a290d06531edc4934dd05d9ea29713f9aabff834217dbb08e4" "0e51b9958ff839e41c742c26b175bf40256e9fc2e0a93d006ce0c7f33d3fdfb2" "7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525" "eca44f32ae038d7a50ce9c00693b8986f4ab625d5f2b4485e20f22c47f2634ae" "8b6506330d63e7bc5fb940e7c177a010842ecdda6e1d1941ac5a81b13191020e" "9d29a302302cce971d988eb51bd17c1d2be6cd68305710446f658958c0640f68" "4ff1c4d05adad3de88da16bd2e857f8374f26f9063b2d77d38d14686e3868d8d" "6945dadc749ac5cbd47012cad836f92aea9ebec9f504d32fe89a956260773ca4" "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "49acd691c89118c0768c4fb9a333af33e3d2dca48e6f79787478757071d64e68" "70b596389eac21ab7f6f7eb1cf60f8e60ad7c34ead1f0244a577b1810e87e58c" "4427c5336f6c26812f200ef3291ae7fb65c7706fa3957c5891fcaccb2684ab3b" default))
 '(package-selected-packages
   '(writegood-mode writeroom-mode beacon prettier apheleia emmet-mode web-mode ac-html vertico-posframe expand-region auctex browse-kill-ring org-inline-pdf verb org-present ef-themes elfeed spacious-padding eat rainbow-delimiters gruber-darker-theme json-mode vlf docker docker-compose-mode tao-theme eglot-java eink-theme restclient-test emms emms-player-spotify aircon-theme ample-theme circadian eldoc-box breadcrumb sideline-blame sideline-flymake silkworm-theme simple-httpd sleek-modeline marginalia vertico exwm wgrep cape org-tree-slide telephone-line avy magit vterm yaml-mode whole-line-or-region helm zenburn-theme orderless kind-icon go-mode exec-path-from-shell doom-themes corfu clues-theme birds-of-paradise-plus-theme acme-theme abyss-theme))
 '(vlf-application 'dont-ask))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
