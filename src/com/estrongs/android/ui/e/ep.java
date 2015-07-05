package com.estrongs.android.ui.e;

import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.app.imageviewer.CropImage;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.a;
import java.io.File;

class ep
  implements Runnable
{
  ep(eo parameo, String paramString1, String paramString2) {}
  
  public void run()
  {
    Intent localIntent = new Intent(cp.a(c.a), CropImage.class);
    localIntent.setData(Uri.fromFile(new File(a)));
    int i = Math.max(a.d, a.e);
    localIntent.putExtra("outputX", i);
    localIntent.putExtra("outputY", i);
    localIntent.putExtra("aspectX", i);
    localIntent.putExtra("aspectY", i);
    localIntent.putExtra("scale", true);
    localIntent.putExtra("noFaceDetection", true);
    localIntent.putExtra("customSave", b);
    cp.a(c.a).startActivityForResult(localIntent, 268439577);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ep
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */