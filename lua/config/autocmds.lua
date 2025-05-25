vim.api.nvim_create_augroup('setIndent', { clear = true })

vim.api.nvim_create_autocmd('Filetype', {
  group = 'setIndent',
  pattern = { 'css', 'html', 'javascript', 'markdown', 'md', 'typescript', 'scss', 'xml', 'xhtml' },
  command = 'setlocal shiftwidth=2 tabstop=2 expandtab',
})
