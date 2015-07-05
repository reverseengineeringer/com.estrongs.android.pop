package com.estrongs.android.pop.spfs;

import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import java.util.List;

public class PhotoInfoManager
{
  public static String addComment(String paramString1, String paramString2)
  {
    switch (am.G(paramString1))
    {
    default: 
      return null;
    }
    try
    {
      paramString1 = SPFileSystem.addComment(paramString1, paramString2);
      return paramString1;
    }
    catch (PhotoInfoException paramString1)
    {
      throw new PhotoInfoException(paramString1.getMessage());
    }
  }
  
  public static com.gmail.yuyang226.flickr.a.a addNote(String paramString, com.gmail.yuyang226.flickr.a.a parama)
  {
    switch (am.G(paramString))
    {
    default: 
      return null;
    }
    try
    {
      paramString = SPFileSystem.addNote(paramString, parama);
      return paramString;
    }
    catch (PhotoInfoException paramString)
    {
      throw new PhotoInfoException(paramString.getMessage());
    }
  }
  
  public static void addPhoto(String paramString1, String paramString2)
  {
    switch (am.G(paramString1))
    {
    default: 
      return;
    }
    SPFileSystem.addPhoto(paramString1, paramString2);
  }
  
  public static Album createAlbum(String paramString1, String paramString2, String paramString3)
  {
    switch (am.G(paramString3))
    {
    default: 
      return null;
    }
    return SPFileSystem.createAlbum(paramString1, paramString2, paramString3);
  }
  
  public static void deleteComment(String paramString1, String paramString2)
  {
    switch (am.G(paramString1))
    {
    default: 
      return;
    }
    try
    {
      SPFileSystem.deleteComment(paramString1, paramString2);
      return;
    }
    catch (PhotoInfoException paramString1)
    {
      throw new PhotoInfoException(paramString1.getMessage());
    }
  }
  
  public static void deleteNote(String paramString1, String paramString2)
  {
    switch (am.G(paramString1))
    {
    default: 
      return;
    }
    try
    {
      SPFileSystem.deleteNote(paramString1, paramString2);
      return;
    }
    catch (PhotoInfoException paramString1)
    {
      throw new PhotoInfoException(paramString1.getMessage());
    }
  }
  
  public static void editComment(String paramString1, String paramString2, String paramString3)
  {
    switch (am.G(paramString1))
    {
    default: 
      return;
    }
    try
    {
      SPFileSystem.editComment(paramString1, paramString2, paramString3);
      return;
    }
    catch (PhotoInfoException paramString1)
    {
      throw new PhotoInfoException(paramString1.getMessage());
    }
  }
  
  public static void editNote(String paramString, com.gmail.yuyang226.flickr.a.a parama)
  {
    switch (am.G(paramString))
    {
    default: 
      return;
    }
    try
    {
      SPFileSystem.editNote(paramString, parama);
      return;
    }
    catch (PhotoInfoException paramString)
    {
      throw new PhotoInfoException(paramString.getMessage());
    }
  }
  
  public static List<Album> getAlbums(String paramString)
  {
    switch (am.G(paramString))
    {
    default: 
      return null;
    }
    return SPFileSystem.getAlbums(paramString);
  }
  
  public static List<Album> getAllAlbums(String paramString)
  {
    switch (am.G(paramString))
    {
    default: 
      return null;
    }
    return SPFileSystem.getAllAlbums(paramString);
  }
  
  public static String getBuddyIcon(String paramString1, String paramString2)
  {
    switch (am.G(paramString1))
    {
    default: 
      return null;
    }
    try
    {
      paramString1 = SPFileSystem.getBuddyIcon(paramString1, paramString2);
      return paramString1;
    }
    catch (PhotoInfoException paramString1)
    {
      throw new PhotoInfoException(paramString1.getMessage());
    }
  }
  
  public static List<com.gmail.yuyang226.flickr.a.a.a> getComments(String paramString, TypedMap paramTypedMap)
  {
    switch (am.G(paramString))
    {
    default: 
      return null;
    }
    try
    {
      paramString = SPFileSystem.getComments(paramString, paramTypedMap);
      return paramString;
    }
    catch (PhotoInfoException paramString)
    {
      throw new PhotoInfoException(paramString.getMessage());
    }
  }
  
  public static String getPhotoExtension(String paramString)
  {
    switch (am.G(paramString))
    {
    default: 
      return null;
    }
    try
    {
      paramString = SPFileSystem.getPhotoExtension(paramString);
      return paramString;
    }
    catch (PhotoInfoException paramString)
    {
      throw new PhotoInfoException(paramString.getMessage());
    }
  }
  
  public static SPFileInfo getPhotoInfo(String paramString)
  {
    switch (am.G(paramString))
    {
    default: 
      return null;
    }
    try
    {
      paramString = SPFileSystem.getPhotoInfo(paramString);
      return paramString;
    }
    catch (PhotoInfoException paramString)
    {
      throw new PhotoInfoException(paramString.getMessage());
    }
  }
  
  public static void removePhoto(String paramString)
  {
    removePhoto(com.estrongs.fs.a.a.a(paramString), com.estrongs.fs.a.a.b(paramString));
  }
  
  public static void removePhoto(String paramString1, String paramString2)
  {
    switch (am.G(paramString1))
    {
    default: 
      return;
    }
    SPFileSystem.removePhoto(paramString1, paramString2);
  }
  
  public static void setMeta(String paramString1, String paramString2, String paramString3)
  {
    switch (am.G(paramString1))
    {
    default: 
      return;
    }
    try
    {
      SPFileSystem.setMeta(paramString1, paramString2, paramString3);
      return;
    }
    catch (PhotoInfoException paramString1)
    {
      throw new PhotoInfoException(paramString1.getMessage());
    }
  }
  
  public static void setPerms(String paramString, TypedMap paramTypedMap)
  {
    switch (am.G(paramString))
    {
    default: 
      return;
    }
    try
    {
      SPFileSystem.setPerms(paramString, paramTypedMap);
      return;
    }
    catch (PhotoInfoException paramString)
    {
      throw new PhotoInfoException(paramString.getMessage());
    }
  }
  
  public static void setTags(String paramString1, String paramString2)
  {
    switch (am.G(paramString1))
    {
    default: 
      return;
    }
    SPFileSystem.setTags(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.PhotoInfoManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */