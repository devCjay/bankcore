 <a href="#" data-toggle="modal" data-target="#content" class="btn btn-primary"><i class="fa fa-plus"></i> Add CMS Content</a>
 <div id="content" class="modal fade" role="dialog">
     <div class="modal-dialog">
         <div class="modal-content">
             <div class="modal-header ">
                 <h4 class="modal-title" style="text-align:center;">Add CMS Content</h4>
                 <button type="button" class="close " data-dismiss="modal">&times;</button>
             </div>
             <div class="modal-body ">
                 <form action="{{ route('savecontents') }}" method="post">
                     {{ csrf_field() }}
                     <div class="form-group">
                         <h5 class=" ">CMS Key</h5>
                         <input type="text" name="title" placeholder="Example: home.hero.description" class="form-control  "
                             required>
                         <small class="text-muted">Use a key from the Landing CMS Keys guide. Existing generic content can still use normal titles.</small>
                     </div>
                     <div class="form-group">
                         <h5 class="">Text / URL Value</h5>
                         <textarea name="content" placeholder="Text, label, or URL used by this CMS key" class="form-control  " rows="3" required></textarea>
                     </div>
                     <button type="submit" class="btn btn-primary">Save</button>
                 </form>

             </div>
         </div>
     </div>
 </div>
