package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.e;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.Player;

public abstract interface SnapshotMetadata
  extends Parcelable, e<SnapshotMetadata>
{
  public abstract Game b();
  
  public abstract Player c();
  
  public abstract String d();
  
  public abstract Uri e();
  
  @Deprecated
  public abstract String f();
  
  public abstract float g();
  
  public abstract String h();
  
  public abstract String i();
  
  public abstract String j();
  
  public abstract long k();
  
  public abstract long l();
  
  public abstract boolean m();
  
  public abstract long n();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.snapshot.SnapshotMetadata
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */