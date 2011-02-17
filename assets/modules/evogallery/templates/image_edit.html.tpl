<div id="content">

<form action="[+action+]" method="post" target="main">
<input type="hidden" name="edit" value="[+id+]" />

<p class="thumbPreview">
	<img src="[+image+]" alt="[+filename+]" title="[+filename+]" />
	<br />[+filename+]
</p>

<label for="title">[+img_title+]</label> <div class="field"><input type="text" name="title" id="title" value="[+title+]" size="35" /></div>
<label for="description">[+img_description+]</label> <div class="field"><textarea name="description" id="description" rows="5" cols="35">[+description+]</textarea></div>
<label for="title">[+img_keyword+]</label> <div class="field"><input type="text" name="keywords" id="keywords" value="[+keywords+]" size="35" />[+keyword_tagList+]</div>
<div class="submit">
	<input type="submit" value="[+btn_update+]" id="cmdsave" class="awesome" name="cmdsave" />
</div>
<div class="imageupdater">
    <label for="newimage">[+img_update+]</label><br />
    <input id="newimage" name="newimage" type="file" /> 
    <a id="newimageupload" href="#">[+file_upload+]</a></div>
</div>
</form>
[+debug+]
