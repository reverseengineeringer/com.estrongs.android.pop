package com.baidu.resultcard.common;

class PhotoScanner$3
  implements Runnable
{
  PhotoScanner$3(PhotoScanner paramPhotoScanner, long paramLong) {}
  
  public void run()
  {
    PhotoDbAdapter.getInstance(PhotoScanner.access$100(this$0)).delete(val$tmpTs);
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.common.PhotoScanner.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */