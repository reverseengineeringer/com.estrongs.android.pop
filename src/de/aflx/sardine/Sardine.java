package de.aflx.sardine;

import de.aflx.sardine.impl.io.ConsumingInputStream;
import de.aflx.sardine.util.QName;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpEntity;

public abstract interface Sardine
{
  public abstract void abort();
  
  public abstract void copy(String paramString1, String paramString2);
  
  public abstract void createDirectory(String paramString);
  
  public abstract void delete(String paramString);
  
  public abstract void destroy();
  
  public abstract void disableCompression();
  
  public abstract void disablePreemptiveAuthentication();
  
  public abstract void enableCompression();
  
  public abstract void enablePreemptiveAuthentication(String paramString);
  
  public abstract boolean exists(String paramString);
  
  public abstract ConsumingInputStream get(String paramString);
  
  public abstract ConsumingInputStream get(String paramString, Map<String, String> paramMap);
  
  @Deprecated
  public abstract List<DavResource> getResources(String paramString);
  
  public abstract boolean isAborted();
  
  public abstract List<DavResource> list(String paramString);
  
  public abstract List<DavResource> list(String paramString, int paramInt);
  
  public abstract String lock(String paramString);
  
  public abstract void move(String paramString1, String paramString2);
  
  public abstract List<DavResource> patch(String paramString, Map<QName, String> paramMap);
  
  public abstract List<DavResource> patch(String paramString, Map<QName, String> paramMap, List<QName> paramList);
  
  public abstract void put(String paramString, InputStream paramInputStream);
  
  public abstract void put(String paramString1, InputStream paramInputStream, String paramString2);
  
  public abstract void put(String paramString1, InputStream paramInputStream, String paramString2, boolean paramBoolean);
  
  public abstract void put(String paramString, InputStream paramInputStream, Map<String, String> paramMap);
  
  public abstract void put(String paramString1, HttpEntity paramHttpEntity, String paramString2, boolean paramBoolean);
  
  public abstract void put(String paramString, byte[] paramArrayOfByte);
  
  public abstract void put(String paramString1, byte[] paramArrayOfByte, String paramString2);
  
  public abstract void setCredentials(String paramString1, String paramString2);
  
  public abstract void setCredentials(String paramString1, String paramString2, String paramString3, String paramString4);
  
  @Deprecated
  public abstract void setCustomProps(String paramString, Map<String, String> paramMap, List<String> paramList);
  
  public abstract void unlock(String paramString1, String paramString2);
}

/* Location:
 * Qualified Name:     de.aflx.sardine.Sardine
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */