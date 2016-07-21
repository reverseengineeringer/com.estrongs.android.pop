package com.estrongs.android.ui.topclassify;

import com.estrongs.fs.h;
import com.estrongs.fs.x;
import java.util.List;

public class c
  extends x
{
  private int a;
  private int b;
  private List<h> c;
  private String d;
  
  public c(String paramString)
  {
    super(paramString);
  }
  
  public c(String paramString, int paramInt)
  {
    this(paramString);
    a = paramInt;
  }
  
  public int a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    b = paramInt;
  }
  
  public void a(String paramString)
  {
    d = paramString;
  }
  
  public void a(List<h> paramList)
  {
    c = paramList;
  }
  
  public int b()
  {
    return a;
  }
  
  public List<h> c()
  {
    return c;
  }
  
  protected boolean canDelete()
  {
    return false;
  }
  
  protected boolean canWrite()
  {
    return false;
  }
  
  public String d()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.topclassify.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */