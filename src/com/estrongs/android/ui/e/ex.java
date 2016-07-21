package com.estrongs.android.ui.e;

import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.app.imageviewer.CropImage;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.g;
import java.io.File;

class ex
  implements Runnable
{
  ex(ew paramew, String paramString1, String paramString2) {}
  
  public void run()
  {
    Intent localIntent = new Intent(cr.b(c.a), CropImage.class);
    localIntent.setData(Uri.fromFile(new File(a)));
    int i = Math.max(g.d, g.e);
    localIntent.putExtra("outputX", i);
    localIntent.putExtra("outputY", i);
    localIntent.putExtra("aspectX", i);
    localIntent.putExtra("aspectY", i);
    localIntent.putExtra("scale", true);
    localIntent.putExtra("noFaceDetection", true);
    localIntent.putExtra("customSave", b);
    cr.b(c.a).startActivityForResult(localIntent, 4121);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */