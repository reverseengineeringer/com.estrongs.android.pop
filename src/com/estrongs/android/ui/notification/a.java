package com.estrongs.android.ui.notification;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.widget.RemoteViews;
import com.estrongs.android.pop.app.b;
import com.estrongs.fs.util.j;

public class a
{
  private static final Object b = new Object();
  private static a c;
  public int a = 2;
  private Context d;
  private d e;
  private RemoteViews f;
  private boolean g;
  private boolean h;
  private String i;
  private int j;
  
  private a(Context paramContext)
  {
    d = paramContext;
    e = new d(paramContext, false);
  }
  
  public static a a(Context paramContext)
  {
    if (c == null) {}
    synchronized (b)
    {
      if (c == null) {
        c = new a(paramContext);
      }
      return c;
    }
  }
  
  private void a(int paramInt)
  {
    f.setTextViewText(2131625306, d.getResources().getText(paramInt));
    f.setViewVisibility(2131625307, 8);
    f.setViewVisibility(2131625309, 8);
    f.setViewVisibility(2131625310, 8);
  }
  
  public void a()
  {
    h = true;
    switch (a)
    {
    default: 
      return;
    case 2: 
      a(2131232518);
      f.setViewVisibility(2131625311, 0);
      f.setTextViewText(2131625311, d.getResources().getText(2131231096));
    }
    for (;;)
    {
      Intent localIntent = b.a(i);
      e.a(localIntent, true);
      e.b(true);
      e.a(false);
      e.c();
      return;
      e.b(d.getResources().getText(2131232518));
      e.c(d.getResources().getText(2131231096));
      e.a();
    }
  }
  
  public void a(long paramLong1, long paramLong2)
  {
    int k = 0;
    if ((h) || (!g)) {
      return;
    }
    switch (a)
    {
    default: 
      return;
    case 1: 
      if ((paramLong1 != paramLong2) || (paramLong1 <= 0L)) {
        break;
      }
    case 2: 
      do
      {
        e.c();
        return;
      } while ((paramLong1 == paramLong2) && (paramLong1 > 0L));
      if (paramLong1 == 0L) {}
      for (k = 0;; k = (int)(paramLong2 * 1000L / paramLong1))
      {
        j = k;
        f.setProgressBar(2131625308, 100, j / 10, false);
        f.setTextViewText(2131625309, j / 10 + "%");
        f.setTextViewText(2131625310, j.c(paramLong2) + "/" + j.c(paramLong1));
        break;
      }
    }
    if (paramLong1 == 0L) {}
    for (;;)
    {
      j = k;
      e.c(j / 10);
      e.c(j.c(paramLong2) + "/" + j.c(paramLong1));
      break;
      k = (int)(paramLong2 * 1000L / paramLong1);
    }
  }
  
  public void b()
  {
    switch (a)
    {
    default: 
      return;
    case 2: 
      a(2131232245);
    }
    for (;;)
    {
      e.b(true);
      e.a(false);
      e.c();
      return;
      e.b(d.getResources().getText(2131232245));
      e.c("");
      e.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.notification.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */