package org.apache.tika.parser.mp3;

import java.util.Collections;
import java.util.List;

public class CompositeTagHandler
  implements ID3Tags
{
  private ID3Tags[] tags;
  
  public CompositeTagHandler(ID3Tags[] paramArrayOfID3Tags)
  {
    tags = paramArrayOfID3Tags;
  }
  
  public String getAlbum()
  {
    ID3Tags[] arrayOfID3Tags = tags;
    int j = arrayOfID3Tags.length;
    int i = 0;
    while (i < j)
    {
      ID3Tags localID3Tags = arrayOfID3Tags[i];
      if (localID3Tags.getAlbum() != null) {
        return localID3Tags.getAlbum();
      }
      i += 1;
    }
    return null;
  }
  
  public String getArtist()
  {
    ID3Tags[] arrayOfID3Tags = tags;
    int j = arrayOfID3Tags.length;
    int i = 0;
    while (i < j)
    {
      ID3Tags localID3Tags = arrayOfID3Tags[i];
      if (localID3Tags.getArtist() != null) {
        return localID3Tags.getArtist();
      }
      i += 1;
    }
    return null;
  }
  
  public List<ID3Tags.ID3Comment> getComments()
  {
    ID3Tags[] arrayOfID3Tags = tags;
    int j = arrayOfID3Tags.length;
    int i = 0;
    while (i < j)
    {
      List localList = arrayOfID3Tags[i].getComments();
      if ((localList != null) && (localList.size() > 0)) {
        return localList;
      }
      i += 1;
    }
    return Collections.emptyList();
  }
  
  public String getComposer()
  {
    ID3Tags[] arrayOfID3Tags = tags;
    int j = arrayOfID3Tags.length;
    int i = 0;
    while (i < j)
    {
      ID3Tags localID3Tags = arrayOfID3Tags[i];
      if (localID3Tags.getComposer() != null) {
        return localID3Tags.getComposer();
      }
      i += 1;
    }
    return null;
  }
  
  public String getGenre()
  {
    ID3Tags[] arrayOfID3Tags = tags;
    int j = arrayOfID3Tags.length;
    int i = 0;
    while (i < j)
    {
      ID3Tags localID3Tags = arrayOfID3Tags[i];
      if (localID3Tags.getGenre() != null) {
        return localID3Tags.getGenre();
      }
      i += 1;
    }
    return null;
  }
  
  public boolean getTagsPresent()
  {
    boolean bool2 = false;
    ID3Tags[] arrayOfID3Tags = tags;
    int j = arrayOfID3Tags.length;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        if (arrayOfID3Tags[i].getTagsPresent()) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public String getTitle()
  {
    ID3Tags[] arrayOfID3Tags = tags;
    int j = arrayOfID3Tags.length;
    int i = 0;
    while (i < j)
    {
      ID3Tags localID3Tags = arrayOfID3Tags[i];
      if (localID3Tags.getTitle() != null) {
        return localID3Tags.getTitle();
      }
      i += 1;
    }
    return null;
  }
  
  public String getTrackNumber()
  {
    ID3Tags[] arrayOfID3Tags = tags;
    int j = arrayOfID3Tags.length;
    int i = 0;
    while (i < j)
    {
      ID3Tags localID3Tags = arrayOfID3Tags[i];
      if (localID3Tags.getTrackNumber() != null) {
        return localID3Tags.getTrackNumber();
      }
      i += 1;
    }
    return null;
  }
  
  public String getYear()
  {
    ID3Tags[] arrayOfID3Tags = tags;
    int j = arrayOfID3Tags.length;
    int i = 0;
    while (i < j)
    {
      ID3Tags localID3Tags = arrayOfID3Tags[i];
      if (localID3Tags.getYear() != null) {
        return localID3Tags.getYear();
      }
      i += 1;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.apache.tika.parser.mp3.CompositeTagHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */