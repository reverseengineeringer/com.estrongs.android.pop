package com.flurry.sdk;

import java.util.Random;

class eo$a
{
  private final Random a = new Random();
  
  Long a()
  {
    return Long.valueOf(System.currentTimeMillis());
  }
  
  Integer b()
  {
    return Integer.valueOf(a.nextInt());
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.eo.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */