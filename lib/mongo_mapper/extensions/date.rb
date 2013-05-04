# encoding: UTF-8
module MongoMapper
  module Extensions
    module Date
      def to_mongo(value)
        # We need to check the type of value first, because comparing
        # a Time against a string is expensive in JRUBY due to JRUBY-6915
        if value.nil? || (value.is_a?(String) && value == '')
          nil
        else
          date = value.is_a?(::Date) || value.is_a?(::Time) ? value : ::Date.parse(value.to_s)
          ::Time.utc(date.year, date.month, date.day)
        end
      rescue
        nil
      end

      def from_mongo(value)
        value.to_date if value.present?
      end
    end
  end
end

class Date
  extend MongoMapper::Extensions::Date
end
