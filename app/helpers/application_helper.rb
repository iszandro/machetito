# frozen_string_literal: true

module ApplicationHelper
  def page_title
    if content_for? :page_title
      t("app.page_title.custom", custom: content_for(:page_title))
    else
      t("app.page_title.default")
    end
  end

  def categories
    @categories ||= Category.with_no_parents
  end
end
