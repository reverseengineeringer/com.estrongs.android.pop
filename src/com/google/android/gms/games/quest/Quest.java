package com.google.android.gms.games.quest;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.e;
import com.google.android.gms.games.Game;
import java.util.List;

public abstract interface Quest
  extends Parcelable, e<Quest>
{
  public static final int[] a = { 1, 2, 3, 4, 6, 5 };
  public static final String[] b = { Integer.toString(1), Integer.toString(2), Integer.toString(3) };
  
  public abstract String b();
  
  public abstract String c();
  
  public abstract String d();
  
  public abstract Uri e();
  
  @Deprecated
  public abstract String f();
  
  public abstract Uri g();
  
  @Deprecated
  public abstract String h();
  
  public abstract List<Milestone> i();
  
  public abstract Game j();
  
  public abstract int k();
  
  public abstract int l();
  
  public abstract long m();
  
  public abstract long n();
  
  public abstract long o();
  
  public abstract long p();
  
  public abstract long q();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.quest.Quest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */