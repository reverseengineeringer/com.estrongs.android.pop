package com.facebook.ads.internal.dto;

import java.util.ArrayList;
import java.util.List;

public class c
{
  private List<a> a = new ArrayList();
  private int b = 0;
  private d c;
  
  public d a()
  {
    return c;
  }
  
  public void a(a parama)
  {
    a.add(parama);
  }
  
  public void a(d paramd)
  {
    c = paramd;
  }
  
  public int b()
  {
    return a.size();
  }
  
  public a c()
  {
    if (b < a.size())
    {
      b += 1;
      return (a)a.get(b - 1);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.dto.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */