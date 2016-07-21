package com.flurry.sdk;

class iy$1
  implements kn.a<byte[], Void>
{
  iy$1(iy paramiy, String paramString1, String paramString2) {}
  
  public void a(kn<byte[], Void> paramkn, Void paramVoid)
  {
    int i = paramkn.h();
    if (i > 0)
    {
      kg.e(iy.c(), "Analytics report sent.");
      kg.a(3, iy.c(), "FlurryDataSender: report " + a + " sent. HTTP response: " + i);
      if ((kg.c() <= 3) && (kg.d())) {
        js.a().a(new iy.1.1(this, i));
      }
      c.a(a, b, i);
      iy.a(c);
      return;
    }
    iy.a(c, a, b);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.iy.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */