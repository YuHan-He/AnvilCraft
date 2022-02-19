import os
# 0为读取1为写入
n = 3
rpath = rf'data\s3\functions\io\256x\{n}'
for i in range(0,256,2**(2*n)):
    tl = []
    for j in range(0,2**(2*n),2**(2*n-2)):
        tl.append(
            f'execute if score addr tmp matches {i+j}..{i+j+2**(2*n-2)-1} run function anc:s3_io/256x/{n-1}/{i+j}\n')
    with open(os.path.join(rpath,f'{i}.mcfunction'),'w') as f:
        f.writelines(tl)
