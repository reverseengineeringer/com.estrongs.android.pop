package com.estrongs.android.pop.app;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Display;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.app.imageviewer.ViewImage;
import com.estrongs.android.pop.app.imageviewer.ViewImage21;
import com.estrongs.android.pop.app.imageviewer.ao;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import java.io.IOException;
import java.io.InputStream;

public class PopRemoteImageBrowser
  extends ESActivity
{
  private d a = null;
  private String b = null;
  private String[] c = null;
  private String d = null;
  private int e = -1;
  private ImageView f = null;
  private int g;
  private int h;
  private ImageView i;
  private ImageView j;
  private DisplayMetrics k = new DisplayMetrics();
  private float l;
  private c m = null;
  private View.OnClickListener n = new ja(this);
  private final Handler o = new Handler();
  private BitmapDrawable p = null;
  private BitmapDrawable q = null;
  
  private static int a(BitmapFactory.Options paramOptions, int paramInt)
  {
    int i4 = outWidth;
    int i3 = outHeight;
    int i2 = Math.max(i4 / paramInt, i3 / paramInt);
    if (i2 <= 1) {}
    do
    {
      return 1;
      int i1 = i2;
      if (i2 > 1)
      {
        i1 = i2;
        if (i4 > paramInt)
        {
          i1 = i2;
          if (i4 / i2 < paramInt) {
            i1 = i2 - 1;
          }
        }
      }
      i2 = i1;
      if (i1 > 1)
      {
        i2 = i1;
        if (i3 > paramInt)
        {
          i2 = i1;
          if (i3 / i1 < paramInt) {
            i2 = i1 - 1;
          }
        }
      }
    } while (i2 <= 1);
    return i2;
  }
  
  private InputStream a(String paramString)
  {
    try
    {
      paramString = a.e(paramString);
      return paramString;
    }
    catch (FileSystemException paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  private void b()
  {
    je.a(this);
    new Thread(new jb(this)).start();
  }
  
  private void c()
  {
    je.a(this);
    new Thread(new jc(this)).start();
  }
  
  private void d()
  {
    Object localObject = a();
    if (localObject == null) {
      return;
    }
    localObject = new BitmapDrawable(getResources(), (Bitmap)localObject);
    p = q;
    q = ((BitmapDrawable)localObject);
    o.post(new jd(this));
  }
  
  public Bitmap a()
  {
    int i1 = e;
    if (i1 == -1) {
      return null;
    }
    InputStream localInputStream = a(c[i1]);
    if (localInputStream == null) {
      return null;
    }
    Object localObject = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    BitmapFactory.decodeStream(localInputStream, null, (BitmapFactory.Options)localObject);
    boolean bool1 = localInputStream.markSupported();
    boolean bool2 = ap.L(c[i1]);
    boolean bool3 = ap.bg(c[i1]);
    if ((bool1) && (!bool2) && (!bool3)) {
      localInputStream.mark(0);
    }
    for (;;)
    {
      inSampleSize = a((BitmapFactory.Options)localObject, h);
      if ((bool1) && (!bool2) && (!bool3)) {}
      try
      {
        localInputStream.reset();
        inJustDecodeBounds = false;
        localObject = BitmapFactory.decodeStream(localInputStream, null, (BitmapFactory.Options)localObject);
      }
      catch (IOException localIOException3)
      {
        try
        {
          for (;;)
          {
            localInputStream.close();
            return (Bitmap)localObject;
            try
            {
              localInputStream.close();
            }
            catch (IOException localIOException2) {}
            break;
            localInputStream = a(c[i1]);
          }
          localIOException3 = localIOException3;
        }
        catch (IOException localIOException1)
        {
          for (;;) {}
        }
      }
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    paramConfiguration = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(paramConfiguration);
    g = widthPixels;
    h = (heightPixels - 80);
    d();
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    try
    {
      if ((q != null) && (q.getBitmap() != null)) {
        setWallpaper(q.getBitmap());
      }
      return true;
    }
    catch (IOException paramMenuItem)
    {
      for (;;) {}
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = d.a(this);
    getWindowManager().getDefaultDisplay().getMetrics(k);
    l = k.density;
    m = c.a(this);
    getWindow().setFlags(2000, 1024);
    setContentView(2130903405);
    m = c.a(this);
    if (!getIntent().getBooleanExtra("islocalopen", false)) {}
    label621:
    for (;;)
    {
      try
      {
        m.d("act3");
        m.a("act3", "image_browser");
        f = ((ImageView)findViewById(2131624404));
        localObject1 = getIntent().getData();
        if (localObject1 == null)
        {
          localObject2 = getIntent().getExtras();
          paramBundle = (Bundle)localObject1;
          if (localObject2 != null)
          {
            d = ((Bundle)localObject2).getString("FILE_PATH");
            paramBundle = (Bundle)localObject1;
            if (d != null) {
              paramBundle = Uri.parse(d);
            }
          }
          if (paramBundle != null) {
            break label621;
          }
          paramBundle = Uri.parse("pic://");
          localObject1 = paramBundle.getScheme();
          if (localObject1 != null) {
            continue;
          }
          localObject1 = "";
          if ((!ap.bm(paramBundle.toString())) && (!((String)localObject1).equals("file")) && (!ap.bC(paramBundle.toString())) && (!((String)localObject1).equals("pic")) && (!((String)localObject1).equals("search"))) {
            continue;
          }
          localObject1 = getIntent();
          ((Intent)localObject1).setFlags(0);
          if (ac.a() >= 8) {
            continue;
          }
          ((Intent)localObject1).setClass(this, ViewImage21.class);
          ((Intent)localObject1).setData(paramBundle);
          startActivity((Intent)localObject1);
          finish();
        }
      }
      catch (Exception paramBundle)
      {
        paramBundle.printStackTrace();
        continue;
        d = ((Uri)localObject1).toString();
        paramBundle = (Bundle)localObject1;
        continue;
        Object localObject1 = ((String)localObject1).toLowerCase();
        continue;
        ((Intent)localObject1).setClass(this, ViewImage.class);
        continue;
        i = ((ImageView)findViewById(2131625032));
        j = ((ImageView)findViewById(2131625033));
        i.setOnClickListener(n);
        j.setOnClickListener(n);
        Object localObject2 = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics((DisplayMetrics)localObject2);
        g = widthPixels;
        h = (heightPixels - 80);
        b = (ap.e(d) + "/");
        registerForContextMenu(f);
        if (((String)localObject1).equals("content"))
        {
          try
          {
            localObject1 = ao.a(800, 3145728, paramBundle, getContentResolver(), true);
            if (localObject1 == null) {
              continue;
            }
            f.setImageBitmap((Bitmap)localObject1);
            q = new BitmapDrawable(getResources(), (Bitmap)localObject1);
          }
          catch (Throwable paramBundle)
          {
            ak.a(this, getString(2131231758) + " (" + paramBundle.getMessage() + ")", 1);
            continue;
          }
          findViewById(2131625463).setVisibility(8);
          return;
          f.setImageURI(paramBundle);
          if (f.getDrawable() != null) {
            continue;
          }
          ak.a(this, getString(2131231758), 1);
          continue;
        }
        b();
        return;
      }
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    paramContextMenu.add(getString(2131232334));
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.PopRemoteImageBrowser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */