require 'ruboto/widget'

ruboto_import_widgets :Button, :LinearLayout, :TextView
import android.util.TypedValue

class ConstantsActivity
  def onCreate(bundle)
    super
    setTitle File.basename(__FILE__).chomp('_activity.rb').split('_').
        map { |s| "#{s[0..0].upcase}#{s[1..-1]}" }.join(' ')

    attr = android.R.attr.actionBarSize
    tv = TypedValue.new
    if theme.resolveAttribute(attr, tv, true)
      actionBarHeight = TypedValue.
          complexToDimensionPixelSize(tv.data, resources.display_metrics).
          inspect
    else
      actionBarHeight = 'N/A'
    end

    self.content_view = linear_layout orientation: :vertical, gravity: :center do
      i = 41
      text_view id: i += 1, hint: 'actionBarHeight', tag: '48', text: actionBarHeight

      text_view id: i += 1, hint: 'anim.fade_in', tag: '17432576', text: android.R.anim.fade_in.to_s
      text_view id: i += 1, hint: 'attr.actionBarSize', tag: '16843499', text: android.R.attr.actionBarSize.to_s
      text_view id: i += 1, hint: 'color.holo_green', tag: '17170452', text: android.R.color.holo_green_light.to_s
      text_view id: i += 1, hint: 'id.text1', tag: '16908308', text: android.R.id.text1.to_s
      text_view id: i += 1, hint: 'layout.simple_list_item1', tag: '17367043', text: android.R.layout.simple_list_item_1.to_s
      text_view id: i += 1, hint: 'style::Theme_Dialog', tag: '16973835', text: android.R.style::Theme_Dialog.to_s

      text_view id: i += 1, hint: 'R.attr', tag: 'Java::OrgRubotoTest_app::R::attr', text: R.attr.to_s
      text_view id: i += 1, hint: 'R.layout.dummy_layout', tag: 0x7f030000.to_s, text: R.layout.dummy_layout.to_s
      text_view id: i += 1, hint: 'R.layout.get_ruboto_core', tag: 0x7f030001.to_s, text: R.layout.get_ruboto_core.to_s
      text_view id: i += 1, hint: 'R.id.my_text', tag: 0x7f050000.to_s, text: R.id.my_text.to_s
    end
  end
end