package com.google.android.gms.games.multiplayer;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.e;
import com.google.android.gms.games.Player;

public abstract interface Participant
  extends Parcelable, e<Participant>
{
  public abstract int b();
  
  public abstract String c();
  
  public abstract int d();
  
  public abstract boolean e();
  
  public abstract String f();
  
  public abstract Uri g();
  
  @Deprecated
  public abstract String h();
  
  public abstract Uri i();
  
  @Deprecated
  public abstract String j();
  
  public abstract String k();
  
  public abstract Player l();
  
  public abstract ParticipantResult m();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.Participant
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */