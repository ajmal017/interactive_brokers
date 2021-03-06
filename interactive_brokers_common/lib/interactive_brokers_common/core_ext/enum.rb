# frozen_string_literal: true

java_import "java.lang.Enum"

module InteractiveBrokersCommon
  module CoreExt
    module Enum
      # Extensions to Enum for converting between ruby and ib
      def to_ib
        self
      end

      def to_ruby
        to_s
      end
    end
  end
end

Java::JavaLang::Enum.include InteractiveBrokersCommon::CoreExt::Enum
