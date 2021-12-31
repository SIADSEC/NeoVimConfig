set -o nounset
set -o errexit

mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
if [ ! -f package.json ]
then
  echo '{"dependencies":{}}'> package.json
fi

npm install coc-lua coc-vimlsp coc-browser coc-calc coc-css coc-cssmodules coc-dash-complete coc-dot-complete coc-emmet coc-eslint coc-explorer coc-fzf-preview coc-gist coc-git coc-html coc-htmldjango coc-htmlhint coc-html-css-support coc-json coc-markdownlint coc-markdown-preview-enhanced coc-prettier coc-python coc-sh coc-snippets coc-svg coc-tabnine coc-tailwindcss coc-tsserver coc-webview --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
