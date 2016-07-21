package com.flurry.sdk;

import java.util.ArrayList;

public class ao<K>
  extends ArrayList<K>
{
  private int a;
  
  public ao(int paramInt)
  {
    a = paramInt;
  }
  
  public boolean add(K paramK)
  {
    if (contains(paramK)) {
      remove(paramK);
    }
    boolean bool = super.add(paramK);
    if (size() > a) {
      removeRange(0, size() - a - 1);
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */