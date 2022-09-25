$('.sub_item_inventory').on('click', (e) => {
    $target = $(e.target).attr('id')
    target_prop = $target.split("_")[0]
    target_id = $target.split("_")[1]
    input_form = $(`#sub_item_${target_id}`)
    input_value = input_form.val()
    if (target_prop == "up") {
      input_form.val(Number(input_value) + 1)
    } else if (target_prop == "down" && input_value > 0) {
      input_form.val(Number(input_value) - 1)
    } else if (target_prop == "reset") {
      input_form.val(0)
    }
  });