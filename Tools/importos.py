import os
import time
from tkinter import Tk, filedialog

def compare_directories(dir1, dir2):
  """
  比較兩個資料夾是否有同樣的檔案。

  Args:
    dir1: 資料夾 1
    dir2: 資料夾 2

  Returns:
    一個字典，包含兩個資料夾中共同存在的檔案，以及資料夾 2 中缺失的檔案。
  """

  # 初始化結果
  results = {
    "common": [],
    "missing": []
  }

  # 遍歷資料夾 1
  for file in os.listdir(dir1):
    path1 = os.path.join(dir1, file)
    path2 = os.path.join(dir2, file)

    # 檢查檔案是否存在
    if os.path.exists(path2):
      results["common"].append(path2)
    else:
      results["missing"].append(f"{path2} - {os.path.basename(file)}")

  return results

def main():
  # 建立檔案對話方塊
  root = Tk()
  root.withdraw()
  dir1 = filedialog.askdirectory(title="選擇原始資料夾")
  dir2 = filedialog.askdirectory(title="選擇備份資料夾")

  # 檢查兩個資料夾
  results = compare_directories(dir1, dir2)

  # 製作缺失檔案紀錄
  with open("missing_files.txt", "w", encoding="utf-8") as f:
    for file in results["missing"]:
      f.write(f"{file}\n")

  # 顯示結果
  print(f"共同存在的檔案：{len(results['common'])}")
  print(f"備份資料夾中缺失的檔案：{len(results['missing'])}")

if __name__ == "__main__":
  main()
