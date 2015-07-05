package com.estrongs.android.pop.app;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.estrongs.a.a;
import com.estrongs.a.p;
import com.estrongs.android.a.u;
import com.estrongs.android.d.h;
import com.estrongs.android.pop.app.imageviewer.CropImage;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.util.bc;
import java.io.File;

class ci
  implements Runnable
{
  ci(ch paramch, a parama, String paramString) {}
  
  public void run()
  {
    
    if (a.getTaskResult().a != 0)
    {
      c.d.a(2131428136);
      c.d.setResult(0, c.c);
      c.d.finish();
      return;
    }
    Uri localUri = Uri.fromFile(new File(b));
    if (bc.c(b))
    {
      if (FileChooserActivity.a(c.d))
      {
        localObject1 = new Bundle();
        ((Bundle)localObject1).putBoolean("setWallpaper", true);
        localObject2 = new Intent();
        ((Intent)localObject2).setData(localUri);
        ((Intent)localObject2).setClass(c.d, CropImage.class);
        ((Intent)localObject2).putExtras((Bundle)localObject1);
        c.d.startActivityForResult((Intent)localObject2, 268439577);
        return;
      }
      Object localObject2 = c.d.getIntent().getExtras();
      if (localObject2 != null) {}
      for (Object localObject1 = ((Bundle)localObject2).getString("crop"); localObject1 != null; localObject1 = null)
      {
        Bundle localBundle = new Bundle();
        if (((String)localObject1).equals("circle")) {
          localBundle.putString("circleCrop", "true");
        }
        localObject1 = new Intent();
        ((Intent)localObject1).setData(localUri);
        ((Intent)localObject1).setClass(c.d, CropImage.class);
        ((Intent)localObject1).putExtras(localBundle);
        ((Intent)localObject1).putExtras((Bundle)localObject2);
        c.d.startActivityForResult((Intent)localObject1, 268439577);
        return;
      }
      if ((localObject2 != null) && (((Bundle)localObject2).getBoolean("return-data")))
      {
        localObject1 = h.a(c.d);
        int i = c.d.getIntent().getIntExtra("outputX", 64);
        c.c.putExtra("data", ((h)localObject1).a(i, b, null));
      }
      for (;;)
      {
        c.d.setResult(-1, c.c);
        c.d.finish();
        return;
        c.c.setData(Uri.fromFile(new File(b)));
      }
    }
    if ((bc.g(b)) || ((bc.h(b)) && (!bc.k(b))))
    {
      c.c.setData(FileContentProvider.a(b));
      c.d.setResult(-1, c.c);
      c.d.finish();
      return;
    }
    if (z.as)
    {
      c.c.setData(FileContentProvider.a(b));
      c.d.setResult(-1, c.c);
      c.d.finish();
      return;
    }
    new ct(c.d).a(2131427955).a(2131165195, -1, new cj(this)).a(2131427340, null).b().show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */