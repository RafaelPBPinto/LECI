function localizarUtilizador(){
    if (window.navigator && window.navigator.geolocation) {
     var geolocation = window.navigator.geolocation;
     geolocation.getCurrentPosition(sucesso, erro);
    } else {
       alert('Geolocalização não suportada em pelo seu navegador.')
    }
    function sucesso(posicao){
      console.log(posicao);
      var latitude = posicao.coords.latitude;
      var longitude = posicao.coords.longitude;
      alert('A sua latitude estimada é: ' + latitude + ' e longitude: ' + longitude )
    }
    function erro(error){
      console.log(error)
    }
}

