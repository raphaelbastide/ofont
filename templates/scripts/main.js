(function(){
  // Utils
  var q = document.querySelector.bind(document);
  var qall = document.querySelectorAll.bind(document);
  var mkElt = document.createElement.bind(document);

  var FONT_SIZE_SELECTOR = '.typeface .fontlist .font .fontdemo1 input';

  var body = document.body;
  var head = document.head;
  var cookieOpts = { expires: 31536e3 }; // a year
  var demo1Fields = qall('.fontdemo1 input[type=text]');
  var fontSizeSelector = q('.views .font-size input');
  var fontSizeValue = q('.views .font-size .value');
  var fontSizeStyle = head.appendChild(mkElt('style'));

  // Layout
  function setView(template) {
    return function() {
      var result = null;
      if (template === undefined) {
        result = body.classList.toggle('gridview');
      } else {
        result = body.classList.toggle('gridview', template);
      }
      Cookies.set('setView', result? '1' : '0', cookieOpts);
    }
  }
  setView(Cookies.get('setView') === '1')();
  q('.icon-gridview').onclick = setView();

  // Intro text
  function intro(hide) {
    return function() {
      var result = null;
      if (hide === undefined) {
        result = body.classList.toggle('nonotice');
      } else {
        result = body.classList.toggle('nonotice', hide);
      }
      Cookies.set('intro', result? '1' : '0', cookieOpts);
    }
  }
  intro(Cookies.get('intro') === '1')();
  if ($('.notice').length){
    q('.notice .introbtn').onclick = intro();    
  }
  
  // Colors
  function setColors(brightMode) {
    return function() {
      // Can’t pass undefined as a second argument of .toggle(),
      // it has to be explicit.
      var result = null;
      if (brightMode === undefined) {
        result = body.classList.toggle('bright');
      } else {
        result = body.classList.toggle('bright', brightMode);
      }
      Cookies.set('colors', result? '1' : '0', cookieOpts);
    }
  }
  setColors(Cookies.get('colors') === '1')();
  q('.icon-light').onclick = setColors();

  // Demo text update
  function textUpdate(value) {
    var i = demo1Fields.length;
    while (i--) demo1Fields[i].value = value;
    Cookies.set('demo-text-1', value, cookieOpts);
  }
  document.addEventListener('input', function(e) {
    // The input element must be a child of .fontdemo1
    if (!e.target.parentElement.classList.contains('fontdemo1')) return;
    textUpdate(e.target.value);
  });

  // Font size update
  function updateSize(size, force) {
    fontSizeValue.innerHTML = size;
    fontSizeStyle.innerHTML = FONT_SIZE_SELECTOR + '{font-size:' + size + 'px}';
    if (force) fontSizeSelector.value = size;
    Cookies.set('demo-size', size, cookieOpts);
  }
  updateSize(Cookies.get('demo-size') || 80, true);
  fontSizeSelector.addEventListener('input', function(e) {
    updateSize(e.target.value);
  });
  
  // Fullscreen
  var fs = false;

  function closeFS(){
    $('.fsBox').remove();
    fs = !fs    
  }
  $('.fullscreen').click(function(){
    var button = $(this),
        font = button.parent('.legend').parent('.font'),
        input = font.children('.fontdemo1'),
        fsBox = $("<div class='fsBox'><div class='close-fullscreen'>×</div></div>");
    if (fs === false){ 
      fsBox.appendTo(font);
      input.clone().appendTo(fsBox);
      fs = !fs;
    }else{
      closeFS();
    }
  })
  $(document).on('click', '.close-fullscreen' , function() {
    closeFS();
  });
  $('.fullscreen').bind('keypress', function(e) {
    var code = e.keyCode || e.which;
    if ( code == 27 ) {
      closeFS();
    }    
  });
}());

