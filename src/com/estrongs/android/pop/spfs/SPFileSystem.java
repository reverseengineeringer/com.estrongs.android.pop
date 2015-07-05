package com.estrongs.android.pop.spfs;

import android.content.Context;
import android.content.ContextWrapper;
import android.util.Log;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.netfs.NetFsException.ERROR_CODE;
import com.estrongs.android.pop.spfs.note.IPhotoInfo;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.bd;
import com.estrongs.fs.c;
import com.estrongs.fs.i;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class SPFileSystem
{
  private static final String TAG = "SPFileSystem";
  private static HashMap<String, ISPFileSystem> netfs;
  private static HashMap<String, String> netfsName;
  private static String netfs_cfg_path = null;
  private static String private_cfg_path = null;
  
  static
  {
    netfs = new HashMap();
    netfsName = new HashMap();
    netfsName.put("Flickr", "com.estrongs.android.pop.spfs.flickr.FlickrFileSystem");
    netfsName.put("Instagram", "com.estrongs.android.pop.spfs.instagram.InstagramFileSystem");
    netfsName.put("Facebook", "com.estrongs.android.pop.spfs.facebook.FacebookFileSystem");
    netfsName.put("pcs", "com.estrongs.android.pop.spfs.pcs.SPPCSFileSystem");
  }
  
  public static String addComment(String paramString1, String paramString2)
  {
    try
    {
      ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString1));
      if (localISPFileSystem == null) {
        return null;
      }
      String str1 = am.aj(paramString1);
      String str2 = am.am(paramString1);
      paramString1 = getRealPathFromPath(paramString1);
      paramString1 = ((IPhotoInfo)localISPFileSystem).addComment(str1, str2, paramString1, paramString2);
      return paramString1;
    }
    catch (NetFsException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
  }
  
  public static com.gmail.yuyang226.flickr.a.a addNote(String paramString, com.gmail.yuyang226.flickr.a.a parama)
  {
    try
    {
      ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
      if (localISPFileSystem == null) {
        return null;
      }
      String str1 = am.aj(paramString);
      String str2 = am.am(paramString);
      paramString = getRealPathFromPath(paramString);
      paramString = ((IPhotoInfo)localISPFileSystem).addNote(str1, str2, paramString, parama);
      return paramString;
    }
    catch (NetFsException paramString)
    {
      throw new PhotoInfoException(paramString);
    }
  }
  
  public static void addPhoto(String paramString1, String paramString2)
  {
    try
    {
      ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString1));
      if (localISPFileSystem == null) {
        return;
      }
      String str1 = am.aj(paramString1);
      String str2 = am.am(paramString1);
      paramString1 = getRealPathFromPath(paramString1);
      ((IPhotoInfo)localISPFileSystem).addPhoto(str1, str2, paramString1, paramString2);
      return;
    }
    catch (NetFsException paramString1)
    {
      throw new AlbumException(paramString1);
    }
  }
  
  public static boolean authenticate(String paramString)
  {
    ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
    if (localISPFileSystem == null) {
      return false;
    }
    String str1 = am.aj(paramString);
    String str2 = am.am(paramString);
    getRealPathFromPath(paramString);
    return localISPFileSystem.addServer(str1, str2);
  }
  
  private static c convertToFileInfo(SPFileInfo paramSPFileInfo)
  {
    c localc = new c(path);
    o = name;
    d = isDirectory;
    k = readable;
    l = writable;
    m = hidden;
    j = lastModifiedTime;
    e = size;
    return localc;
  }
  
  public static boolean copyFile(String paramString1, String paramString2)
  {
    ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString1));
    if (localISPFileSystem == null) {
      return false;
    }
    return localISPFileSystem.copyFile(am.aj(paramString1), am.am(paramString1), getRealPathFromPath(paramString1), getRealPathFromPath(paramString2));
  }
  
  public static Album createAlbum(String paramString1, String paramString2, String paramString3)
  {
    ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString3));
    if (localISPFileSystem == null) {
      return null;
    }
    String str = am.aj(paramString3);
    return ((IPhotoInfo)localISPFileSystem).createAlbum(str, paramString1, paramString2, com.estrongs.fs.a.a.b(paramString3));
  }
  
  public static boolean createFile(String paramString, boolean paramBoolean)
  {
    ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
    if (localISPFileSystem == null) {
      return false;
    }
    return localISPFileSystem.createFile(am.aj(paramString), am.am(paramString), getRealPathFromPath(paramString), paramBoolean);
  }
  
  public static boolean createThumbnail(Context paramContext, String paramString)
  {
    try
    {
      ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
      if (localISPFileSystem == null) {
        return false;
      }
      String str1 = am.aj(paramString);
      String str2 = am.am(paramString);
      String str3 = getRealPathFromPath(paramString);
      paramContext = com.estrongs.android.d.h.a((ContextWrapper)paramContext);
      if (bc.c(paramString)) {
        paramContext.a(paramString, localISPFileSystem.getThumbnail(str1, str2, str3));
      }
      return true;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return false;
  }
  
  public static void delServer(String paramString)
  {
    try
    {
      ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
      if (localISPFileSystem == null) {
        return;
      }
      localISPFileSystem.delServer(am.aj(paramString), am.am(paramString));
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public static void deleteComment(String paramString1, String paramString2)
  {
    try
    {
      ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString1));
      if (localISPFileSystem == null) {
        return;
      }
      String str1 = am.aj(paramString1);
      String str2 = am.am(paramString1);
      paramString1 = getRealPathFromPath(paramString1);
      ((IPhotoInfo)localISPFileSystem).deleteComment(str1, str2, paramString1, paramString2);
      return;
    }
    catch (NetFsException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
  }
  
  public static boolean deleteFile(String paramString, long paramLong)
  {
    ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
    if (localISPFileSystem == null) {
      return false;
    }
    return localISPFileSystem.deleteFile(am.aj(paramString), am.am(paramString), getRealPathFromPath(paramString));
  }
  
  public static void deleteNote(String paramString1, String paramString2)
  {
    try
    {
      ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString1));
      if (localISPFileSystem == null) {
        return;
      }
      String str1 = am.aj(paramString1);
      String str2 = am.am(paramString1);
      getRealPathFromPath(paramString1);
      ((IPhotoInfo)localISPFileSystem).deleteNote(str1, str2, paramString2);
      return;
    }
    catch (NetFsException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
  }
  
  public static void editComment(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString1));
      if (localISPFileSystem == null) {
        return;
      }
      String str1 = am.aj(paramString1);
      String str2 = am.am(paramString1);
      getRealPathFromPath(paramString1);
      ((IPhotoInfo)localISPFileSystem).editComment(str1, str2, paramString2, paramString3);
      return;
    }
    catch (NetFsException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
  }
  
  public static void editNote(String paramString, com.gmail.yuyang226.flickr.a.a parama)
  {
    try
    {
      ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
      if (localISPFileSystem == null) {
        return;
      }
      String str1 = am.aj(paramString);
      String str2 = am.am(paramString);
      getRealPathFromPath(paramString);
      ((IPhotoInfo)localISPFileSystem).editNote(str1, str2, parama);
      return;
    }
    catch (NetFsException paramString)
    {
      throw new PhotoInfoException(paramString);
    }
  }
  
  public static boolean exists(String paramString)
  {
    ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
    if (localISPFileSystem == null) {
      return false;
    }
    return localISPFileSystem.exists(am.aj(paramString), am.am(paramString), getRealPathFromPath(paramString));
  }
  
  public static List<com.gmail.yuyang226.flickr.a> getAccessTokenParameters(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      paramString1 = getFileSystem(paramString1);
      if (paramString1 == null) {
        return null;
      }
      paramString1 = paramString1.getAccessTokenParameters(paramString2, paramString3, paramString4);
      return paramString1;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return null;
  }
  
  public static URL getAccessTokenUrl(String paramString)
  {
    try
    {
      paramString = getFileSystem(paramString);
      if (paramString == null) {
        return null;
      }
      paramString = paramString.getAccessTokenUrl();
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static List<Album> getAlbums(String paramString)
  {
    try
    {
      Object localObject = getFileSystem(am.ao(paramString));
      if (localObject == null) {
        return null;
      }
      String str1 = am.aj(paramString);
      String str2 = am.am(paramString);
      String str3 = getRealPathFromPath(paramString);
      localObject = ((IPhotoInfo)localObject).getAlbums(str1, str2, str3);
      paramString = com.estrongs.fs.a.a.a(com.estrongs.fs.a.a.c(paramString), 1) + "/" + "album";
      int i = 0;
      while (i < ((List)localObject).size())
      {
        getpath = (paramString + "/" + getid);
        i += 1;
      }
      return (List<Album>)localObject;
    }
    catch (NetFsException paramString)
    {
      throw new AlbumException(paramString);
    }
  }
  
  public static List<Album> getAllAlbums(String paramString)
  {
    try
    {
      Object localObject = getFileSystem(am.ao(paramString));
      if (localObject == null) {
        return null;
      }
      String str1 = am.aj(paramString);
      String str2 = am.am(paramString);
      getRealPathFromPath(paramString);
      localObject = ((IPhotoInfo)localObject).getAllAlbums(str1, str2);
      paramString = com.estrongs.fs.a.a.a(com.estrongs.fs.a.a.c(paramString), 1) + "/" + "album";
      int i = 0;
      while (i < ((List)localObject).size())
      {
        getpath = (paramString + "/" + getid);
        i += 1;
      }
      return (List<Album>)localObject;
    }
    catch (NetFsException paramString)
    {
      throw new AlbumException(paramString);
    }
  }
  
  public static String getBuddyIcon(String paramString1, String paramString2)
  {
    ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString1));
    if (localISPFileSystem == null) {
      return null;
    }
    paramString1 = am.aj(paramString1);
    return ((IPhotoInfo)localISPFileSystem).getBuddyIcon(paramString1, paramString2);
  }
  
  protected static List<com.gmail.yuyang226.flickr.a.a.a> getComments(String paramString, TypedMap paramTypedMap)
  {
    try
    {
      ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
      if (localISPFileSystem == null) {
        return null;
      }
      String str1 = am.aj(paramString);
      String str2 = am.am(paramString);
      paramString = getRealPathFromPath(paramString);
      paramString = ((IPhotoInfo)localISPFileSystem).getComments(str1, str2, paramString, paramTypedMap);
      return paramString;
    }
    catch (NetFsException paramString)
    {
      throw new PhotoInfoException(paramString);
    }
  }
  
  public static c getFileInfo(String paramString)
  {
    paramString = getNetFileInfo(paramString);
    if (paramString == null) {
      return null;
    }
    return convertToFileInfo(paramString);
  }
  
  public static InputStream getFileInputStream(String paramString)
  {
    return getFileInputStream(paramString, 0L);
  }
  
  public static InputStream getFileInputStream(String paramString, long paramLong)
  {
    ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
    if (localISPFileSystem == null) {
      return null;
    }
    return localISPFileSystem.getFileInputStream(am.aj(paramString), am.am(paramString), getRealPathFromPath(paramString), paramLong);
  }
  
  public static long getFileLength(String paramString)
  {
    ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
    if (localISPFileSystem == null) {
      return -1L;
    }
    return localISPFileSystem.getFileLength(am.aj(paramString), am.am(paramString), getRealPathFromPath(paramString));
  }
  
  public static SPFileObject getFileObject(String paramString)
  {
    try
    {
      paramString = getNetFileInfo(paramString);
      if (paramString == null) {
        return null;
      }
      paramString = new SPFileObject(paramString);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public static OutputStream getFileOutputStream(String paramString, long paramLong, TypedMap paramTypedMap)
  {
    ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
    if (localISPFileSystem == null) {
      return null;
    }
    return localISPFileSystem.getFileOutputStream(am.aj(paramString), am.am(paramString), getRealPathFromPath(paramString), paramLong, paramTypedMap);
  }
  
  private static ISPFileSystem getFileSystem(Context arg0, String paramString)
  {
    ISPFileSystem localISPFileSystem = (ISPFileSystem)netfs.get(paramString);
    String str = (String)netfsName.get(paramString);
    if (str == null) {
      ??? = null;
    }
    do
    {
      do
      {
        return (ISPFileSystem)???;
        ??? = localISPFileSystem;
      } while (localISPFileSystem != null);
      localISPFileSystem = (ISPFileSystem)com.estrongs.android.util.h.a(SPFileSystem.class.getClassLoader(), str, null);
      ??? = localISPFileSystem;
    } while (localISPFileSystem == null);
    synchronized (netfs)
    {
      netfs.put(paramString, localISPFileSystem);
      localISPFileSystem.setConfigDir(netfs_cfg_path, private_cfg_path);
      return localISPFileSystem;
    }
  }
  
  private static ISPFileSystem getFileSystem(String paramString)
  {
    return getFileSystem(null, paramString);
  }
  
  public static String getLastErrorString(String paramString)
  {
    ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
    if (localISPFileSystem == null) {
      return null;
    }
    try
    {
      paramString = localISPFileSystem.getLastErrorString(paramString);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public static SPFileInfo getNetFileInfo(String paramString)
  {
    Object localObject = getFileSystem(am.ao(paramString));
    if (localObject == null) {}
    do
    {
      return null;
      localObject = ((ISPFileSystem)localObject).getFileInfo(am.aj(paramString), am.am(paramString), getRealPathFromPath(paramString));
    } while (localObject == null);
    path = paramString;
    return (SPFileInfo)localObject;
  }
  
  public static String getOAuthLoginUrl(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = getFileSystem(paramString1);
      if (paramString1 == null) {
        return null;
      }
      paramString1 = paramString1.getOAuthLoginUrl(paramString2);
      return paramString1;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return null;
  }
  
  public static String getOAuthVersion(String paramString)
  {
    try
    {
      paramString = getFileSystem(paramString);
      if (paramString == null) {
        return null;
      }
      paramString = paramString.getOAuthVersion();
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static String getPhotoExtension(String paramString)
  {
    try
    {
      ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
      if (localISPFileSystem == null) {
        return null;
      }
      paramString = localISPFileSystem.getPhotoExtension(am.aj(paramString), am.am(paramString), getRealPathFromPath(paramString));
      return paramString;
    }
    catch (NetFsException paramString)
    {
      throw new PhotoInfoException(paramString);
    }
  }
  
  public static SPFileInfo getPhotoInfo(String paramString)
  {
    try
    {
      ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
      if (localISPFileSystem == null) {
        return null;
      }
      String str1 = am.aj(paramString);
      String str2 = am.am(paramString);
      paramString = getRealPathFromPath(paramString);
      paramString = ((IPhotoInfo)localISPFileSystem).getPhotoInfo(str1, str2, paramString);
      return paramString;
    }
    catch (NetFsException paramString)
    {
      throw new PhotoInfoException(paramString);
    }
  }
  
  private static String getRealPathFromPath(String paramString)
  {
    String str = am.ah(paramString);
    paramString = str;
    if (str == null) {
      paramString = null;
    }
    return paramString;
  }
  
  public static boolean getRegisterPrepareInfo(String paramString, Object[] paramArrayOfObject)
  {
    try
    {
      paramString = getFileSystem(paramString);
      if (paramString == null) {
        return false;
      }
      boolean bool = paramString.getRegisterPrepareInfo(paramArrayOfObject);
      return bool;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return false;
  }
  
  public static URL getRequestTokenUrl(String paramString)
  {
    try
    {
      paramString = getFileSystem(paramString);
      if (paramString == null) {
        return null;
      }
      paramString = paramString.getRequestTokenUrl();
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static InputStream getThumbnail(String paramString)
  {
    try
    {
      ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
      if (localISPFileSystem == null) {
        return null;
      }
      paramString = localISPFileSystem.getThumbnail(am.aj(paramString), am.am(paramString), getRealPathFromPath(paramString));
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static String getUserLoginName(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = getFileSystem(paramString1);
      if (paramString1 == null) {
        return null;
      }
      paramString1 = paramString1.getUserLoginName(paramString2);
      return paramString1;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return null;
  }
  
  public static boolean isDir(String paramString)
  {
    ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
    if (localISPFileSystem == null) {
      return false;
    }
    return localISPFileSystem.isDir(am.aj(paramString), am.am(paramString), getRealPathFromPath(paramString));
  }
  
  public static List<com.estrongs.fs.h> listFiles(Context paramContext, String paramString, boolean paramBoolean, i parami, TypedMap paramTypedMap)
  {
    String str1 = am.aj(paramString);
    String str2 = am.am(paramString);
    Object localObject = getRealPathFromPath(paramString);
    String str3 = am.ao(paramString);
    if ((str1 == null) || (str2 == null) || (localObject == null)) {
      throw new NetFsException("MalFormed URL", NetFsException.ERROR_CODE.NETFS_ERROR_MALFORMED_URL);
    }
    paramContext = getFileSystem(paramContext, str3);
    if (paramContext == null) {}
    for (;;)
    {
      return null;
      try
      {
        SPFileSystem.CacheRefreshCallback localCacheRefreshCallback = new SPFileSystem.CacheRefreshCallback();
        localCacheRefreshCallback.setPath(paramString);
        paramContext = paramContext.listFiles(str1, str2, (String)localObject, paramBoolean, localCacheRefreshCallback, paramTypedMap);
        if (paramContext != null)
        {
          paramString = paramContext.entrySet();
          if (paramString != null)
          {
            paramContext = new ArrayList();
            paramString = paramString.iterator();
            while (paramString.hasNext())
            {
              paramTypedMap = (SPFileInfo)((Map.Entry)paramString.next()).getValue();
              path = am.b(str3, str1, str2, path);
              localObject = new SPFileObject(paramTypedMap);
              if (parami.a((com.estrongs.fs.h)localObject))
              {
                if (!bd.a(thumbnail_url)) {
                  ((SPFileObject)localObject).putExtra("thumbnail_url", thumbnail_url);
                }
                paramContext.add(localObject);
              }
            }
            return paramContext;
          }
        }
      }
      catch (NetFsException paramContext)
      {
        throw paramContext;
      }
    }
    for (;;)
    {
      paramContext = null;
    }
  }
  
  public static void loadFileSystem(String paramString)
  {
    if (getFileSystem(paramString) == null)
    {
      Log.e("SPFileSystem", "can't load fs for :" + paramString);
      throw new NetFsException("Not installed", NetFsException.ERROR_CODE.NETFS_ERROR_NOT_INSTALLED);
    }
  }
  
  public static boolean mkDirs(String paramString)
  {
    return createFile(paramString, true);
  }
  
  public static boolean moveFile(String paramString1, String paramString2)
  {
    ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString1));
    if (localISPFileSystem == null) {
      return false;
    }
    return localISPFileSystem.moveFile(am.aj(paramString1), am.am(paramString1), getRealPathFromPath(paramString1), getRealPathFromPath(paramString2));
  }
  
  private static void refreshUI(String paramString) {}
  
  public static int register(String paramString1, String paramString2, String paramString3, Object[] paramArrayOfObject)
  {
    paramString1 = getFileSystem(am.ao(paramString1));
    if (paramString1 == null) {
      return 100;
    }
    try
    {
      int i = paramString1.register(paramString2, paramString3, paramArrayOfObject);
      return i;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return 100;
  }
  
  public static void removePhoto(String paramString1, String paramString2)
  {
    try
    {
      ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString1));
      if (localISPFileSystem == null) {
        return;
      }
      String str1 = am.aj(paramString1);
      String str2 = am.am(paramString1);
      paramString1 = getRealPathFromPath(paramString1);
      ((IPhotoInfo)localISPFileSystem).removePhoto(str1, str2, paramString1, paramString2);
      return;
    }
    catch (NetFsException paramString1)
    {
      throw new AlbumException(paramString1);
    }
  }
  
  public static boolean renameFile(String paramString1, String paramString2)
  {
    ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString1));
    if (localISPFileSystem == null) {
      return false;
    }
    return localISPFileSystem.renameFile(am.aj(paramString1), am.am(paramString1), getRealPathFromPath(paramString1), getRealPathFromPath(paramString2));
  }
  
  public static void saveUsernameAndToken(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    try
    {
      paramString1 = getFileSystem(paramString1);
      if (paramString1 == null) {
        return;
      }
      paramString1.saveUserAndToken(paramString2, paramString3, paramString4, paramString5);
      return;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
  }
  
  public static void setMeta(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString1));
      if (localISPFileSystem == null) {
        return;
      }
      String str1 = am.aj(paramString1);
      String str2 = am.am(paramString1);
      paramString1 = getRealPathFromPath(paramString1);
      ((IPhotoInfo)localISPFileSystem).setMeta(str1, str2, paramString1, paramString2, paramString3);
      return;
    }
    catch (NetFsException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
  }
  
  public static void setPath(String paramString1, String paramString2)
  {
    netfs_cfg_path = paramString1;
    private_cfg_path = paramString2;
  }
  
  public static void setPerms(String paramString, TypedMap paramTypedMap)
  {
    try
    {
      ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString));
      if (localISPFileSystem == null) {
        return;
      }
      String str1 = am.aj(paramString);
      String str2 = am.am(paramString);
      paramString = getRealPathFromPath(paramString);
      ((IPhotoInfo)localISPFileSystem).setPerms(str1, str2, paramString, paramTypedMap);
      return;
    }
    catch (NetFsException paramString)
    {
      throw new PhotoInfoException(paramString);
    }
  }
  
  public static void setTags(String paramString1, String paramString2)
  {
    try
    {
      ISPFileSystem localISPFileSystem = getFileSystem(am.ao(paramString1));
      if (localISPFileSystem == null) {
        return;
      }
      String str1 = am.aj(paramString1);
      String str2 = am.am(paramString1);
      paramString1 = getRealPathFromPath(paramString1);
      ((IPhotoInfo)localISPFileSystem).setTags(str1, str2, paramString1, paramString2);
      return;
    }
    catch (NetFsException paramString1)
    {
      throw new PhotoInfoException(paramString1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.SPFileSystem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */