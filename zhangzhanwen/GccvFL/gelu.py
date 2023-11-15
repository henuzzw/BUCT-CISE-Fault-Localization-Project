import torch.nn as nn
import torch
import math


class GELU(nn.Module):
    """
    Paper Section 3.4, last paragraph notice that BERT used the GELU instead of RELU
    """

    def forward(self, x):
        return 0.5 * x * (1 + torch.tanh(math.sqrt(2 / math.pi) * (x + 0.044715 * torch.pow(x, 3))))


while (cin >> A) {
    int a = 1, i = 1;
    while(a!=(A+1)) {
        if(a>A+1){
            a*=2;
            i++;
}}}