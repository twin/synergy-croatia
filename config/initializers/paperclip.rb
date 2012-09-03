ActiveRecord::Base.send(:extend, Module.new do
  def has_attached_file(name, options = {})
    if Rails.env.development?
      super name, {
        storage: :filesystem
      }.merge(options)
    else
      super name, {
        storage: :dropbox,
        dropbox_credentials: "#{Rails.root}/config/dropbox.yml"
      }.merge(options)
    end
  end
end)
