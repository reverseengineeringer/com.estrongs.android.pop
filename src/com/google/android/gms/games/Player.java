package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.e;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;

public abstract interface Player
  extends Parcelable, e<Player>
{
  public abstract String b();
  
  public abstract String c();
  
  public abstract boolean d();
  
  public abstract Uri e();
  
  @Deprecated
  public abstract String f();
  
  public abstract Uri g();
  
  @Deprecated
  public abstract String h();
  
  public abstract long i();
  
  public abstract long j();
  
  public abstract int k();
  
  public abstract boolean l();
  
  public abstract String m();
  
  public abstract PlayerLevelInfo n();
  
  public abstract MostRecentGameInfo o();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.Player
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */