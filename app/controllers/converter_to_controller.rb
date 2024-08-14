class ConverterToController < ApplicationController
  def convert
    @input_value = params[:value].to_f
    @input_unit = params[:unit]
    @output_unit = params[:convert_to]
    root_font_size = params[:root_font_size].present? ? params[:root_font_size].to_f : 16

    @output_value = if @input_unit == 'px' && @output_unit == 'rem'
                      px_to_rem(@input_value, root_font_size)
                    elsif @input_unit == 'rem' && @output_unit == 'px'
                      rem_to_px(@input_value, root_font_size)
                    else
                      'Conversão não suportada'
                    end

    @output_with_unit = if @input_unit == 'px' && @output_unit == 'rem'
                          "#{@output_value} rem"
                        elsif @input_unit == 'rem' && @output_unit == 'px'
                          "#{@output_value} px"
                        else
                          @output_value
                        end

    render :index
  end

  private

  def px_to_rem(px_value, root_font_size = 16)
    px_value.to_f / root_font_size
  end

  def rem_to_px(rem_value, root_font_size = 16)
    rem_value.to_f * root_font_size
  end
end
