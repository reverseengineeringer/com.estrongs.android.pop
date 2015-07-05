package com.estrongs.android.pop.spfs.note;

import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.util.TypedMap;
import java.util.List;

public abstract interface IPhotoInfo
{
  public abstract String addComment(String paramString1, String paramString2, String paramString3, String paramString4);
  
  public abstract com.gmail.yuyang226.flickr.a.a addNote(String paramString1, String paramString2, String paramString3, com.gmail.yuyang226.flickr.a.a parama);
  
  public abstract void addPhoto(String paramString1, String paramString2, String paramString3, String paramString4);
  
  public abstract Album createAlbum(String paramString1, String paramString2, String paramString3, String paramString4);
  
  public abstract void deleteComment(String paramString1, String paramString2, String paramString3, String paramString4);
  
  public abstract void deleteNote(String paramString1, String paramString2, String paramString3);
  
  public abstract void editComment(String paramString1, String paramString2, String paramString3, String paramString4);
  
  public abstract void editNote(String paramString1, String paramString2, com.gmail.yuyang226.flickr.a.a parama);
  
  public abstract List<Album> getAlbums(String paramString1, String paramString2, String paramString3);
  
  public abstract List<Album> getAllAlbums(String paramString1, String paramString2);
  
  public abstract String getBuddyIcon(String paramString1, String paramString2);
  
  public abstract List<com.gmail.yuyang226.flickr.a.a.a> getComments(String paramString1, String paramString2, String paramString3, TypedMap paramTypedMap);
  
  public abstract SPFileInfo getPhotoInfo(String paramString1, String paramString2, String paramString3);
  
  public abstract void removePhoto(String paramString1, String paramString2, String paramString3, String paramString4);
  
  public abstract void setMeta(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5);
  
  public abstract void setPerms(String paramString1, String paramString2, String paramString3, TypedMap paramTypedMap);
  
  public abstract void setTags(String paramString1, String paramString2, String paramString3, String paramString4);
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.note.IPhotoInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */