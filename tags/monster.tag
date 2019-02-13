<download>
  <img src="img/{ downloadImage }.gif">


  <div>
    <div class="bar speed">
      <div style="width:{ speed }%;">&nbsp;</div>
    </div>
    <p>slowness level: { speed }</p>
  </div>


  <button onclick={ speedup }>speedup</button>
  <button onclick={ unspeedup }>Not speedup</button>


  <script>
    //make a copy of my pet object and call it that
    var that  = this;

    //initial state
    this.speed = 50;
    this.downloadImage = "neutral";

    //tell DOM window to increase speed every three second
    //console.log(that);
    window.setInterval(function(){
      that.incSpeed();
      that.update();
      that.checkStatus();
      <!-- console.log(this); -->
    }, 3000);


    decSpeed() {

      this.speed = this.speed - 10 < 0 ? 0 : this.speed - 10;
    }

    incSpeed() {
      this.speed = this.speed + 10 > 100 ? 100 : this.speed + 10;
    }

    checkStatus() {
      if (this.speed >= 70){
        this.downloadImage = "slow";
      } else if (this.speed <= 30){
        this.downloadImage = "fast";
      }else{
        this.downloadImage = "neutral";
      }
    }

// functions that respond to events
    speedup(e) {
      this.decSpeed();
      this.checkStatus();
    }

    unspeedup(e) {
      this.incSpeed();
      this.checkStatus();
    }
  </script>

  <style>
  :scope{
    margin:auto;
  }

  img{
    weight:auto;
    height:200px;
  }

  </style>
</download>
