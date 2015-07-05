package org.apache.tika.parser.mp3;

import java.util.ArrayList;
import java.util.List;

public class ID3v23Handler
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
  
  public ID3v23Handler(ID3v2Frame paramID3v2Frame)
  {
    paramID3v2Frame = new ID3v23Handler.RawV23TagIterator(this, paramID3v2Frame, null);
    while (paramID3v2Frame.hasNext())
    {
      ID3v2Frame.RawTag localRawTag = paramID3v2Frame.next();
      if (name.equals("TIT2")) {
        title = getTagString(data, 0, data.length);
      } else if (name.equals("TPE1")) {
        artist = getTagString(data, 0, data.length);
      } else if (name.equals("TALB")) {
        album = getTagString(data, 0, data.length);
      } else if (name.equals("TYER")) {
        year = getTagString(data, 0, data.length);
      } else if (name.equals("TCOM")) {
        composer = getTagString(data, 0, data.length);
      } else if (name.equals("COMM")) {
        comments.add(getComment(data, 0, data.length));
      } else if (name.equals("TRCK")) {
        trackNumber = getTagString(data, 0, data.length);
      } else if (name.equals("TCON")) {
        genre = ID3v22Handler.extractGenre(getTagString(data, 0, data.length));
      }
    }
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
 * Qualified Name:     org.apache.tika.parser.mp3.ID3v23Handler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */