module I18nHelper
  def is_locale?(locale)
    I18n.locale == locale
  end
end
