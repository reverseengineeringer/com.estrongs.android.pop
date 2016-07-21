package com.google.android.gms.games.event;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.e;
import com.google.android.gms.games.Player;

public abstract interface Event
  extends Parcelable, e<Event>
{
  public abstract String b();
  
  public abstract String c();
  
  public abstract String d();
  
  public abstract Uri e();
  
  @Deprecated
  public abstract String f();
  
  public abstract Player g();
  
  public abstract long h();
  
  public abstract String i();
  
  public abstract boolean j();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.event.Event
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */