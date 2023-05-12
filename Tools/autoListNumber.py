"""
使用了isdigit方法來判斷輸入是否為數字，
如果是，則將其轉換為整數型並添加到items列表中。
否則，將其添加為字符串。
最後，使用enumerate函數為items列表中的每個元素添加編號。
"""
items = []

# 提示用戶輸入多個項目，直到用戶輸入空行
while True:
    item = input("請輸入項目（按Enter跳過）：")
    if not item:
        break
    # 判斷輸入是否為數字
    if item.isdigit():
        items.append(int(item))
    else:
        items.append(item)

# 判斷列表是否為空，如果不是則進行枚舉
if items:
    for i, item in enumerate(items, start=1):
        print(f"{i}. {item}")
else:
    print("列表為空")


