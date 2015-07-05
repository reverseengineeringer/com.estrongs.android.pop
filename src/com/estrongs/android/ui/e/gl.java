package com.estrongs.android.ui.e;

import com.estrongs.android.pop.spfs.SPFileObject;
import com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog.PrivacyOptionCallback;
import com.estrongs.android.pop.spfs.task.FlickrEditTask;
import com.estrongs.android.util.TypedMap;
import com.estrongs.fs.h;

class gl
  implements FlickrPhotoPrivacyDialog.PrivacyOptionCallback
{
  gl(gj paramgj, h paramh) {}
  
  public void setPrivacty(TypedMap paramTypedMap, boolean paramBoolean)
  {
    if (paramBoolean) {
      return;
    }
    paramTypedMap = new FlickrEditTask((SPFileObject)a, paramTypedMap);
    paramTypedMap.addTaskStatusChangeListener(new gm(this));
    paramTypedMap.execute(true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.gl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */