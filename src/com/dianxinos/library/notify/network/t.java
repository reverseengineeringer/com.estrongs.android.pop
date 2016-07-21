package com.dianxinos.library.notify.network;

import java.net.HttpURLConnection;

class t
  extends RequestBase
{
  public t(n paramn, String paramString, k paramk, long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, l paraml)
  {
    super(paramn, paramString, paramk, paramLong1, paramLong2, paramInt1, paramInt2, paramInt3, paraml);
    b = "GET";
    s = "GET";
  }
  
  public void b(HttpURLConnection paramHttpURLConnection)
  {
    paramHttpURLConnection.setRequestMethod("GET");
    paramHttpURLConnection.setDoInput(true);
    paramHttpURLConnection.setDoOutput(false);
  }
  
  public void c(HttpURLConnection paramHttpURLConnection) {}
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.network.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */