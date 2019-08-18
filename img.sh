blog_img_path="~/Project/sites/blog/cheese/assets/img"
# 剔除输入的文件的路径
file_name=$(basename $1)
# 删除第一个.后的内容(后缀)
name=${file_name%%.*}
new_file_name="$name.jpg"
echo $file_name, $name, $new_file_name
# 压缩图片到对应路径, 依赖 brew install mozjpeg
command="cjpeg -quality 44 $1 > $blog_img_path/$new_file_name"
eval $command

# markdow 格式
img="![$new_file_name](/assets/img/$new_file_name)"
# 复制到剪贴板
echo $img | pbcopy
echo "image compress done!"
