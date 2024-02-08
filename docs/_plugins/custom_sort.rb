module Jekyll
  module CustomSortFilter
    def custom_sort(input, order)
      puts "Input data: #{input.inspect}"  # Print the input data
      puts "Custom order: #{order.inspect}" # Print the custom order
      sorted_data = input.sort_by { |item| order.index(item["accepted_as"]) || Float::INFINITY }
      puts "Sorted data: #{sorted_data.inspect}" # Print the sorted data
      sorted_data # Return the sorted data
    end
  end
end

Liquid::Template.register_filter(Jekyll::CustomSortFilter)
