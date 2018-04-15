<app-root>
  <!-- Component HTML Start -->
  <h1><img src="../images/pear.png" height="48" width="48"/>  App loaded successfully!</h1>
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
  		console.log('Component mounted with options', this.opts);
  		// Load data or AJAX
  	});
  </script>
  <!-- Component Script End -->
</app-root>
