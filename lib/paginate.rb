module Paginate
  def paginate(page:, per_page:)
    page = 1 if page.nil?
    self.limit(per_page).offset((page.to_i - 1) * per_page)
  end
end