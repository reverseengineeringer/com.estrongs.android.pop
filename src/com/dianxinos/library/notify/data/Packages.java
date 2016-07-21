package com.dianxinos.library.notify.data;

import java.util.LinkedList;

public class Packages
  extends LinkedList<PackageItem>
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
      if (((PackageItem)get(i)).doCheck()) {
        return true;
      }
      i += 1;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.data.Packages
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */