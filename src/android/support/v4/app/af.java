package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import java.util.ArrayList;

public class af
{
  Context a;
  CharSequence b;
  CharSequence c;
  PendingIntent d;
  PendingIntent e;
  RemoteViews f;
  Bitmap g;
  CharSequence h;
  int i;
  int j;
  boolean k;
  am l;
  CharSequence m;
  int n;
  int o;
  boolean p;
  ArrayList<ac> q = new ArrayList();
  Notification r = new Notification();
  
  public af(Context paramContext)
  {
    a = paramContext;
    r.when = System.currentTimeMillis();
    r.audioStreamType = -1;
    j = 0;
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      localNotification = r;
      flags |= paramInt;
      return;
    }
    Notification localNotification = r;
    flags &= (paramInt ^ 0xFFFFFFFF);
  }
  
  @Deprecated
  public Notification a()
  {
    return ab.a().a(this);
  }
  
  public af a(int paramInt)
  {
    r.icon = paramInt;
    return this;
  }
  
  public af a(PendingIntent paramPendingIntent)
  {
    d = paramPendingIntent;
    return this;
  }
  
  public af a(RemoteViews paramRemoteViews)
  {
    r.contentView = paramRemoteViews;
    return this;
  }
  
  public af a(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    return this;
  }
  
  public af a(boolean paramBoolean)
  {
    a(2, paramBoolean);
    return this;
  }
  
  public af b(PendingIntent paramPendingIntent)
  {
    r.deleteIntent = paramPendingIntent;
    return this;
  }
  
  public af b(CharSequence paramCharSequence)
  {
    c = paramCharSequence;
    return this;
  }
  
  public af c(CharSequence paramCharSequence)
  {
    r.tickerText = paramCharSequence;
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */