package com.estrongs.android.pop.app;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import com.estrongs.android.pop.app.editor.PopNoteEditor;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import java.io.File;

public class b
{
  public static Intent a(Context paramContext, String paramString)
  {
    if (bc.h(paramString)) {
      return d(paramContext, paramString);
    }
    if (bc.g(paramString)) {
      return c(paramContext, paramString);
    }
    if (bc.F(paramString)) {
      return k(paramContext, paramString);
    }
    if (bc.i(paramString)) {
      return a(paramContext, paramString, true);
    }
    if (bc.c(paramString)) {
      return b(paramContext, paramString);
    }
    if (bc.C(paramString)) {
      return f(paramContext, paramString);
    }
    if (bc.D(paramString)) {
      return g(paramContext, paramString);
    }
    if (bc.G(paramString)) {
      return h(paramContext, paramString);
    }
    if (bc.E(paramString)) {
      return i(paramContext, paramString);
    }
    if (bc.q(paramString)) {
      return e(paramContext, paramString);
    }
    if (bc.j(paramString)) {
      return l(paramContext, paramString);
    }
    if (bc.K(paramString)) {
      return a(paramString);
    }
    if (bc.k(paramString)) {
      return j(paramContext, paramString);
    }
    paramContext = new Intent("android.intent.action.VIEW");
    paramContext.addFlags(268435456);
    String str = bc.S(paramString);
    if ((str != null) && (!str.equals("*/*")))
    {
      paramContext.setDataAndType(Uri.fromFile(new File(paramString)), str);
      return paramContext;
    }
    paramContext.setData(Uri.fromFile(new File(paramString)));
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString, boolean paramBoolean)
  {
    if (am.bb(paramString))
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.addFlags(67108864);
      localIntent.setType("text/plain");
      if (am.aV(paramString)) {
        localIntent.setClass(paramContext, BTPopNoteEditor.class);
      }
      for (;;)
      {
        localIntent.setData(Uri.parse(paramString));
        return localIntent;
        localIntent.setClass(paramContext, PopNoteEditor.class);
      }
    }
    paramContext = new Intent("android.intent.action.VIEW");
    paramContext.addFlags(268435456);
    paramContext.setDataAndType(Uri.fromFile(new File(paramString)), "text/plain");
    return paramContext;
  }
  
  public static Intent a(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/vnd.android.package-archive");
    return localIntent;
  }
  
  public static Intent b(Context paramContext, String paramString)
  {
    paramContext = new Intent("android.intent.action.VIEW");
    paramContext.addFlags(268435456);
    paramContext.addFlags(67108864);
    paramContext.setDataAndType(Uri.fromFile(new File(paramString)), "image/*");
    return paramContext;
  }
  
  public static Intent c(Context paramContext, String paramString)
  {
    if (am.bb(paramString))
    {
      Intent localIntent = new Intent(paramContext, StreamingMediaPlayer.class);
      localIntent.addFlags(67108864);
      localIntent.setData(Uri.parse(paramString));
      paramContext.startActivity(localIntent);
      return localIntent;
    }
    paramContext = new Intent("android.intent.action.VIEW");
    paramContext.addFlags(67108864);
    paramContext.putExtra("oneshot", false);
    paramContext.putExtra("configchange", false);
    paramContext.setDataAndType(Uri.fromFile(new File(paramString)), "audio/*");
    return paramContext;
  }
  
  public static Intent d(Context paramContext, String paramString)
  {
    paramContext = new Intent("android.intent.action.VIEW");
    paramContext.addFlags(67108864);
    paramContext.addFlags(268435456);
    paramContext.putExtra("oneshot", false);
    paramContext.putExtra("configchange", false);
    paramContext.setDataAndType(Uri.fromFile(new File(paramString)), "video/*");
    return paramContext;
  }
  
  public static Intent e(Context paramContext, String paramString)
  {
    paramContext = new Intent("android.intent.action.VIEW");
    paramContext.addFlags(268435456);
    paramContext.setDataAndType(Uri.fromFile(new File(paramString)), "application/pdf");
    return paramContext;
  }
  
  public static Intent f(Context paramContext, String paramString)
  {
    paramContext = new Intent("android.intent.action.VIEW");
    paramContext.addFlags(268435456);
    paramContext.setDataAndType(Uri.fromFile(new File(paramString)), "application/msword");
    return paramContext;
  }
  
  public static Intent g(Context paramContext, String paramString)
  {
    paramContext = new Intent("android.intent.action.VIEW");
    paramContext.addFlags(268435456);
    paramContext.setDataAndType(Uri.fromFile(new File(paramString)), "application/vnd.ms-excel");
    return paramContext;
  }
  
  public static Intent h(Context paramContext, String paramString)
  {
    paramContext = new Intent("android.intent.action.VIEW");
    paramContext.addFlags(268435456);
    paramContext.setDataAndType(Uri.fromFile(new File(paramString)), "application/vnd.ms-powerpoint");
    return paramContext;
  }
  
  public static Intent i(Context paramContext, String paramString)
  {
    paramContext = new Intent("android.intent.action.VIEW");
    paramContext.addFlags(268435456);
    paramContext.setDataAndType(Uri.fromFile(new File(paramString)), "application/x-chm");
    return paramContext;
  }
  
  public static Intent j(Context paramContext, String paramString)
  {
    paramContext = new Intent("android.intent.action.VIEW");
    paramContext.addFlags(268435456);
    paramContext.setDataAndType(Uri.fromFile(new File(paramString)), "application/x-shockwave-flash");
    return paramContext;
  }
  
  public static Intent k(Context paramContext, String paramString)
  {
    paramContext = Uri.parse(paramString).buildUpon().encodedAuthority("com.android.htmlfileprovider").scheme("content").encodedPath(paramString).build();
    paramString = new Intent("android.intent.action.VIEW");
    paramString.setDataAndType(paramContext, "text/html");
    return paramString;
  }
  
  public static Intent l(Context paramContext, String paramString)
  {
    paramContext = new Intent("android.intent.action.VIEW");
    paramContext.addFlags(268435456);
    paramContext.putExtra("archive_file_name", paramString);
    paramContext.setDataAndType(Uri.fromFile(new File(paramString)), "application/zip");
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */