# test akash using open-webui

這是測試免費30天使用akashchat api的專案

## 初始步驟
執行後會產生.env檔案, 裡頭的API_KEY約30天後過期  

```bash
./init.sh
```

## Docker相關
請先執行init.sh來產生.env
```bash
# Start the containers
docker compose up -d

# stop & remove containers
docker compose down
```
