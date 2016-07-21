package com.flurry.sdk;

import java.util.List;

class io$2
  implements kn.a<byte[], Void>
{
  io$2(io paramio) {}
  
  public void a(kn<byte[], Void> paramkn, Void paramVoid)
  {
    int i = paramkn.h();
    if (i > 0)
    {
      if ((i >= 200) && (i < 300))
      {
        kg.a(3, io.d(), "Pulse logging report sent successfully HTTP response:" + i);
        io.a(a).clear();
        io.b(a).a(io.a(a));
        return;
      }
      kg.a(3, io.d(), "Pulse logging report sent unsuccessfully, HTTP response:" + i);
      return;
    }
    kg.e(io.d(), "Server Error: " + i);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.io.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */