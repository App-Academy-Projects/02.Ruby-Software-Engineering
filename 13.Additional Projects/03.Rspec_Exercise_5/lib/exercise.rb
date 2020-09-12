def zip(*arrs)
    two_d_arr = Array.new(arrs[0].length) { Array.new(0) }
    arrs.each do |arr| 
        arr.each_with_index { |el, i| two_d_arr[i] << el }
    end
    two_d_arr
end

def prizz_proc(arr, prc1, prc2)
    new_arr = []
    arr.each { |el| new_arr << el if (prc1.call(el) && prc2.call(el)) == false && (prc1.call(el) || prc2.call(el)) == true }
    new_arr
end