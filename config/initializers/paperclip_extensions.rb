# 扩展 Paperclip 加入hash目录参数 :hashed_path
# 建立 config/initializers/paperclip_extensions.rb
Paperclip::Attachment.interpolations[:hashed_path] = lambda do |attachment, style|
  hash = Digest::MD5.hexdigest(attachment.instance.id.to_s)
  hash_path = ''
  3.times { hash_path += '/' + hash.slice!(0..2) }
  hash_path[1..12]
end