module ApplicationHelper
  def default_meta_tags
    {
      site: 'ご当地ぐるめっと',
      title: 'ご当地グルメ店検索サービス',
      reverse: true,
      charset: 'utf-8',
      description: 'ご当地を味わおう！ご当地グルメを提供するお店を検索できるサービスです。',
      keywords: 'ご当地グルメ,ローカルグルメ,郷土料理,名産品,特産品',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('logo.png'), sizes: '32x32' }
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('logo.png'),
        locale: 'ja_JP'
      },
      twitter: {
        card: 'summary_large_image',
        image: image_url('ogp.png')
      }
    }
  end
end
