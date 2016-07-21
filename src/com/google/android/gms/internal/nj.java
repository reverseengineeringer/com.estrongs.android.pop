package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;

@me
final class nj
{
  private long a = -1L;
  private long b = -1L;
  
  public long a()
  {
    return b;
  }
  
  public void b()
  {
    b = SystemClock.elapsedRealtime();
  }
  
  public void c()
  {
    a = SystemClock.elapsedRealtime();
  }
  
  public Bundle d()
  {
    Bundle localBundle = new Bundle();
    localBundle.putLong("topen", a);
    localBundle.putLong("tclose", b);
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */