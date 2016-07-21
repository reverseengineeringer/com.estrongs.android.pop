package com.estrongs.fs.util.a;

import com.estrongs.fs.h;
import com.estrongs.fs.w;
import java.text.Collator;
import java.util.Comparator;

public abstract class a
  implements Comparator<h>
{
  protected final Collator b = Collator.getInstance();
  protected int c = 1;
  
  public a(boolean paramBoolean)
  {
    a(paramBoolean);
    b.setStrength(0);
  }
  
  protected int a(int paramInt1, int paramInt2)
  {
    return (paramInt1 - paramInt2) * c;
  }
  
  protected int a(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null)) {
      return b.compare(paramString1, paramString2) * c;
    }
    if ((paramString1 == null) && (paramString2 != null)) {
      return c * -1;
    }
    if ((paramString1 != null) && (paramString2 == null)) {
      return c * 1;
    }
    return 0;
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = -1)
    {
      c = i;
      return;
    }
  }
  
  public boolean a()
  {
    return c == 1;
  }
  
  protected boolean a(h paramh)
  {
    return paramh.getFileType().a();
  }
  
  protected String b(h paramh)
  {
    if (paramh.getName() != null) {
      return paramh.getName().toLowerCase();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.util.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */