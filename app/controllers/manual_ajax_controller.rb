class ManualAjaxController < ApplicationController
  def link
    gon.special_url = manual_ajax_some_special_content_for_link_path
  end

  def content_for_link
  end

  def some_special_content_for_link
    secret_html = render_to_string('some_special_content_for_link')
    render html: secret_html
  end
end
