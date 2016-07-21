package com.estrongs.android.view;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.app.imageviewer.Wallpaper;
import java.io.File;

class gn
  implements Runnable
{
  gn(gm paramgm, String paramString) {}
  
  public void run()
  {
    Uri localUri = Uri.fromFile(new File(a));
    Intent localIntent = new Intent("android.intent.action.ATTACH_DATA");
    localIntent.setDataAndType(localUri, "image/*");
    localIntent.putExtra("mimeType", "image/*");
    localIntent.setClass(b.b.a.ag, Wallpaper.class);
    b.b.a.ag.startActivity(localIntent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.gn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */