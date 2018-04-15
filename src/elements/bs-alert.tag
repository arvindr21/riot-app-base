<bs-alert>
  <!-- Component HTML Start -->
     <div class="alert alert-{ opts.alert.type }" if="{ opts.alert.isvisible }" role="alert">
      { opts.alert.text }
      <button type="button" if="{ opts.alert.dismissable }" class="close" data-dismiss="alert" aria-label="Close" onclick="{ parent.dismiss }">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
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
      // console.log(opts.alert);
      this.update();
    });

    this.on('update', () => {  
            opts.alert = opts.alert || {};
            opts.alert.type =  opts.alert.type || 'primary';
            opts.alert.isvisible =  opts.alert.isvisible || false;
            opts.alert.text =  opts.alert.text || '';
            opts.alert.dismissable =  opts.alert.dismissable || false;
            if (typeof opts.alert.isvisible === 'undefined') opts.alert.isvisible = true
            if (opts.alert.timeout) {
                opts.alert.startTimer = () => {
                    opts.alert.timer = setTimeout(() => {
                        this.dismiss({
                            item: opts.alert
                        })
                    }, opts.alert.timeout)
                }
                opts.alert.startTimer()
            }
       
    });

    this.dismiss = e => {
        const alert = e.item
        alert.isvisible = false
        clearTimeout(alert.timer)
        this.trigger('dismiss', alert)
        this.update()
    };
    
  </script>
  <!-- Component Script End -->
</bs-alert>
