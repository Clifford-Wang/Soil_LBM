# Single-phase LBM | 单相流与渗透率

本模块包含两种独立程序：常黏度 MRT 用于计算三维孔隙结构中的单相流动与内禀渗透率；LEV–MRT 考虑位置相关的有效黏度和混合壁面作用，用于气体表观渗透率分析。两种渗透率不可直接混同。

## 下载

| 模型 | EXE | 配置 | 启动 |
|---|---|---|---|
| 常黏度 MRT | [LBM_SinglePhase_MRT.exe](release/LBM_SinglePhase_MRT.exe) | [config_single_phase.txt](release/config_single_phase.txt) | [run_single_phase.bat](release/run_single_phase.bat) |
| LEV–MRT | [LBM_LEV_MRT.exe](LEV_MRT/release/LBM_LEV_MRT.exe) | [config_lev_mrt.txt](LEV_MRT/release/config_lev_mrt.txt) | [run_lev_mrt.bat](LEV_MRT/release/run_lev_mrt.bat) |

## 使用方法

1. 将同一模型的 EXE、配置和 BAT 放在同一文件夹。
2. 在配置中设置二值几何路径、网格尺寸、流动方向或气体参数以及输出位置。
3. 准备纯文本孔隙结构：0 为孔隙，1 或 255 为固体；按 X 索引变化最快的顺序存储。
4. 双击 BAT 运行。常黏度模型支持周期体力驱动及入口—出口压差两种边界。

计算结果主要为 VTR 流场和 XLSX 渗透率及迭代记录。LEV–MRT 的局部材料场设置见[独立说明](LEV_MRT/README.md)。

程序需要兼容的 NVIDIA GPU，首次运行起共享连续 **72 小时**试用期限。验证说明见[单相流](validation/README.md)和[LEV–MRT](validation/LEV_MRT.md)。
