# LEV–MRT | 空间变黏度气体输运

本程序计算三维孔隙中的气体流动和表观渗透率，允许有效黏度随局部材料场改变，并考虑气体与孔壁之间的混合反射作用。

## 下载与运行

- [EXE](release/LBM_LEV_MRT.exe) · [配置](release/config_lev_mrt.txt) · [启动脚本](release/run_lev_mrt.bat)

1. 将三个文件放在同一目录，在配置中填写 `input_file`、`nx`、`ny`、`nz` 及输出路径。
2. 若需要真实的空间变黏度，设置 `psi_file` 为与几何匹配的正值材料场 TXT；留空时使用 `psi_uniform`，对应均匀材料。
3. 根据工况修改 `mean_free_path`、`diffuse_fraction`、驱动加速度及渗透率换算参数。
4. 双击 `run_lev_mrt.bat`，获得 VTR 速度、压力及黏度场，以及 XLSX 结果。

二值几何中 0 为孔隙，1 或 255 为固体；输入按 X 索引变化最快的顺序存储。外部 MAT/NPZ 数据需要先准备为匹配的 TXT 文件。

程序与其他模块共享连续 **72 小时**试用期限。编译和主机端检查已通过，真实 GPU 数据对照仍需独立执行，见[验证说明](../validation/LEV_MRT.md)。
