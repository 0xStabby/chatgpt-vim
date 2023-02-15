if $OPENAI_API_TOKEN != ''
  let g:openaiToken = $OPENAI_API_TOKEN
else
  let g:openaiToken = system("cat ~/.config/openai.token")
endif

function! GPT()
  let prompt = input("Enter chatgpt prompt: ")
  if g:openaiToken isnot v:null
    let output = system("echo '" . prompt . "' | openai complete - -t " . g:openaiToken)
    echo "\n" . output
    if confirm("Write output at cursor position? (Y/n)", "&Yes\n&No") == 1
      call feedkeys("i")
      call feedkeys(output)
    endif
  else
    let output = system("chatgpt '" . prompt . "'")
    echo "\n" . output
    if confirm("Write output at cursor position? (Y/n)", "&Yes\n&No") == 1
      call feedkeys("i")
      call feedkeys(output)
    endif
  endif
endfunction

function! GPTRun()
  if confirm("Run and Ask gpt-3 about this " . &filetype . " file (Y/n)", "&Yes\n&No") == 1
    let runWith = input("Run with: ")
    let currentFile = @%
    let output = system("(echo 'Fix " . runWith . " warnings in this " . &filetype . " code '; cat " . currentFile . "; " . runWith . " " . currentFile . ";) | openai complete - -t " . g:openaiToken)
    echo "\n" . output
    if confirm("Write output at cursor position? (Y/n)", "&Yes\n&No") == 1
      call feedkeys("i")
      call feedkeys(output)
    endif
  endif
endfunction

function! GPTFile()
  if confirm("Ask gpt-3 about this " . &filetype . " file (Y/n)", "&Yes\n&No") == 1
    let prompt = input("Ask: ")
    let currentFile = @%
    let output = system("(echo '" . prompt . "'; cat " . currentFile . ";) | openai complete - -t " . g:openaiToken)
    echo "\n" . output
    if confirm("Write output at cursor position? (Y/n)", "&Yes\n&No") == 1
      call feedkeys("i")
      call feedkeys(output)
    endif
  endif
endfunction


command! Gpt call GPT()
command! GptRun call GPTRun()
command! GptFile call GPTFile()


map gpt :Gpt<cr>
map gpr :GptRun<cr>
map gpf :GptFile<cr>

