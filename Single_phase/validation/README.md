# Single-phase LBM | 验证说明

常黏度 MRT 以理想通道流动、压力/体力驱动与贯通孔隙筛选作为主要检查内容。其 Windows 原生 CUDA 构建及主机端测试已通过。

LEV–MRT 另外检查局部有效黏度、矩矩阵和混合孔壁边界。历史 DRP-372 对照记录不能直接代表最新 CUDA EXE 的 GPU 数值验证。

目前仍需在真实 NVIDIA GPU 上，使用对应的几何和材料场检查速度剖面、流量收支和渗透率。不同模型的验证结果不能互相替代。

- [LEV–MRT 验证状态](LEV_MRT.md)
- [DRP-372 数据说明](../DRP372复现/README.md)
