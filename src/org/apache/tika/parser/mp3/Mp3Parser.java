package org.apache.tika.parser.mp3;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.AbstractParser;

public class Mp3Parser
  extends AbstractParser
{
  public static final String ALBUM = "xmpDM:album";
  public static final String ARTIST = "artist";
  public static final String TITLE = "title";
  private static final long serialVersionUID = 8537074922934844370L;
  
  protected static Mp3Parser.ID3TagsAndAudio getAllTagHandlers(InputStream paramInputStream)
  {
    AudioFrame localAudioFrame = null;
    Object localObject2 = null;
    ID3v23Handler localID3v23Handler = null;
    Object localObject1 = null;
    Object localObject3 = ID3v2Frame.createFrameIfPresent(paramInputStream);
    if ((localObject3 != null) && (localAudioFrame == null)) {
      if ((localObject3 instanceof ID3v2Frame))
      {
        localObject3 = (ID3v2Frame)localObject3;
        if (((ID3v2Frame)localObject3).getMajorVersion() == 4)
        {
          localObject3 = new ID3v24Handler((ID3v2Frame)localObject3);
          localObject1 = localObject2;
          localObject2 = localObject3;
        }
      }
    }
    for (;;)
    {
      localObject3 = localObject2;
      localObject2 = localObject1;
      localObject1 = localObject3;
      break;
      if (((ID3v2Frame)localObject3).getMajorVersion() == 3)
      {
        localID3v23Handler = new ID3v23Handler((ID3v2Frame)localObject3);
        localObject3 = localObject1;
        localObject1 = localObject2;
        localObject2 = localObject3;
      }
      else
      {
        if (((ID3v2Frame)localObject3).getMajorVersion() == 2)
        {
          localObject3 = new ID3v22Handler((ID3v2Frame)localObject3);
          localObject2 = localObject1;
          localObject1 = localObject3;
          continue;
          if (!(localObject3 instanceof AudioFrame)) {
            break;
          }
          localAudioFrame = (AudioFrame)localObject3;
          break;
          paramInputStream = new LyricsHandler(paramInputStream);
          ID3v1Handler localID3v1Handler = id3v1;
          localObject3 = new ArrayList();
          if ((localObject1 != null) && (((ID3v24Handler)localObject1).getTagsPresent())) {
            ((List)localObject3).add(localObject1);
          }
          if ((localID3v23Handler != null) && (localID3v23Handler.getTagsPresent())) {
            ((List)localObject3).add(localID3v23Handler);
          }
          if ((localObject2 != null) && (((ID3v22Handler)localObject2).getTagsPresent())) {
            ((List)localObject3).add(localObject2);
          }
          if ((localID3v1Handler != null) && (localID3v1Handler.getTagsPresent())) {
            ((List)localObject3).add(localID3v1Handler);
          }
          localObject1 = new Mp3Parser.ID3TagsAndAudio();
          Mp3Parser.ID3TagsAndAudio.access$102((Mp3Parser.ID3TagsAndAudio)localObject1, localAudioFrame);
          Mp3Parser.ID3TagsAndAudio.access$202((Mp3Parser.ID3TagsAndAudio)localObject1, paramInputStream);
          Mp3Parser.ID3TagsAndAudio.access$002((Mp3Parser.ID3TagsAndAudio)localObject1, (ID3Tags[])((List)localObject3).toArray(new ID3Tags[((List)localObject3).size()]));
          return (Mp3Parser.ID3TagsAndAudio)localObject1;
        }
        localObject3 = localObject1;
        localObject1 = localObject2;
        localObject2 = localObject3;
      }
    }
  }
  
  public void parse(InputStream paramInputStream, Metadata paramMetadata)
  {
    paramMetadata.set(Metadata.CONTENT_TYPE, "audio/mpeg");
    paramMetadata.set("xmpDM:audioCompressor", "MP3");
    paramInputStream = getAllTagHandlers(paramInputStream);
    if (Mp3Parser.ID3TagsAndAudio.access$000(paramInputStream).length > 0)
    {
      CompositeTagHandler localCompositeTagHandler = new CompositeTagHandler(Mp3Parser.ID3TagsAndAudio.access$000(paramInputStream));
      paramMetadata.set("title", localCompositeTagHandler.getTitle());
      paramMetadata.set("artist", localCompositeTagHandler.getArtist());
      paramMetadata.set("xmpDM:artist", localCompositeTagHandler.getArtist());
      paramMetadata.set("xmpDM:composer", localCompositeTagHandler.getComposer());
      paramMetadata.set("xmpDM:album", localCompositeTagHandler.getAlbum());
      paramMetadata.set("xmpDM:releaseDate", localCompositeTagHandler.getYear());
      paramMetadata.set("xmpDM:genre", localCompositeTagHandler.getGenre());
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = localCompositeTagHandler.getComments().iterator();
      while (localIterator.hasNext())
      {
        ID3Tags.ID3Comment localID3Comment = (ID3Tags.ID3Comment)localIterator.next();
        StringBuffer localStringBuffer = new StringBuffer();
        if (localID3Comment.getLanguage() != null)
        {
          localStringBuffer.append(localID3Comment.getLanguage());
          localStringBuffer.append(" - ");
        }
        if (localID3Comment.getDescription() != null)
        {
          localStringBuffer.append(localID3Comment.getDescription());
          if (localID3Comment.getText() != null) {
            localStringBuffer.append("\n");
          }
        }
        if (localID3Comment.getText() != null) {
          localStringBuffer.append(localID3Comment.getText());
        }
        localArrayList.add(localStringBuffer.toString());
        paramMetadata.add("xmpDM:logComment", localStringBuffer.toString());
      }
      if (localCompositeTagHandler.getTrackNumber() != null) {
        paramMetadata.set("xmpDM:trackNumber", localCompositeTagHandler.getTrackNumber());
      }
    }
    if (Mp3Parser.ID3TagsAndAudio.access$100(paramInputStream) != null)
    {
      paramMetadata.set("samplerate", String.valueOf(Mp3Parser.ID3TagsAndAudio.access$100(paramInputStream).getSampleRate()));
      paramMetadata.set("channels", String.valueOf(Mp3Parser.ID3TagsAndAudio.access$100(paramInputStream).getChannels()));
      paramMetadata.set("version", Mp3Parser.ID3TagsAndAudio.access$100(paramInputStream).getVersion());
      paramMetadata.set("xmpDM:audioSampleRate", Integer.toString(Mp3Parser.ID3TagsAndAudio.access$100(paramInputStream).getSampleRate()));
      if (Mp3Parser.ID3TagsAndAudio.access$100(paramInputStream).getChannels() != 1) {
        break label376;
      }
      paramMetadata.set("xmpDM:audioChannelType", "Mono");
    }
    label376:
    do
    {
      return;
      if (Mp3Parser.ID3TagsAndAudio.access$100(paramInputStream).getChannels() == 2)
      {
        paramMetadata.set("xmpDM:audioChannelType", "Stereo");
        return;
      }
      if (Mp3Parser.ID3TagsAndAudio.access$100(paramInputStream).getChannels() == 5)
      {
        paramMetadata.set("xmpDM:audioChannelType", "5.1");
        return;
      }
    } while (Mp3Parser.ID3TagsAndAudio.access$100(paramInputStream).getChannels() != 7);
    paramMetadata.set("xmpDM:audioChannelType", "7.1");
  }
}

/* Location:
 * Qualified Name:     org.apache.tika.parser.mp3.Mp3Parser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */