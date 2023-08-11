
$(document).ready(function() {
    "use strict";

    $(".animsition").animsition({
        inClass: 'fade-in',
        outClass: 'fade-out',
        inDuration: 300,
        outDuration: 300,
        linkElement: '.animsition-link',
        loading: true,
        loadingParentElement: 'body', 
        loadingClass: 'animsition-loading',
        unSupportCss: ['animation-duration', '-webkit-animation-duration', '-o-animation-duration'],
        overlayClass: 'animsition-overlay-slide',
        overlayParentElement: 'body'
    });
   
     $(".bg-image").css("background",function(){var a="url("+$(this).data("image-src")+") no-repeat center center";return a}),$(".bg-image").css("background-size","cover"),
        
   
    $("#ex2").slider({});
    $("#ex2").on("slide", function(slideEvt) {
        $("#ex2SliderVal").text(slideEvt.value);
    });

   
    var myElement = document.querySelector('#header');
   
    var headroom = new Headroom(myElement, {
        
        offset: 80, 
        tolerance: 40, 
        classes: {
            initial: "animated",
            pinned: "fadeInDown",
            unpinned: "fadeOutUp"
        }
    });
  
    headroom.init();
    headroom.init();
    
    var $container = $(".restaurant-listing");
    $container.isotope({
        filter: "*",
        animationOptions: {
            duration: 750,
            easing: "linear",
            queue: false,
        }
    });

    $("nav.primary ul a").click(function() {
        var selector = $(this).attr("data-filter");
        $container.isotope({
            filter: selector,
            animationOptions: {
                duration: 750,
                easing: "linear",
                queue: false,
            }
        });
        return false;
    });
    var $optionSets = $("nav.primary ul"),
        $optionLinks = $optionSets.find("a");
    $optionLinks.click(function() {
        
        var $this = $(this);
        if ($this.hasClass("selected")) {
            return false;
        }
        var $optionSet = $this.parents("nav.primary ul");
        $optionSet.find(".selected").removeClass("selected");
        $this.addClass("selected");
     
        
       
    });


    
  
    $("#slider-range").slider({
        range: true,
        min: 0,
        max: 500,
        values: [75, 300],
        slide: function(event, ui) {
          
            $(".minvalue").html("$" + ui.values[0]);
            $(".maxvalue").html("$" + ui.values[1]);
        }
    });
    $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

    
    $(".up").on("click", function() {
        var thisObj = $(this);
        var thisInput = thisObj.parent().find("input");
        var prevVal = parseInt(thisInput.val());
        var newVal = prevVal + 1;
        thisInput.val(newVal);
    });
    $(".down").on("click", function() {
        var thisObj = $(this);
        var thisInput = thisObj.parent().find("input");
        var prevVal = parseInt(thisInput.val());
        var newVal = prevVal - 1;
        if (newVal >= 0) {
            thisInput.val(newVal);
        }
    });
    
   
         
});


