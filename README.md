# DB 設計

## users table

| Column                     | Type                | Options                              |
|----------------------------|---------------------|--------------------------------------|
| email                      | string              | null: false, unique: true            |    <メールアドレス>
| password                   | string              | null: false                          |    <パスワード>
| name                       | string              | null: false                          |    <名前>


### Association
has_many :tasks
has_many :comments


## tasks table

| Column                                 | Type       | Options                           |
|----------------------------------------|------------|-----------------------------------|
| task_text                              | string     | null: false                       |    <テキスト>
| user                                   | references | foreign_key: true                 |    <user_id>

### Association
belongs_to :user
has_one :comment


## comments table

| Column             | Type          | Options                                               |
|--------------------|---------------|-------------------------------------------------------|
| comment_text       | string        | null: false                                           |    <テキスト>
| task               | references    | foreign_key: true                                     |    <task_id>

### Association
belongs_to :task

## アプリケーション名 
Taquest（SNS型タスク管理アプリ）

## アプリケーション概要 
このアプリでは毎日のタスクを管理することができるアプリケーションです。タスクを公開することによって他のユーザーから応援してもらうことができます。

## ペルソナ

## アプリケーションで使っている技術
インフラ:heroku
データベース:MySQL
開発環境:（未記入）
言語:Ruby on Rails

## デプロイURL
（未記入）

## テスト用アカウント
（未記入）

## 利用方法
（未記入）

## 目指した課題解決
（未記入）

## 洗い出した要件
### ユーザー新規登録ページ
（未記入）
### ユーザーログインページ
（未記入）
### ユーザー詳細ページ
（未記入）

### タスクのトップページ
（未記入）
### タスク投稿ページ
（未記入）
### タスク詳細ページ
（未記入）
### タスク編集ページ
（未記入）

### ガチャトップページ
（未記入）
### ガチャを引いたページ
（未記入）


## 実装した機能についてのGIFと説明
（未記入）

## 実装予定の機能
（未記入）

## データベース設計
（ER図を添付する）

## ローカルでの動作方法
（未記入）
（未記入）

