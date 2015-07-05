package com.dropbox.client2;

import java.util.Map;

public final class DropboxAPI$ChunkedUploadResponse
{
  private final long offset;
  private final String uploadId;
  
  public DropboxAPI$ChunkedUploadResponse(Map<String, Object> paramMap)
  {
    uploadId = ((String)paramMap.get("upload_id"));
    offset = ((Long)paramMap.get("offset")).longValue();
  }
  
  public long getOffset()
  {
    return offset;
  }
  
  public String getUploadId()
  {
    return uploadId;
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.DropboxAPI.ChunkedUploadResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */