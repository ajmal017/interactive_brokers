# frozen_string_literal: true

# ---------------------------------------------
# File generated automatically by interactive_brokers gem
# ---------------------------------------------

module InteractiveBrokersCommon
  ComboLeg = Struct.new(:conid, :ratio, :action, :exchange, :open_close, :short_sale_slot, :designated_location, :exempt_code, keyword_init: true) do
    def to_ib
      ib_object = Java::ComIbClient::ComboLeg.new
      ib_object.conid(Integer(conid)).to_java unless conid.nil?
      ib_object.ratio(Integer(ratio)).to_java unless ratio.nil?
      ib_object.action(String(action)).to_java unless action.nil?
      ib_object.exchange(String(exchange)).to_java unless exchange.nil?
      ib_object.openClose(Integer(open_close)).to_java unless open_close.nil?
      ib_object.shortSaleSlot(Integer(short_sale_slot)).to_java unless short_sale_slot.nil?
      ib_object.designatedLocation(String(designated_location)).to_java unless designated_location.nil?
      ib_object.exemptCode(Integer(exempt_code)).to_java unless exempt_code.nil?

      ib_object
    end

    def check_value_types!
      current_field = :conid
      Integer(conid) unless conid.nil?
      current_field = :ratio
      Integer(ratio) unless ratio.nil?
      current_field = :action
      String(action) unless action.nil?
      current_field = :exchange
      String(exchange) unless exchange.nil?
      current_field = :open_close
      Integer(open_close) unless open_close.nil?
      current_field = :short_sale_slot
      Integer(short_sale_slot) unless short_sale_slot.nil?
      current_field = :designated_location
      String(designated_location) unless designated_location.nil?
      current_field = :exempt_code
      Integer(exempt_code) unless exempt_code.nil?

      true
    rescue StandardError => e
      raise $ERROR_INFO, e.message.concat(". Check value of \"#{current_field}\""), $ERROR_INFO.backtrace
    end
  end
end
