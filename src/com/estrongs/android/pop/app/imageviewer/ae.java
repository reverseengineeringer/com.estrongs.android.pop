package com.estrongs.android.pop.app.imageviewer;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.StatFs;
import android.preference.PreferenceManager;
import android.text.format.Formatter;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.imageviewer.gallery.c;
import com.estrongs.android.pop.app.imageviewer.gallery.e;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.utils.ci;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.util.am;
import com.estrongs.fs.util.j;
import java.io.IOException;
import java.io.InputStream;
import java.text.MessageFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ae
{
  private static String a = "Unknown";
  
  public static int a()
  {
    try
    {
      if (!ImageManager.a()) {
        return -1;
      }
      StatFs localStatFs = new StatFs(b.b());
      float f = localStatFs.getAvailableBlocks();
      int i = localStatFs.getBlockSize();
      return (int)(f * i / 400000.0F);
    }
    catch (Exception localException) {}
    return -2;
  }
  
  public static long a(e parame)
  {
    parame = parame.g();
    if (parame == null) {
      return -1L;
    }
    try
    {
      int i = parame.available();
      long l = i;
      j.a(parame);
      return l;
    }
    catch (IOException localIOException)
    {
      localIOException = localIOException;
      j.a(parame);
      return -1L;
    }
    finally
    {
      localObject = finally;
      j.a(parame);
      throw ((Throwable)localObject);
    }
  }
  
  public static void a(Activity paramActivity)
  {
    a(paramActivity, a());
  }
  
  public static void a(Activity paramActivity, int paramInt)
  {
    String str = null;
    if (paramInt == -1) {
      if (Environment.getExternalStorageState() == "checking") {
        str = paramActivity.getString(2131427932);
      }
    }
    for (;;)
    {
      if (str != null) {
        com.estrongs.android.ui.view.ag.a(paramActivity, str, 5000);
      }
      return;
      str = paramActivity.getString(2131427932);
      continue;
      if (paramInt < 1) {
        str = paramActivity.getString(2131427895);
      }
    }
  }
  
  public static void a(Activity paramActivity, Uri paramUri, e parame)
  {
    if ((paramUri == null) || (parame == null)) {
      return;
    }
    paramUri = ao.a(parame);
    paramUri.setClass(paramActivity, Wallpaper.class);
    paramActivity.startActivity(paramUri);
  }
  
  public static void a(Activity paramActivity, Uri paramUri, e parame, Handler paramHandler)
  {
    if (parame == null) {
      return;
    }
    ct localct = new ct(paramActivity);
    View localView = g.a(paramActivity).inflate(2130903160, null);
    if (am.aG(paramUri.toString())) {}
    a = paramActivity.getResources().getString(2131427750);
    ((ImageView)localView.findViewById(2131362390)).setImageBitmap(parame.h());
    paramUri = paramActivity.getResources().getString(2131427442);
    if ((parame instanceof c))
    {
      parame = (c)parame;
      ((TextView)localView.findViewById(2131362391)).setText(am.bL(parame.c()));
      ((TextView)localView.findViewById(2131362393)).setText(paramUri);
      ((TextView)localView.findViewById(2131362399)).setText(paramUri);
      ((TextView)localView.findViewById(2131362396)).setText(paramUri);
      ((TextView)localView.findViewById(2131362402)).setText(paramUri);
      ((TextView)localView.findViewById(2131362405)).setText(paramUri);
      new ag(parame, paramHandler, paramActivity, localView).start();
      localct.a(2131427339, new ai());
      paramHandler.post(new aj(localct, localView));
      return;
    }
    String str = parame.d();
    long l = a(parame);
    if (l < 0L) {}
    for (paramUri = "";; paramUri = Formatter.formatFileSize(paramActivity, l))
    {
      ((TextView)localView.findViewById(2131362391)).setText(str);
      ((TextView)localView.findViewById(2131362393)).setText(paramUri);
      b(localView, parame, paramActivity);
      break;
    }
  }
  
  static void a(Activity paramActivity, Runnable paramRunnable, e parame)
  {
    a(paramActivity, paramRunnable, true, parame);
  }
  
  static void a(Activity paramActivity, Runnable paramRunnable, boolean paramBoolean, e parame)
  {
    if (parame == null) {}
    do
    {
      return;
      if (PreferenceManager.getDefaultSharedPreferences(paramActivity).getBoolean("pref_gallery_confirm_delete_key", true)) {
        break;
      }
    } while (paramRunnable == null);
    paramRunnable.run();
    return;
    paramBoolean = ad.a(paramActivity).aD();
    parame = parame.d();
    if (paramBoolean) {
      if (ci.a(parame) == ci.c) {
        paramBoolean = true;
      }
    }
    for (;;)
    {
      int i;
      label71:
      String str;
      if (paramBoolean)
      {
        i = 2131428403;
        str = paramActivity.getString(i);
        if (paramBoolean) {
          break label125;
        }
      }
      label125:
      for (parame = MessageFormat.format(paramActivity.getString(2131427770), new Object[] { "" });; parame = MessageFormat.format(paramActivity.getString(2131428419), new Object[] { am.d(parame) }))
      {
        a(paramActivity, str, parame, paramRunnable);
        return;
        paramBoolean = false;
        break;
        i = 2131427347;
        break label71;
      }
    }
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, Runnable paramRunnable)
  {
    paramRunnable = new af(paramRunnable);
    try
    {
      new ct(paramContext).a(paramString1).b(paramString2).b(2131427339, paramRunnable).c(2131427340, paramRunnable).c();
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private static void a(View paramView)
  {
    a(paramView, 2131362397);
    a(paramView, 2131362400);
    a(paramView, 2131362403);
  }
  
  private static void a(View paramView, int paramInt)
  {
    paramView.findViewById(paramInt).setVisibility(8);
  }
  
  private static void a(View paramView, String paramString, int paramInt)
  {
    ((TextView)paramView.findViewById(paramInt)).setText(paramString);
  }
  
  private static void a(e parame, View paramView, Activity paramActivity)
  {
    paramActivity = null;
    if (0 == 0) {}
    for (parame = a;; parame = null)
    {
      a(paramView, parame, 2131362402);
      parame = paramActivity;
      if (0 == 0) {
        parame = a;
      }
      a(paramView, parame, 2131362405);
      return;
    }
  }
  
  public static boolean a(Uri paramUri)
  {
    if (paramUri == null) {}
    String str1;
    do
    {
      return false;
      str1 = paramUri.getScheme();
      String str2 = paramUri.getAuthority();
      if ((str1.equals("content")) && (str2.equals("media"))) {
        return true;
      }
    } while ((!str1.equals("file")) || (!am.bl(paramUri.getPath())));
    return true;
  }
  
  public static void b(Activity paramActivity, Uri paramUri, e parame)
  {
    if (parame == null) {
      return;
    }
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.SEND");
    localIntent.setType(parame.k());
    localIntent.putExtra("android.intent.extra.STREAM", paramUri);
    ImageManager.a(parame);
    try
    {
      paramActivity.startActivity(Intent.createChooser(localIntent, paramActivity.getText(2131427389)));
      return;
    }
    catch (ActivityNotFoundException paramUri)
    {
      com.estrongs.android.ui.view.ag.a(paramActivity, 2131427910, 0);
    }
  }
  
  private static void b(View paramView, e parame, Activity paramActivity)
  {
    int j;
    int i;
    if (ImageManager.a(parame))
    {
      j = parame.m();
      i = parame.l();
    }
    for (;;)
    {
      Object localObject = a;
      if ((j > 0) && (i > 0)) {
        localObject = String.format(paramActivity.getString(2131428712), new Object[] { Integer.valueOf(j), Integer.valueOf(i) });
      }
      for (;;)
      {
        a(paramView, (String)localObject, 2131362399);
        localObject = a;
        if (parame.o() != 0L)
        {
          localObject = new Date(parame.o());
          localObject = new SimpleDateFormat().format((Date)localObject);
        }
        a(paramView, (String)localObject, 2131362396);
        if ("image/jpeg".equals(parame.k()))
        {
          a(parame, paramView, paramActivity);
          return;
        }
        a(paramView);
        return;
      }
      i = 0;
      j = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */