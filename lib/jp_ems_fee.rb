require "jp_ems_fee/version"
require 'yaml'

module JpEmsFee
  class << self

    def asia(weight)
      base(weight, __method__.to_s)
    end

    def oceania(weight)
      base(weight, __method__.to_s)
    end

    def north_america(weight)
      oceania(weight)
    end

    def middle_east(weight)
      oceania(weight)
    end

    def central_america(weight)
      oceania(weight)
    end

    def europa(weight)
      base(weight, __method__.to_s)
    end

    def africa(weight)
      base(weight, __method__.to_s)
    end

    def south_america(weight)
      africa(weight)
    end

    private

    def base(weight, method_name)
      validate_weight_limit(weight)
      calculate(weight, method_name)
    end

    def validate_weight_limit (weight)
      if weight <= 0
        raise 'Weight Limit Under'
      elsif weight > 30000
        raise 'Weight Limit Over'
      end
    end

    def calculate(weight, area_name)
      yaml = YAML.load_file(File.expand_path('../../jp_ems_fee/price_table.yaml', __FILE__))
      yaml[area_name].each do |r|
        if r.first >= weight
          return r[1]
        end
      end
    end

  end
end
