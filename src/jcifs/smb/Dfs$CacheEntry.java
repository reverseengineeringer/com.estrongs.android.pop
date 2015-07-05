package jcifs.smb;

import java.util.HashMap;

class Dfs$CacheEntry
{
  long expiration;
  HashMap map;
  
  Dfs$CacheEntry(long paramLong)
  {
    long l = paramLong;
    if (paramLong == 0L) {
      l = Dfs.TTL;
    }
    expiration = (System.currentTimeMillis() + 1000L * l);
    map = new HashMap();
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.Dfs.CacheEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */