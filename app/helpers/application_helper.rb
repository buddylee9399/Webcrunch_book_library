module ApplicationHelper

  def menu_items
    [{
      name: 'Home',
      path: root_path,
    }, {
      name: 'About',
      path: about_path,
    }, {
      name: 'Contact',
      path: contact_path,
    }, {
      name: 'Privacy',
      path: privacy_path,
    },].map do |item|
      {
        name: item[:name],
        path: item[:path],
        active: current_page?(item[:path])
      }
    end
  end

  def current_user_subscribed?
    user_signed_in? && current_user.subscribed?
  end

  def admin?
    user_signed_in? && current_user.has_role?(:admin)
  end

  def subscribed?
    user_signed_in? && current_user.subscribed?
  end

  def titlize(str)
    str.gsub('_', ' ').captalize
  end

end
