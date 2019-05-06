module IssuesReportsHelper
  include CustomFieldsHelper
  def render_custom_fields_rows(issue)
    values = issue.visible_custom_field_values.reject {|value| value.custom_field.full_width_layout?}
    return if values.empty?
    output = []
    values.each do |value|
      output << "<tr>
      <th width='15%'>#{custom_field_name_tag(value.custom_field)}:</th>
      <td  width='35%'>#{show_value(value)}</td>
      <th width='15%'></th>
      <td  width='35%'></td>
     </tr>"
    end
    output.join('').html_safe
  end

  def render_size(number)
    if number > 1024 * 1024
      "#{number / (1024**2)}.#{(number % (1024**2)).to_s[0]} MB"
    elsif number > 1024
      "#{number / 1024 }.#{(number % 1024).to_s[0]} KB"
    else
      "0.#{number % 1024 } KB"
    end
  end
end
