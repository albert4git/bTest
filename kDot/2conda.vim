conda install PyTorch -c PyTorch 
pip3 install torchvision
echo $PYTHONPATH

export PATH="$PATH:/home/your_user/miniconda3/bin"
setenv PYTHONPATH /Users/myname/tmp:/Users/myname/misc

export PATH=~/anaconda3/bin:$PATH
what you do is comment it out and instead type out
alias pyconda='~/anaconda3/bin/python3'
alias pyconda='/media/red/124Black/3conda/bin/python3'

export PATH=/media/red/124Black/3conda/bin:$PATH

conda list

anaconda search -t conda kivy

import torch

> torch.cuda.is_available()
True
> torch.version.cuda
'9.0'
