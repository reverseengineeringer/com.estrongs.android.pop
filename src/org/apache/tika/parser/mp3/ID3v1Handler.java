package org.apache.tika.parser.mp3;

import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.List;
import org.apache.tika.exception.TikaException;
import org.xml.sax.ContentHandler;

public class ID3v1Handler
  implements ID3Tags
{
  private String album;
  private String artist;
  private ID3Tags.ID3Comment comment;
  boolean found = false;
  private String genre;
  private String title;
  private String trackNumber;
  private String year;
  
  public ID3v1Handler(InputStream paramInputStream, ContentHandler paramContentHandler)
  {
    this(LyricsHandler.getSuffix(paramInputStream, 128));
  }
  
  protected ID3v1Handler(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte.length == 128) && (paramArrayOfByte[0] == 84) && (paramArrayOfByte[1] == 65) && (paramArrayOfByte[2] == 71))
    {
      found = true;
      title = getString(paramArrayOfByte, 3, 33);
      artist = getString(paramArrayOfByte, 33, 63);
      album = getString(paramArrayOfByte, 63, 93);
      year = getString(paramArrayOfByte, 93, 97);
      comment = new ID3Tags.ID3Comment(getString(paramArrayOfByte, 97, 127));
      int i = paramArrayOfByte[127];
      genre = GENRES[Math.min(i & 0xFF, GENRES.length - 1)];
      if ((paramArrayOfByte[125] == 0) && (paramArrayOfByte[126] != 0)) {
        trackNumber = Integer.toString(paramArrayOfByte[126] & 0xFF);
      }
    }
  }
  
  private static String getString(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    int j;
    for (;;)
    {
      j = i;
      if (i >= paramInt2) {
        break;
      }
      j = i;
      if (paramArrayOfByte[i] == 0) {
        break;
      }
      i += 1;
    }
    for (;;)
    {
      paramInt2 = paramInt1;
      if (paramInt1 >= j) {
        break;
      }
      paramInt2 = paramInt1;
      if (paramArrayOfByte[(j - 1)] > 32) {
        break;
      }
      j -= 1;
    }
    while ((paramInt2 < j) && (paramArrayOfByte[paramInt2] <= 32)) {
      paramInt2 += 1;
    }
    try
    {
      paramArrayOfByte = new String(paramArrayOfByte, paramInt2, j - paramInt2, "ISO-8859-1");
      return paramArrayOfByte;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      throw new TikaException("ISO-8859-1 encoding is not available", paramArrayOfByte);
    }
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
    return Arrays.asList(new ID3Tags.ID3Comment[] { comment });
  }
  
  public String getComposer()
  {
    return null;
  }
  
  public String getGenre()
  {
    return genre;
  }
  
  public boolean getTagsPresent()
  {
    return found;
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
 * Qualified Name:     org.apache.tika.parser.mp3.ID3v1Handler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */