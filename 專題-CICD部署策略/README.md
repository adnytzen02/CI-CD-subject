CI/CD達成部署策略-藍綠部署
---
![1664625689185](https://user-images.githubusercontent.com/110806758/193409381-5d3f031f-a0c2-4206-91d3-b0651b1c0c8f.jpg)
---
![1664625757100](https://user-images.githubusercontent.com/110806758/193409393-0e2f522f-4b7d-4a3a-a0e7-abe06d9660c9.jpg)
---
### 持續整合 (Continuous Integration, CI)

持續整合的目的，利用頻繁地提交新功能的變更，降低人為的錯誤，
減少人工手動的反覆步驟，增加系統一致性與透明化，
提升軟體交付速度並確保最新版本的軟體是可運行的。

提交間隔越久的開發者，處理程式碼的衝突，
就越困難。而且還可能造成團隊的成員重複解決相同程式區塊的衝突。
整合的時間越晚，整合的難度與失敗的機率就越高。

### 持續部署 (Continuous Deployment, CD)

持續部署的目的，保持每次更新程式都可順暢完成，確保服務存活。
不管是為了測試、驗收或上線，都一定需要進行軟體的部置。

透過自動化方式，將寫好的程式碼更新到機器上並公開對外服務，
另外需要確保套件版本＆資料庫資料完整性，
也會透過監控系統進行服務存活檢查。

---
![1664625743814](https://user-images.githubusercontent.com/110806758/193409398-cba8b19b-5a5e-4ced-ac97-54e807c6d1f3.jpg)
---
我們的藍綠部署將會用到kubernetes、git、Quay.io、Jenkins和podman

### Jenkins

透過Jenkins我們可完成CI/CD 概念的實踐，我們可以針對每一次專案的修改，
或是週期性地對專案進行各種單元 (unit testing) 或整合測試 (integration testing)。
若專案發生狀況，我們可以藉此在第一時間內找出發生問題的最接近位置。
同時，我們也可以透過持續整合的工具替我們建置 (build) 服務，
並在建置完成後產生報表分析或做自動通知等其他的動作。

### Git
Git為分散式版本控制系統，是為了更好管理Linux內核而開發的。

Git可以把檔案的狀態作為更新歷史記錄保存起來。
因此可以把編輯過的檔案復原到以前的狀態，也可以顯示編輯過內容的差異。

而且，當有人想將編輯過的舊檔案上傳到伺服器、覆蓋其他人的最新檔案時，
系統會發出警告，因此可以避免在無意中覆蓋他人的編輯內容。

---

![1664625777965](https://user-images.githubusercontent.com/110806758/193409412-772d7599-0ecb-4531-b8da-6440aaadf230.jpg)
---
當我們工程師接到指示要開發專案，已經部署好測試環境時，會先切換到Green測試環境，
然後撰寫我們所需的Dockerfile檔、Yaml檔、Jenkinsfile檔後，執行程式，
若發生錯誤，就回上一步重新設計，
若執行成功，就上傳 Git 進行備份，
當我們備份時，自動觸發git hook將檔案上傳至Jenkins CI server。

這時 Jenkins 會執行我們剛剛所撰寫好的程式，並以圖示化方便我們進行偵錯，
若偵測到錯誤時，我們只需回去更改我們設計的檔案，再次上傳即可。

若執行成功的步驟：
首先會登入 Quay.io 並建立image，這屬於我們的CI自動整合，
會將建好的image上傳至 Quay 並設定為公開，同時 Kubernetes 部署我們的新環境 Blue，
這屬於我們的CD自動部署

當新環境「Green」部署好後，會同時與「Blue」環境存在，
確認新環境與舊環境無衝突且能正常運作時，我們再手動將舊環境下線。

以後有部署新功能的需求，
我們只須回到第一步，透過CICD，我們只需切至測試環境
撰寫檔案後上傳備份，省略了許多步驟，降低了人工錯誤發生的同時，也更容易偵錯。

---

![1664625791483](https://user-images.githubusercontent.com/110806758/193409418-aadc51dc-bb3a-4db2-9294-eea5eda8565c.jpg)
---
目前我們的環境是雲原生作業系統叢集建置我們的環境，
使用的 Kubernetes 公共設施有：
1. Local Path Provisioner
2. MetalLB
3. Ingress Nginx Controller

安裝git進行版本控制，同時使用git-hook裡的post-commit功能，自動通知Jenkin，
接下來完成 Jenkins 安裝，並使用 Jenkins 圖形化介面進行操作，這個功能我們也建置在 Kubernetes。

### master分支作為產品環境，dev分支做為測試環境，
* 先在master分支上架設好原先版本，
    * 呈現上會是blue的pod，他的service版本會是v1.0.0，
* 在dev分支上建立新版本，
    * 呈現上會是green的pod，他的service版本會是v2.0.0。

我們將進行藍綠部署的部署策略，在藍綠部署的部分會將新版本先上線，跟舊版本同時在線，
確認有使用者在連上我們的服務時，會有部分人分流至使用到新版本，當我們確定新版本在線上使用沒問題時，再將舊版本下線。

---

![1664625804514](https://user-images.githubusercontent.com/110806758/193409428-f70bdd02-89d2-4a62-9b6d-8fa242d47d96.jpg)


![1664625817149](https://user-images.githubusercontent.com/110806758/193409434-f7a66a9f-2fc0-4d6b-8927-59171bb99505.jpg)


![1664625842580](https://user-images.githubusercontent.com/110806758/193409440-c7e0ec6f-cd8d-4bee-9d3d-ca62fec01cc9.jpg)
