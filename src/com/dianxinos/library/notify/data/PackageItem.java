package com.dianxinos.library.notify.data;

import java.util.LinkedList;

public class PackageItem
  extends LinkedList<l>
{
  public boolean doCheck()
  {
    if (isEmpty()) {
      return true;
    }
    int j = size();
    int i = 0;
    while (i < j)
    {
      if (!((l)get(i)).a()) {
        return false;
      }
      i += 1;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.data.PackageItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */