package com.estrongs.android.pop.netfs;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

public abstract interface INetFileSystem
{
  public static final String LIST_FINISHED = "loadFinished";
  public static final String LIST_LIMIT = "limit";
  public static final String LIST_OFFSET = "offset";
  public static final int REG_ERROR = 100;
  public static final int REG_NAME_EXISTED = 2;
  public static final int REG_SUCCESS = 0;
  public static final int REG_WRONG_VERF_CODE = 1;
  
  public abstract boolean addServer(String paramString1, String paramString2);
  
  public abstract boolean copyFile(String paramString1, String paramString2, String paramString3, String paramString4);
  
  public abstract boolean createFile(String paramString1, String paramString2, String paramString3, boolean paramBoolean);
  
  public abstract String createShare(String paramString1, String paramString2, String paramString3, HashMap<String, Object> paramHashMap);
  
  public abstract void delServer(String paramString1, String paramString2);
  
  public abstract boolean deleteFile(String paramString1, String paramString2, String paramString3);
  
  public abstract boolean exists(String paramString1, String paramString2, String paramString3, boolean paramBoolean);
  
  public abstract NetFileInfo getFileInfo(String paramString1, String paramString2, String paramString3, boolean paramBoolean);
  
  public abstract InputStream getFileInputStream(String paramString1, String paramString2, String paramString3, long paramLong);
  
  public abstract long getFileLength(String paramString1, String paramString2, String paramString3);
  
  public abstract OutputStream getFileOutputStream(String paramString1, String paramString2, String paramString3, long paramLong, boolean paramBoolean);
  
  public abstract String getLastErrorString(String paramString);
  
  public abstract long getLeftSpaceSize(String paramString1, String paramString2, String paramString3);
  
  public abstract String getOAuthLoginUrl();
  
  public abstract boolean getRegisterPrepareInfo(Object[] paramArrayOfObject);
  
  public abstract InputStream getThumbnail(String paramString1, String paramString2, String paramString3);
  
  public abstract String getUserLoginName(String paramString);
  
  public abstract boolean isDir(String paramString1, String paramString2, String paramString3);
  
  public abstract boolean isPagingSupported();
  
  public abstract Map<String, NetFileInfo> listFiles(String paramString1, String paramString2, String paramString3, boolean paramBoolean, INetRefreshCallback paramINetRefreshCallback, HashMap<String, Object> paramHashMap);
  
  public abstract boolean mkDirs(String paramString1, String paramString2, String paramString3);
  
  public abstract boolean moveFile(String paramString1, String paramString2, String paramString3, String paramString4);
  
  public abstract int register(String paramString1, String paramString2, Object[] paramArrayOfObject);
  
  public abstract boolean removeShare(String paramString1, String paramString2, String paramString3, HashMap<String, Object> paramHashMap);
  
  public abstract boolean renameFile(String paramString1, String paramString2, String paramString3, String paramString4);
  
  public abstract void setConfigDir(String paramString1, String paramString2);
  
  public abstract void setPrivateContent(String paramString1, String paramString2, Object paramObject);
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.netfs.INetFileSystem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */