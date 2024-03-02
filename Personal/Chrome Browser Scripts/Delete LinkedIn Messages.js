var removeTheConvo = function()
{
  try{
    
  $(".msg-thread__topcard-btn--icon").click();

  setTimeout(function(){ 
    $(".msg-topcard__full-width-action-button.delete").click();

    setTimeout(function(){ 
      $(".confirm-delete-btn").click();

      setTimeout(function(){ 
        removeTheConvo();

      }, 300);
    }, 300);
  }, 300);
    
  }catch(err){
  setTimeout(function(){ 
    removeTheConvo();

  }, 1000);
  }
};
removeTheConvo();
