package com.dianxinos.library.notify.download;

import java.util.LinkedList;
import java.util.List;

public final class i
{
  public String a;
  public String b;
  public String c;
  public String d;
  public List<HttpHeader> e = new LinkedList();
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("notify id: ").append(a);
    localStringBuilder.append(", uri: ").append(b);
    localStringBuilder.append(", allowedNetworkTypes: ").append(c);
    localStringBuilder.append(", extras: ").append(d);
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.download.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */