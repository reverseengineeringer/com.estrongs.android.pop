package com.flurry.sdk;

import java.util.Set;

class kt$7
  extends ly
{
  kt$7(kt paramkt, String paramString1, String paramString2) {}
  
  public void a()
  {
    if (!c.c.a(a, b)) {
      kg.a(6, c.a, "Internal error. Block wasn't deleted with id = " + a);
    }
    if (!c.b.remove(a)) {
      kg.a(6, c.a, "Internal error. Block with id = " + a + " was not in progress state");
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.kt.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */