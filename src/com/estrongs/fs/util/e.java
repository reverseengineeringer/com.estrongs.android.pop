package com.estrongs.fs.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

final class e
  extends ThreadLocal<DateFormat>
{
  protected DateFormat a()
  {
    return new SimpleDateFormat("yyyyMMddHHmmssSSS");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.util.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */