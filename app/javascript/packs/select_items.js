// /*global $*/
// // //btnがクリックされたときに発火する
// $(function(){
//   $('#slctbtn').on('click', function(){
//   //変数を宣言（配列）
//   var check = [];
//   //チェックされている値を配列に格納
//     $('[class="select_item"]:checked').each(function(){
//       //配列の末尾にvalueを追加
//       check.push($(this).val());
//     });
//       $.ajax({
//         url: '/shoppingmemos/index',
//         type: "POST",
//         datatype: 'html',
//         async: true,
//         data: {
//           //キー：値
//           sub_item_id: check
//         }
//       });
//     });
//   });

// 未使用のため、最後に削除する。参考に残しておく。