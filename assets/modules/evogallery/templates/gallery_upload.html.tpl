[+upload_script+]

<hr />
<h2 class="second">[+upd_title+] [+title+]</h2>

<form action="[+action+]" method="post" enctype="multipart/form-data">
	
<div id="uploadContainer">
		<p><strong>[+upd_tip+]</strong> [+upd_info+]</p>
        <input id="uploadify" name="uploadify" type="file" /> 
        <a href="#" id="uploadFiles">[+file_upload+]</a> | <a href="#" id="clearQueue">[+upd_clearqueue+]</a>
</div>
<p id="sortdesc">[+upd_dragimg+]</p>
<div id="uploadFiles"><ul id="uploadList">[+thumbs+]</ul></div>

<div class="submit">
	<input type="submit" name="cmdprev" value="&lt; [+upd_goback+]" title="[+upd_gobackinfo+]" /> &nbsp; <input type="submit" id="cmdsort" name="cmdsort" value="[+upd_saveorder+] &gt;" title="[+upd_saveorderinfo+]" />
    <p><strong>[+upd_sorting+]</strong> [+upd_sortinfo+]</p>
</div>

</form>
