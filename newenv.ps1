py -m venv venv/
venv\Scripts\activate
py -m pip install --upgrade pip
git init
Write-Output "venv/`n__pycache__/" | out-file -append -encoding ascii ".gitignore"
Write-Output "`n`nif __name__=='__main__':`n`tpass" | out-file -append -encoding utf8 "main.py"
git add .
git commit -m "init"