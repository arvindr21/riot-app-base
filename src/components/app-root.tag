<app-root>
  <!-- Component HTML Start -->
  <h1><img src="./images/pear.png" height="48" width="48"/>  RiotJS TWBS!</h1>
  <hr>
  <div class="container">
    <h2>Alert </h2>
    <bs-alert alert={ priAlert }></bs-alert> 
    <hr>
    <h2>Button</h2>
    <bs-button button={ priBtn }></bs-button>  
  </div>
  <!-- Component HTML End -->
  <!-- Component Style Start -->
  <style scoped>

  </style>
  <!-- Component Style End -->
  <!-- Component Script Start -->
  <script>
       let ctr = 0;

  	   this.priAlert = {
          type: 'primary',
          text: 'This will update when you click the button!'
        };

        this.priBtn = {
          bgType: 'primary',
          // btnType : 'submit',
          // outlineType: 'dark',
          size: 'lg',
          block: false,
          disabled: false,
          text: 'Click here',
          onClick: () => {
            ctr++;
            this.priAlert.text = `Button clicked ${ctr} times`;
            this.update(); // re-render
          }
        }

  </script>
  <!-- Component Script End -->
</app-root>
