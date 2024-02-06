let g:openaiTokenScript = findfile('get_openai_api_key.sh', expand('<sfile>:p:h'))
let g:openaiRequestScript = findfile('openai_request.sh', expand('<sfile>:p:h'))

let g:openaiToken = system('sh ' . g:openaiTokenScript)

function! OpenAIRequest(prompt)
  let prompt = shellescape(a:prompt)
  let output = system('sh ' . g:openaiRequestScript . ' ' . prompt)
  return output
endfunction

function! GPT()
  let prompt = shellescape(input("Enter chatgpt prompt: "))
  if g:openaiToken isnot v:null
    let output = OpenAIRequest(prompt)
    echo "\n" . output
    if confirm("Write output at cursor position? (Y/n)", "&Yes\n&No") == 1
      call feedkeys("i")
      call feedkeys(output, "n")
    endif
  else
    let output = system("chatgpt '" . prompt . "'")
    echo "\n" . output
    if confirm("Write output at cursor position? (Y/n)", "&Yes\n&No") == 1
      call feedkeys("i")
      call feedkeys(output, "n")
    endif
  endif
endfunction

function! GPTRun()
  if confirm("Run and Ask gpt about this " . &filetype . " file (Y/n)", "&Yes\n&No") == 1
    let runWith = shellescape(input("Run with: "))
    let currentFile = @%
    let prompt = "Fix " . runWith . " warnings in this " . &filetype . " code"
    let fileContent = join(readfile(currentFile), "\n")
    let runResults = system(runWith . " " . currentFile)
    let output = OpenAIRequest(prompt . "\n" . fileContent . "\n" . runResults)
    echo "\n" . output
    if confirm("Write output at cursor position? (Y/n)", "&Yes\n&No") == 1
      call feedkeys("i")
      call feedkeys(output, "n")
    endif
  endif
endfunction

function! GPTFile()
  if confirm("Ask gpt about this " . &filetype . " file (Y/n)", "&Yes\n&No") == 1
    let prompt = shellescape(input("Ask: "))
    let currentFile = @%
    let fileContent = join(readfile(currentFile), "\n")
    let output = OpenAIRequest(prompt . "\n" . fileContent)
    echo "\n" . output
    if confirm("Write output at cursor position? (Y/n)", "&Yes\n&No") == 1
      call feedkeys("i")
      call feedkeys(output, "n")
    endif
  endif
endfunction


command! Gpt call GPT()
command! GptRun call GPTRun()
command! GptFile call GPTFile()


map gpt :Gpt<cr>
map gpr :GptRun<cr>
map gpf :GptFile<cr>

