package jcifs.netbios;

final class NbtAddress$CacheEntry
{
  NbtAddress address;
  long expiration;
  Name hostName;
  
  NbtAddress$CacheEntry(Name paramName, NbtAddress paramNbtAddress, long paramLong)
  {
    hostName = paramName;
    address = paramNbtAddress;
    expiration = paramLong;
  }
}

/* Location:
 * Qualified Name:     jcifs.netbios.NbtAddress.CacheEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */