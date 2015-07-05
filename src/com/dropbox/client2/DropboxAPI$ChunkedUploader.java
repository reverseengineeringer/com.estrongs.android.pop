package com.dropbox.client2;

import com.dropbox.client2.exception.DropboxPartialFileException;
import com.dropbox.client2.exception.DropboxServerException;
import com.dropbox.client2.exception.DropboxServerException.Error;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Map;

public class DropboxAPI$ChunkedUploader
{
  private static final int DEFAULT_CHUNK_SIZE = 4194304;
  private boolean active = true;
  private int bytesInChunkToUpload = 0;
  private byte[] chunk;
  private DropboxAPI.ChunkedUploadRequest lastRequest = null;
  private long offset = 0L;
  private InputStream stream;
  private long targetLength;
  private String uploadId;
  
  static
  {
    if (!DropboxAPI.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private DropboxAPI$ChunkedUploader(DropboxAPI paramDropboxAPI, InputStream paramInputStream, long paramLong)
  {
    this(paramDropboxAPI, paramInputStream, paramLong, 4194304);
  }
  
  private DropboxAPI$ChunkedUploader(DropboxAPI paramDropboxAPI, InputStream paramInputStream, long paramLong, int paramInt)
  {
    stream = paramInputStream;
    targetLength = paramLong;
    chunk = new byte[paramInt];
  }
  
  public void abort()
  {
    try
    {
      if (lastRequest != null) {
        lastRequest.abort();
      }
      active = false;
      return;
    }
    finally {}
  }
  
  public DropboxAPI.Entry finish(String paramString1, String paramString2)
  {
    return DropboxAPI.access$0(this$0, paramString1, uploadId, false, paramString2);
  }
  
  public boolean getActive()
  {
    return active;
  }
  
  public long getOffset()
  {
    return offset;
  }
  
  public boolean isComplete()
  {
    return offset == targetLength;
  }
  
  public void upload()
  {
    upload(null);
  }
  
  public void upload(ProgressListener paramProgressListener)
  {
    int i;
    if (targetLength == -1L) {
      i = 1;
    }
    for (;;)
    {
      ProgressListener.Adjusted localAdjusted = null;
      if (paramProgressListener != null) {
        localAdjusted = new ProgressListener.Adjusted(paramProgressListener, offset, targetLength);
      }
      if (bytesInChunkToUpload == 0)
      {
        if (i != 0) {}
        for (int j = chunk.length;; j = (int)Math.min(chunk.length, targetLength - offset))
        {
          bytesInChunkToUpload = stream.read(chunk, 0, j);
          if (bytesInChunkToUpload != -1) {
            break label174;
          }
          if (i == 0) {
            break label126;
          }
          targetLength = offset;
          bytesInChunkToUpload = 0;
          label97:
          return;
          i = 0;
          break;
        }
        label126:
        abort();
        throw new IllegalStateException("InputStream ended after " + offset + " bytes, expecting " + targetLength + " bytes.");
      }
      try
      {
        try
        {
          label174:
          if (!active) {
            throw new DropboxPartialFileException(0L);
          }
        }
        finally {}
      }
      catch (DropboxServerException localDropboxServerException)
      {
        DropboxAPI.ChunkedUploadResponse localChunkedUploadResponse;
        if (body.fields.containsKey("offset"))
        {
          long l = ((Long)body.fields.get("offset")).longValue();
          if (l > offset)
          {
            bytesInChunkToUpload = 0;
            offset = l;
            while ((i == 0) && (offset >= targetLength))
            {
              if (($assertionsDisabled) || (offset == targetLength)) {
                break label97;
              }
              throw new AssertionError();
              lastRequest = this$0.chunkedUploadRequest(new ByteArrayInputStream(chunk), bytesInChunkToUpload, localDropboxServerException, offset, uploadId);
              localChunkedUploadResponse = lastRequest.upload();
              offset = localChunkedUploadResponse.getOffset();
              uploadId = localChunkedUploadResponse.getUploadId();
              bytesInChunkToUpload = 0;
            }
          }
          throw localChunkedUploadResponse;
        }
        throw localChunkedUploadResponse;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.DropboxAPI.ChunkedUploader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */