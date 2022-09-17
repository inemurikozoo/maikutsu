//チェックされている値を配列に格納
$("#btn").on("click", function(){
  //変数(配列)を宣言
  var check = [];

  //チェックされている値を配列に格納
  $('[class="select_item"]:checked').each(function(){
    //配列の末尾にvalueを追加
    check.push($(this).val());
    
  });
});