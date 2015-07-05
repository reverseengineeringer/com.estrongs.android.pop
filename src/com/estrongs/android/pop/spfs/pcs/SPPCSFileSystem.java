package com.estrongs.android.pop.spfs.pcs;

import com.estrongs.android.pop.netfs.INetFileSystem;
import com.estrongs.android.pop.netfs.INetRefreshCallback;
import com.estrongs.android.pop.netfs.NetFileInfo;
import com.estrongs.android.pop.spfs.ISPFileSystem;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.util.TypedMap;
import com.estrongs.fs.impl.j.b;
import com.estrongs.fs.impl.pcs.PcsFileSystem;
import com.gmail.yuyang226.flickr.a;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class SPPCSFileSystem
  implements ISPFileSystem
{
  private String replacePath(String paramString)
  {
    return paramString;
  }
  
  public boolean addServer(String paramString1, String paramString2)
  {
    return false;
  }
  
  public boolean copyFile(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return false;
  }
  
  public boolean createFile(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    return false;
  }
  
  public void delServer(String paramString1, String paramString2) {}
  
  public boolean deleteFile(String paramString1, String paramString2, String paramString3)
  {
    paramString3 = replacePath(paramString3);
    return b.a("pcs").deleteFile(paramString1, paramString2, paramString3);
  }
  
  public boolean exists(String paramString1, String paramString2, String paramString3)
  {
    paramString3 = replacePath(paramString3);
    return b.a("pcs").exists(paramString1, paramString2, paramString3, false);
  }
  
  public List<a> getAccessTokenParameters(String paramString1, String paramString2, String paramString3)
  {
    return null;
  }
  
  public URL getAccessTokenUrl()
  {
    return null;
  }
  
  public SPFileInfo getFileInfo(String paramString1, String paramString2, String paramString3)
  {
    paramString3 = replacePath(paramString3);
    paramString1 = b.a("pcs").getFileInfo(paramString1, paramString2, paramString3, false);
    if (paramString1 == null) {
      return null;
    }
    paramString2 = new SPFileInfo();
    path = path;
    name = name;
    size = size;
    isDirectory = isDirectory;
    lastModifiedTime = lastModifiedTime;
    return paramString2;
  }
  
  public InputStream getFileInputStream(String paramString1, String paramString2, String paramString3, long paramLong)
  {
    paramString3 = replacePath(paramString3);
    return b.a("pcs").getFileInputStream(paramString1, paramString2, paramString3, paramLong);
  }
  
  public long getFileLength(String paramString1, String paramString2, String paramString3)
  {
    return 0L;
  }
  
  public OutputStream getFileOutputStream(String paramString1, String paramString2, String paramString3, long paramLong, TypedMap paramTypedMap)
  {
    paramTypedMap = replacePath(paramString3);
    paramString3 = paramTypedMap;
    if (!paramTypedMap.startsWith("/pictures")) {
      paramString3 = "/pictures" + paramTypedMap;
    }
    return b.a("pcs").getFileOutputStream(paramString1, paramString2, paramString3, paramLong, false);
  }
  
  public String getLastErrorString(String paramString)
  {
    return null;
  }
  
  public String getOAuthLoginUrl(String paramString)
  {
    return null;
  }
  
  public String getOAuthVersion()
  {
    return null;
  }
  
  public String getPhotoExtension(String paramString1, String paramString2, String paramString3)
  {
    return "";
  }
  
  public boolean getRegisterPrepareInfo(Object[] paramArrayOfObject)
  {
    return false;
  }
  
  public URL getRequestTokenUrl()
  {
    return null;
  }
  
  public InputStream getThumbnail(String paramString1, String paramString2, String paramString3)
  {
    paramString3 = replacePath(paramString3);
    return ((PcsFileSystem)b.a("pcs")).a(paramString1, paramString2, paramString3, 228, 228);
  }
  
  public String getUserLoginName(String paramString)
  {
    return null;
  }
  
  public boolean isDir(String paramString1, String paramString2, String paramString3)
  {
    return false;
  }
  
  public Map<String, SPFileInfo> listFiles(String paramString1, String paramString2, String paramString3, boolean paramBoolean, INetRefreshCallback paramINetRefreshCallback, TypedMap paramTypedMap)
  {
    Object localObject = b.a("pcs");
    paramString3 = replacePath(paramString3);
    int i = paramTypedMap.getInt("per_page", 10L);
    int j = paramTypedMap.getInt("page", 1L);
    paramTypedMap.put("limit", Integer.valueOf(i));
    paramTypedMap.put("offset", Integer.valueOf(i * (j - 1)));
    paramString1 = ((INetFileSystem)localObject).listFiles(paramString1, paramString2, paramString3, paramBoolean, paramINetRefreshCallback, paramTypedMap);
    if (paramString1 == null) {
      return null;
    }
    paramString2 = new LinkedHashMap();
    paramString3 = paramString1.keySet().iterator();
    while (paramString3.hasNext())
    {
      paramINetRefreshCallback = (String)paramString3.next();
      paramTypedMap = (NetFileInfo)paramString1.get(paramINetRefreshCallback);
      localObject = new SPFileInfo();
      path = path;
      name = name;
      lastModifiedTime = lastModifiedTime;
      readable = readable;
      writable = writable;
      hidden = hidden;
      isDirectory = isDirectory;
      size = size;
      folder_type = folder_type;
      md5_block_size = md5_block_size;
      md5s = md5s;
      paramString2.put(paramINetRefreshCallback, localObject);
    }
    return paramString2;
  }
  
  public boolean mkDirs(String paramString1, String paramString2, String paramString3)
  {
    return false;
  }
  
  public boolean moveFile(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return false;
  }
  
  public int register(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    return 0;
  }
  
  public boolean renameFile(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    paramString3 = replacePath(paramString3);
    paramString4 = replacePath(paramString4);
    return b.a("pcs").renameFile(paramString1, paramString2, paramString3, paramString4);
  }
  
  public void saveUserAndToken(String paramString1, String paramString2, String paramString3, String paramString4) {}
  
  public void setConfigDir(String paramString1, String paramString2) {}
  
  public void setPrivateContent(String paramString1, String paramString2, Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.pcs.SPPCSFileSystem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */