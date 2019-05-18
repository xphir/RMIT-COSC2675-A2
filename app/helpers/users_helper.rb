module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user, options = { size: 80, class_options: ""})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    class_options = options[:class_options]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar #{class_options}")
  end
end