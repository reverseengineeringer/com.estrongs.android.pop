package com.estrongs.android.pop.view.utils;

import android.graphics.drawable.Drawable;
import java.text.Collator;

public class t
  implements Comparable<t>
{
  public Drawable a;
  public String b;
  public String c;
  public String d;
  public String e;
  private final Collator f = Collator.getInstance();
  
  public int a(t paramt)
  {
    int j = f.compare(b, b);
    int i = j;
    if (j == 0) {
      i = f.compare(c, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */