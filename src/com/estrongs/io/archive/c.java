package com.estrongs.io.archive;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Message;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.pop.utils.aa;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.notification.d;
import com.estrongs.android.ui.theme.at;
import com.estrongs.fs.util.j;
import java.io.File;
import java.math.BigDecimal;
import java.text.MessageFormat;
import java.text.SimpleDateFormat;

public class c
  extends e
{
  private String a;
  private long h = 0L;
  private String i = "";
  private int j = Integer.MAX_VALUE;
  private Context k;
  private String l;
  private ProgressBar m = null;
  private TextView n;
  private TextView o;
  private TextView p;
  private ImageView q;
  private TextView r;
  private String s;
  private com.estrongs.android.pop.app.compress.l t;
  private d u;
  private int v = -1;
  private boolean w = false;
  
  public c(Context paramContext, com.estrongs.android.pop.app.compress.l paraml, String paramString, boolean paramBoolean)
  {
    w = paramBoolean;
    k = paramContext;
    t = paraml;
    l = paramString;
    u = new d(paramContext);
    if (w)
    {
      u.a(2130838198);
      u.b(paramContext.getResources().getString(2131232167));
    }
    for (;;)
    {
      u.a(true);
      paramContext = new Intent();
      paramContext.setClassName(FexApplication.a().getPackageName(), FileExplorerActivity.class.getName());
      paramContext.putExtra("compress", true);
      paramContext.putExtra("application", FexApplication.a().toString());
      paramContext.putExtra("notification_id", u.f());
      u.a(paramContext, true);
      return;
      u.a(2130838203);
      u.b(paramContext.getResources().getString(2131232174));
    }
  }
  
  private static double a(long paramLong1, long paramLong2)
  {
    if (paramLong2 == 0L) {
      return 1.0D;
    }
    return new BigDecimal((float)paramLong1 / (float)paramLong2 * 100.0F).setScale(2, 4).doubleValue();
  }
  
  private void a(int paramInt)
  {
    if (q == null) {
      return;
    }
    switch (paramInt)
    {
    default: 
      q.setImageResource(2130838551);
      r.setText(k.getResources().getString(2131231461));
      return;
    case 1: 
      q.setImageDrawable(at.a(k).b(2130838525, 2131558667));
      r.setText(k.getResources().getString(2131231459));
      return;
    case 3: 
      if (w)
      {
        q.setImageResource(2130838551);
        r.setText(k.getResources().getString(2131231461));
        return;
      }
      q.setImageResource(2130838574);
      if ((q instanceof ESImageView))
      {
        ((ESImageView)q).setTopCornerImage(k.getResources().getDrawable(2130837975));
        q.invalidate();
      }
      aa.a().a(a);
      r.setText(k.getResources().getString(2131231460));
      return;
    }
    q.setImageResource(2130838551);
    r.setText(k.getResources().getString(2131231461));
  }
  
  public int a()
  {
    return v;
  }
  
  public void a(ImageView paramImageView)
  {
    q = paramImageView;
  }
  
  public void a(ProgressBar paramProgressBar)
  {
    m = paramProgressBar;
    paramProgressBar.setMax(j);
  }
  
  public void a(TextView paramTextView)
  {
    r = paramTextView;
    a(v);
  }
  
  public void a(String paramString) {}
  
  public void b(TextView paramTextView)
  {
    n = paramTextView;
  }
  
  public void b(String paramString)
  {
    s = paramString;
    if (t == null) {
      u.c(s);
    }
  }
  
  public void c(TextView paramTextView)
  {
    o = paramTextView;
  }
  
  public void c(String paramString)
  {
    u.c(paramString);
  }
  
  public void d(TextView paramTextView)
  {
    p = paramTextView;
  }
  
  public void d(String paramString)
  {
    a = paramString;
  }
  
  public void handleMessage(Message paramMessage)
  {
    Object localObject;
    if (2 == what)
    {
      if (l == null) {
        break label476;
      }
      if (l.indexOf("{0}") >= 0) {
        break label453;
      }
      localObject = "" + obj;
    }
    for (;;)
    {
      com.estrongs.android.util.l.e("ArchiveHandler", (String)localObject);
      com.estrongs.android.ui.view.ak.a(k, (CharSequence)localObject, 1);
      if (t != null) {
        t.c();
      }
      v = 4;
      com.estrongs.android.view.ak.c(a);
      com.estrongs.android.view.ak.d(a);
      u.e();
      label206:
      label248:
      File localFile;
      if (1 == what)
      {
        m.setProgress(j);
        u.c(j);
        if (obj != null)
        {
          com.estrongs.android.ui.view.ak.a(k, MessageFormat.format(k.getString(2131231767), new Object[] { obj.toString() }), 1);
          v = 3;
          a(v);
        }
        if (arg1 != 10) {
          break label503;
        }
        i1 = 1;
        if (i1 == 0) {
          break label509;
        }
        localObject = new Intent("com.estrongs.android.intent.action.ARCHIVE_DONE");
        ((Intent)localObject).putExtra("output_path", s);
        ((Activity)k).sendBroadcast((Intent)localObject);
        if (i1 == 0) {
          break label526;
        }
        u.b(k.getString(2131230836));
        u.c(k.getString(2131231871));
        u.a();
        u.a(false);
        com.estrongs.android.view.ak.c(a);
        com.estrongs.android.view.ak.d(a);
        m.setVisibility(8);
        o.setVisibility(0);
        p.setVisibility(0);
        n.setVisibility(8);
        if (i1 != 0)
        {
          localObject = new SimpleDateFormat("yyyy.MM.dd");
          localFile = new File(a);
          if (localFile.exists()) {
            o.setText(j.c(localFile.length()));
          }
        }
      }
      try
      {
        p.setText(((SimpleDateFormat)localObject).format(Long.valueOf(localFile.lastModified())));
        if (7 == what)
        {
          u.e();
          v = 2;
          a(v);
          return;
          label453:
          localObject = MessageFormat.format(l, new Object[] { obj });
          continue;
          label476:
          localObject = "" + obj;
          continue;
          label503:
          i1 = 0;
          break label206;
          label509:
          if (t == null) {
            break label248;
          }
          t.c();
          break label248;
          label526:
          u.b(k.getString(2131230852));
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
        if (3 == what)
        {
          a(obj.toString());
          return;
        }
        if (4 == what)
        {
          u.c();
          v = 1;
          a(v);
          h = j.a(c);
          i = j.b(h);
          if (h == 0L) {
            h = 1L;
          }
          new BigDecimal(c / h).setScale(2, 4).doubleValue();
          m.setMax(j);
          u.b(j);
          return;
        }
        if (6 != what) {
          break label909;
        }
      }
    }
    m.setVisibility(0);
    o.setVisibility(8);
    p.setVisibility(8);
    n.setVisibility(0);
    long l1 = j.a(f);
    new BigDecimal(f / l1).setScale(2, 4).doubleValue();
    double d = a(f, c);
    if (f > c) {
      d = 98.0D;
    }
    int i1 = (int)(j * (d / 100.0D));
    n.setText(d + "%");
    if (d < 100.0D)
    {
      if (i1 < j) {
        break label918;
      }
      i1 = j - j / 10;
    }
    label909:
    label918:
    for (;;)
    {
      m.setProgress(i1);
      u.c(i1);
      return;
      m.setProgress(j);
      u.c(j);
      return;
      if (5 != what) {
        break;
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */