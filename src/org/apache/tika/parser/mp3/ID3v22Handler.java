package org.apache.tika.parser.mp3;

import java.util.ArrayList;
import java.util.List;

public class ID3v22Handler
  implements ID3Tags
{
  private String album;
  private String artist;
  private List<ID3Tags.ID3Comment> comments = new ArrayList();
  private String composer;
  private String genre;
  private String title;
  private String trackNumber;
  private String year;
  
  public ID3v22Handler(ID3v2Frame paramID3v2Frame)
  {
    paramID3v2Frame = new ID3v22Handler.RawV22TagIterator(this, paramID3v2Frame, null);
    while (paramID3v2Frame.hasNext())
    {
      ID3v2Frame.RawTag localRawTag = paramID3v2Frame.next();
      if (name.equals("TT2")) {
        title = getTagString(data, 0, data.length);
      } else if (name.equals("TP1")) {
        artist = getTagString(data, 0, data.length);
      } else if (name.equals("TAL")) {
        album = getTagString(data, 0, data.length);
      } else if (name.equals("TYE")) {
        year = getTagString(data, 0, data.length);
      } else if (name.equals("TCM")) {
        composer = getTagString(data, 0, data.length);
      } else if (name.equals("COM")) {
        comments.add(getComment(data, 0, data.length));
      } else if (name.equals("TRK")) {
        trackNumber = getTagString(data, 0, data.length);
      } else if (name.equals("TCO")) {
        genre = extractGenre(getTagString(data, 0, data.length));
      }
    }
  }
  
  protected static String extractGenre(String paramString)
  {
    int i = paramString.indexOf("(");
    int j = paramString.indexOf(")");
    if ((i == -1) && (j == -1)) {
      return paramString;
    }
    if (i < j)
    {
      String str = paramString.substring(0, i).trim();
      try
      {
        i = Integer.parseInt(paramString.substring(i + 1, j));
        paramString = ID3Tags.GENRES[i];
        return paramString;
      }
      catch (ArrayIndexOutOfBoundsException paramString)
      {
        return str;
      }
      catch (NumberFormatException paramString)
      {
        return str;
      }
    }
    return null;
  }
  
  private ID3Tags.ID3Comment getComment(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return ID3v2Frame.getComment(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  private String getTagString(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return ID3v2Frame.getTagString(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public String getAlbum()
  {
    return album;
  }
  
  public String getArtist()
  {
    return artist;
  }
  
  public List<ID3Tags.ID3Comment> getComments()
  {
    return comments;
  }
  
  public String getComposer()
  {
    return composer;
  }
  
  public String getGenre()
  {
    return genre;
  }
  
  public boolean getTagsPresent()
  {
    return true;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public String getTrackNumber()
  {
    return trackNumber;
  }
  
  public String getYear()
  {
    return year;
  }
}

/* Location:
 * Qualified Name:     org.apache.tika.parser.mp3.ID3v22Handler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */