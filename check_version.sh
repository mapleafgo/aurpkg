#!/bin/bash

# 遍历当前目录下的所有目录
for dir in */; do
  # 检查目录内是否含有 pkgbuild_helper.py 文件
  if [[ -f "$dir/pkgbuild_helper.py" ]]; then
    echo "Executing $dir/pkgbuild_helper.py..."
    # 进入目录并执行文件，忽略错误
    (
      cd "$dir" && python3 pkgbuild_helper.py || echo "Error occurred in $dir, skipping..."
    )
  fi
done

echo "All tasks completed."

