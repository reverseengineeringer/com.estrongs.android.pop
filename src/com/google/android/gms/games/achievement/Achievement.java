package com.google.android.gms.games.achievement;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.e;
import com.google.android.gms.games.Player;

public abstract interface Achievement
  extends Parcelable, e<Achievement>
{
  public abstract String b();
  
  public abstract int c();
  
  public abstract String d();
  
  public abstract String e();
  
  public abstract Uri f();
  
  @Deprecated
  public abstract String g();
  
  public abstract Uri h();
  
  @Deprecated
  public abstract String i();
  
  public abstract int j();
  
  public abstract String k();
  
  public abstract Player l();
  
  public abstract int m();
  
  public abstract int n();
  
  public abstract String o();
  
  public abstract long p();
  
  public abstract long q();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.achievement.Achievement
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */