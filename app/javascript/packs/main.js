window.onload = function(){
  //HTMLのid値を使って以下のDOM要素を取得
  const downbutton = document.getElementById('down');
  const upbutton = document.getElementById('up');
  const inventory = document.getElementById('inventory');
  const reset = document.getElementById('reset');

  //ボタンが押されたらカウント減
  downbutton.addEventListener('click', (event) => {
  //0以下にはならないようにする
  if(inventory.value >= 1) {
    inventory.value--;
  }
  });

  //ボタンが押されたらカウント増
  upbutton.addEventListener('click', (event) => {
    inventory.value++;
  })

  //ボタンが押されたら0に戻る
  reset.addEventListener('click', (event) => {
    inventory.value = 0;
  })
  
};

