package com.jcraft.jsch;

class ChannelSftp$RequestQueue
{
  ChannelSftp.RequestQueue.Request[] a = null;
  int b;
  int c;
  
  ChannelSftp$RequestQueue(ChannelSftp paramChannelSftp, int paramInt)
  {
    a = new ChannelSftp.RequestQueue.Request[paramInt];
    paramInt = 0;
    for (;;)
    {
      if (paramInt >= a.length)
      {
        a();
        return;
      }
      a[paramInt] = new ChannelSftp.RequestQueue.Request(this);
      paramInt += 1;
    }
  }
  
  ChannelSftp.RequestQueue.Request a(int paramInt)
  {
    int j = 0;
    c -= 1;
    int i = b;
    b += 1;
    if (b == a.length) {
      b = 0;
    }
    if (a[i].a != paramInt)
    {
      long l = d();
      i = 0;
      for (;;)
      {
        if (i >= a.length) {}
        for (i = j;; i = 1)
        {
          if (i == 0) {
            break label126;
          }
          throw new ChannelSftp.RequestQueue.OutOfOrderException(this, l);
          if (a[i].a != paramInt) {
            break;
          }
          a[i].a = 0;
        }
        i += 1;
      }
      label126:
      throw new SftpException(4, "RequestQueue: unknown request id " + paramInt);
    }
    a[i].a = 0;
    return a[i];
  }
  
  void a()
  {
    c = 0;
    b = 0;
  }
  
  void a(int paramInt1, long paramLong, int paramInt2)
  {
    if (c == 0) {
      b = 0;
    }
    int j = b + c;
    int i = j;
    if (j >= a.length) {
      i = j - a.length;
    }
    a[i].a = paramInt1;
    a[i].b = paramLong;
    a[i].c = paramInt2;
    c += 1;
  }
  
  void a(ChannelSftp.Header paramHeader, Buffer paramBuffer)
  {
    int k = c;
    int i = 0;
    if (i >= k)
    {
      a();
      return;
    }
    paramHeader = ChannelSftp.a(d, paramBuffer, paramHeader);
    int m = a;
    int j = 0;
    for (;;)
    {
      if (j >= a.length) {}
      for (;;)
      {
        ChannelSftp.a(d, m);
        i += 1;
        break;
        if (a[j].a != c) {
          break label96;
        }
        a[j].a = 0;
      }
      label96:
      j += 1;
    }
  }
  
  int b()
  {
    return c;
  }
  
  int c()
  {
    return a.length;
  }
  
  long d()
  {
    long l1 = Long.MAX_VALUE;
    int i = 0;
    if (i >= a.length) {
      return l1;
    }
    long l2;
    if (a[i].a == 0) {
      l2 = l1;
    }
    for (;;)
    {
      i += 1;
      l1 = l2;
      break;
      l2 = l1;
      if (l1 > a[i].b) {
        l2 = a[i].b;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ChannelSftp.RequestQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */