<bs-button>
  <!-- Component HTML Start -->
  <button type="{opts.button.btnType}" class="btn btn-{ opts.button.bgType } btn-outline-{opts.button.outlineType} btn-{opts.button.size} btn-{opts.button.block}" disabled="{ opts.button.disabled }" onclick={ handler }>{ opts.button.text }</button>
  <!-- Component HTML End -->
  <!-- Component Style Start -->
  <style scoped>
    h1{
      font-style: italic;
    }
  </style>
  <!-- Component Style End -->
  <!-- Component Script Start -->
  <script>
    this.on('mount', () => {
      // console.log(opts.button);
      this.update();
    });

    this.on('update', () =>{
      opts.button = opts.button || {};
      opts.button.btnType = opts.button.btnType ? opts.button.btnType : 'button';
      opts.button.block = opts.button.block ? 'block' : '';
    });

    handler = function (e){
      e.preventDefault();
      if(opts.button.onClick) opts.button.onClick();
    }

  </script>
  <!-- Component Script End -->
</bs-button>
