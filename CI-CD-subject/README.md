## CI/CD 實作

#### CI/CD
* CI (Continuous integration)，即是「持續整合」
  * 「程式建置」   
      在每一次的 Commit & Push 後，都能夠於統一的環境自動 Build 程式，增加系統一致性與透明化。
  * 希望降低人為疏失，減少人工手動的反覆步驟。


* CD (Continuous Deployment)，即是「持續佈署」
  * 「部署服務」   
      透過自動化方式，將寫好的程式碼更新到機器上並公開對外服務，另外需要確保套件版本＆資料庫資料完整性。
  * 保持每次更新程式都可以順暢完成並確保服務存活。


#### CI/CD 實作流程

利用 K8S 公共服務，撰寫 yaml 檔建立 pod 建置 Jenkins 安裝環境，   
設定 git-hooks 讓他能自動追蹤 Jenkinsfile 的參數變化，   