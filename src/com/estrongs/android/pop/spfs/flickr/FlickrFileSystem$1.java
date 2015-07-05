package com.estrongs.android.pop.spfs.flickr;

import java.text.SimpleDateFormat;

final class FlickrFileSystem$1
  extends ThreadLocal<SimpleDateFormat>
{
  protected SimpleDateFormat initialValue()
  {
    try
    {
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
      return localSimpleDateFormat;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.flickr.FlickrFileSystem.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */