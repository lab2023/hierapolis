module ViewHelpers
  def page(title, id)
    @page_id = id
    content_for :title do
      title
    end
  end

  def launcher_active(page)
    @page_id == page ? {class:'active'} : {}
  end
end