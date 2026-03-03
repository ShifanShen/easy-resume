# Easy Resume Makefile
# 使用: make 或 make build 编译简历

.PHONY: all build clean help watch

# 默认目标
all: build

# 编译简历
build:
	@echo "========================================"
	@echo "  编译简历模板..."
	@echo "========================================"
	@xelatex -interaction=nonstopmode resume_template.tex
	@xelatex -interaction=nonstopmode resume_template.tex
	@echo ""
	@echo "编译完成！输出文件: resume_template.pdf"

# 清理临时文件
clean:
	@echo "清理临时文件..."
	@rm -f *.aux *.log *.out *.toc *.synctex.gz *.fls *.fdb_latexmk
	@echo "清理完成！"

# 清理所有文件（包括 PDF）
distclean: clean
	@rm -f resume_template.pdf
	@echo "已删除所有生成文件"

# 显示帮助信息
help:
	@echo "Easy Resume - 简历编译工具"
	@echo ""
	@echo "可用命令:"
	@echo "  make          - 编译简历（默认）"
	@echo "  make build    - 编译简历"
	@echo "  make clean    - 清理临时文件"
	@echo "  make distclean- 清理所有生成文件"
	@echo "  make help     - 显示此帮助信息"
