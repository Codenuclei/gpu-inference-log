import torch
print(torch.__version__)
print(torch.cuda.is_available()) # expect True
print(torch.cuda.get_device_name(0)) # expect NVIDIA GeForce RTX 2050
print(torch.cuda.get_device_capability(0)) # expect (8, 6)
x = torch.randn(4096, 4096, device="cuda")
y = x @ x
torch.cuda.synchronize()
print(y.shape) 
