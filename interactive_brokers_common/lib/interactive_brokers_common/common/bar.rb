# frozen_string_literal: true

# ---------------------------------------------
# File generated automatically by interactive_brokers gem
# ---------------------------------------------

module InteractiveBrokersCommon
  Bar = Struct.new(:time, :open, :high, :low, :close, :volume, :count, :wap, keyword_init: true) do
    def to_ib
      ib_object = Java::ComIbClient::Bar.new
      ib_object.time(time).to_java unless time.nil?
      ib_object.open(open).to_java unless open.nil?
      ib_object.high(high).to_java unless high.nil?
      ib_object.low(low).to_java unless low.nil?
      ib_object.close(close).to_java unless close.nil?
      ib_object.volume(volume).to_java unless volume.nil?
      ib_object.count(count).to_java unless count.nil?
      ib_object.wap(wap).to_java unless wap.nil?

      ib_object
    end
  end
end