class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: 'カテゴリー' },
    { id: 2, name: '西洋絵画' },
    { id: 3, name: '日本画' },
    { id: 4, name: 'デザイン' },
    { id: 5, name: '彫刻' },
    { id: 6, name: '工芸' },
    { id: 7, name: '建築' },
    { id: 8, name: '写真' },
    { id: 9, name: '映像' },
    { id: 10, name: 'ファッション' },
    { id: 11, name: 'ダンス・舞踊' },
    { id: 12, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :exhibitions

  end