package com.estrongs.fs;

import com.estrongs.android.scanner.f;

public class m
  extends k
{
  public Boolean a(f paramf)
  {
    paramf.b("Download");
    return Boolean.valueOf(true);
  }
  
  public boolean a(h paramh)
  {
    return paramh.getAbsolutePath().toLowerCase().contains("/download/");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */