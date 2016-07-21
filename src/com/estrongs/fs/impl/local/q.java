package com.estrongs.fs.impl.local;

import android.net.LocalSocket;

class q
{
  private String a = "";
  private LocalSocket b = null;
  private boolean c = false;
  private boolean d = false;
  private int e = 0;
  private byte[] f = null;
  private int g = 0;
  private int h = -1;
  private long i = 0L;
  private int j = 0;
  private long k = -1L;
  
  q(String paramString)
  {
    a = paramString;
  }
  
  void a(int paramInt)
  {
    h = paramInt;
    try
    {
      notify();
      return;
    }
    finally {}
  }
  
  void a(long paramLong)
  {
    k = paramLong;
    try
    {
      notify();
      return;
    }
    finally {}
  }
  
  void a(boolean paramBoolean)
  {
    d = paramBoolean;
    try
    {
      notify();
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */