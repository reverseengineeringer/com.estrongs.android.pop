package com.baidu.resultcard.common;

class PhotoScanner$2
  implements Runnable
{
  PhotoScanner$2(PhotoScanner paramPhotoScanner, long paramLong, String paramString) {}
  
  public void run()
  {
    PhotoDbAdapter.getInstance(PhotoScanner.access$100(this$0)).insert(val$timeStamp, val$path);
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.common.PhotoScanner.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */