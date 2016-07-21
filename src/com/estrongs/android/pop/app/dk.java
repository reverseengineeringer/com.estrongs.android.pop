package com.estrongs.android.pop.app;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.app.imageviewer.gallery.c;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.util.m;
import java.net.URL;
import java.net.URLConnection;

class dk
  extends m
{
  dk(dj paramdj, String paramString, TextView paramTextView1, TextView paramTextView2, TextView paramTextView3, c paramc, View paramView)
  {
    super(paramString);
  }
  
  public void run()
  {
    String str = null;
    localObject1 = str;
    for (;;)
    {
      try
      {
        f.a.a = ImageCommentActivity.a(f.a, ImageCommentActivity.b(f.a));
        localObject1 = str;
        str = f.a.a.ownerId;
        localObject2 = str;
        localObject1 = str;
        if (f.a.a != null)
        {
          localObject1 = str;
          f.a.a(new dl(this));
          localObject2 = str;
        }
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
        Object localObject2 = localObject1;
        continue;
      }
      try
      {
        localObject1 = new URL(PhotoInfoManager.getBuddyIcon(ImageCommentActivity.b(f.a), (String)localObject2)).openConnection();
        ((URLConnection)localObject1).setReadTimeout(20000);
        ((URLConnection)localObject1).setConnectTimeout(60000);
        localObject1 = BitmapFactory.decodeStream(((URLConnection)localObject1).getInputStream());
        if (localObject1 != null) {
          f.a.a(new dm(this, (Bitmap)localObject1));
        }
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
      }
    }
    dj.a(f, d.a(-1, 230400));
    if (!g) {
      f.a.a(new dn(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */