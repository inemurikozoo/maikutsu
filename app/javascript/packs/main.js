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

window.onload = function(){
  //HTMLのid値を使って以下のDOM要素を取得
  const downbutton = document.getElementByClassName('down');
  const upbutton = document.getElementByClassName('up');
  const buy_quantity = document.getElementByClassName('buy_quantity');
  const reset = document.getElementByClassName('reset');

  //ボタンが押されたらカウント減
  downbutton.addEventListener('click', (event) => {
  //0以下にはならないようにする
  if(buy_quantity.value >= 1) {
    buy_quantity.value--;
  }
  });

  //ボタンが押されたらカウント増
  upbutton.addEventListener('click', (event) => {
    buy_quantity.value++;
  })

  //ボタンが押されたら0に戻る
  reset.addEventListener('click', (event) => {
    buy_quantity.value = 0;
  })

};