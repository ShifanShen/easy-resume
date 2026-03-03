#!/bin/bash
# Easy Resume 编译脚本 (Linux/macOS)
# 使用 XeLaTeX 编译简历模板

echo "========================================"
echo "  Easy Resume 编译工具"
echo "========================================"
echo ""

# 检查 xelatex 是否可用
if ! command -v xelatex &> /dev/null; then
    echo "[错误] 未找到 xelatex，请先安装 TeX Live 或 MacTeX"
    echo ""
    echo "安装方法:"
    echo "  Ubuntu/Debian: sudo apt-get install texlive-xetex"
    echo "  macOS: brew install mactex"
    echo "  或访问: https://tug.org/texlive/"
    exit 1
fi

echo "正在编译简历模板..."
echo ""

# 第一次编译
xelatex -interaction=nonstopmode resume_template.tex
if [ $? -ne 0 ]; then
    echo "[错误] 第一次编译失败"
    exit 1
fi

# 第二次编译（确保引用正确）
xelatex -interaction=nonstopmode resume_template.tex
if [ $? -ne 0 ]; then
    echo "[错误] 第二次编译失败"
    exit 1
fi

echo ""
echo "========================================"
echo "  编译成功！"
echo "========================================"
echo ""
echo "输出文件: resume_template.pdf"
echo ""

# 清理临时文件
echo "清理临时文件..."
rm -f *.aux *.log *.out *.toc *.synctex.gz *.fls *.fdb_latexmk

echo "完成！"
