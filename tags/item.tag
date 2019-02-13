<item>
	<h3>what do you want to download?</h3>
	<button type="button" onclick={ tellDownloadList }>What's downloading now?</button>
	<div class="jokeMaker">
		<!-- ref or reference attribute is a quick way to "bookmark" an element so we can quickly access it in javascript later. -->
		<!-- E.g. HTML <img ref="xxx"/>  -->
		<!-- E.g. JS   this.refs.xxx points to the img tag prior -->
		<input type="text" ref="downloadListContent" placeholder="Enter An Item">
		<button type="button" onclick={ addItem }>Add</button>
	</div>

	<div class ="itemContainer" each={downloadList}>
		<p>{value}</p>
    <button type="button" onclick={ removeItem }>Remove</button>
  </div>

	<script>
		this.downloadList = [{
			value: "Game of Thrones"
		},{
			value: "Harry Potter"
		},{
			value: "Lord of the Rings"
		}]

		this.removeItem = function(event) {
			var downloadObj = event.item;
			var index = this.downloadList.indexOf(downloadObj);
			this.downloadList.splice(index, 1);
		};

		this.addItem = function(event) {
			var newItem = {};
			newItem.value = this.refs.downloadListContent.value;

			this.downloadList.push(newItem);
			this.refs.downloadListContent.value = "";
		};

		this.tellDownloadList = function(){
			var max = this.downloadList.length;
			var tempIndex = Math.floor(Math.random() * Math.floor(max));
			alert(this.downloadList[tempIndex].value);
		}
	</script>


	<style>
		:scope {
			display: block;
			background: yellow;
			padding: 15px;
		}
    button{
      margin-left: 3px;
    }
    p{
      padding: 5px;
    }

		.itemContainer{
			display: inline-block;
		}
	</style>
</item>
