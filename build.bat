@echo off
REM Easy Resume 编译脚本 (Windows)
REM 使用 XeLaTeX 编译简历模板

echo ========================================
echo   Easy Resume 编译工具
echo ========================================
echo.

REM 检查 xelatex 是否可用
where xelatex >nul 2>nul
if %errorlevel% neq 0 (
    echo [错误] 未找到 xelatex，请先安装 TeX Live 或 MiKTeX
    echo.
    echo 下载地址:
    echo   - TeX Live: https://tug.org/texlive/
    echo   - MiKTeX: https://miktex.org/download
    pause
    exit /b 1
)

echo 正在编译简历模板...
echo.

REM 第一次编译
xelatex -interaction=nonstopmode resume_template.tex
if %errorlevel% neq 0 (
    echo [错误] 第一次编译失败
    pause
    exit /b 1
)

REM 第二次编译（确保引用正确）
xelatex -interaction=nonstopmode resume_template.tex
if %errorlevel% neq 0 (
    echo [错误] 第二次编译失败
    pause
    exit /b 1
)

echo.
echo ========================================
echo   编译成功！
echo ========================================
echo.
echo 输出文件: resume_template.pdf
echo.

REM 清理临时文件
echo 清理临时文件...
del /q *.aux *.log *.out *.toc *.synctex.gz *.fls *.fdb_latexmk 2>nul

echo 完成！
echo.
pause
