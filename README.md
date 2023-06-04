# 緊急成果物 Parrot Gaming

ハッカソン向けに

・アプリのアイディアをシェア・ブラッシュアップ

・チームメンバーを募集

するプラットフォームを作ろうとしていた

↓

エラーが解決せず、当日の朝から急遽作ったParty Parrotの連打ゲーム

スライド：

https://docs.google.com/presentation/d/1ffrqEtd0fg0tWn_anxHExlnJrydDfTxP75MSy51_lYI/edit#slide=id.p

## Author

チーム名：最強になるにょ〜ん

## Requirements

Docker, Flutter

## Usage

```bash
git@github.com:kkikrym/apuru.git
cd apuru
```
.env_example を参考に .env を作成、この階層で

```bash
make ini
```

する

※初回はdbの立ち上がりが遅くエラーが出るかもしれないが、もう一度 make ini あるいは
```bash
docker exec -it python python -m manage makemigrations accounts
docker exec -it python python -m manage makemigrations
docker exec -it python python -m manage migrate
```
するとマイグレーションができる

http://127.0.0.1/ よりFlutterのフロントが見られる

http://127.0.0.1:8001/ よりDjango Rest FrameworkのAPI画面が見られる

## Contributing


## License