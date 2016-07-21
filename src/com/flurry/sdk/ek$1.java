package com.flurry.sdk;

class ek$1
  implements kn.a<byte[], String>
{
  ek$1(ek paramek, ek.a parama) {}
  
  public void a(kn<byte[], String> paramkn, String paramString)
  {
    if (paramString != null)
    {
      int i = eb.a(paramString);
      if (i == 201)
      {
        paramkn = eb.c(paramString);
        a.a(paramkn);
        return;
      }
      a.a(i, paramString);
      return;
    }
    a.a(-1, "Post failed");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ek.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */