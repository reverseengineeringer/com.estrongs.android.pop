package jcifs.smb;

import java.util.Map;

public class DfsReferral
  extends SmbException
{
  public long expiration;
  String key = null;
  public String link;
  Map map;
  DfsReferral next = this;
  public String path;
  public int pathConsumed;
  public boolean resolveHashes;
  public String server;
  public String share;
  public long ttl;
  
  void append(DfsReferral paramDfsReferral)
  {
    next = next;
    next = paramDfsReferral;
  }
  
  public String toString()
  {
    return "DfsReferral[pathConsumed=" + pathConsumed + ",server=" + server + ",share=" + share + ",link=" + link + ",path=" + path + ",ttl=" + ttl + ",expiration=" + expiration + ",resolveHashes=" + resolveHashes + "]";
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.DfsReferral
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */