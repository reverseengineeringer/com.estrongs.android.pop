package com.baidu.sapi2.share;

import com.baidu.sapi2.utils.enums.LoginShareStrategy;

class ShareReceiver$a
  implements f
{
  ShareReceiver$a(ShareReceiver paramShareReceiver) {}
  
  public void a(ShareModel paramShareModel)
  {
    if ((paramShareModel == null) || (ShareReceiver.a() == LoginShareStrategy.DISABLED)) {
      return;
    }
    switch (ShareReceiver.b.a[paramShareModel.b().ordinal()])
    {
    default: 
      return;
    case 1: 
      a.a(ShareReceiver.b(), ShareReceiver.a(), paramShareModel);
      return;
    case 2: 
      a.a(ShareReceiver.b(), paramShareModel);
      return;
    case 3: 
      a.a(paramShareModel);
      return;
    }
    a.a(ShareReceiver.b(), ShareReceiver.a(), paramShareModel);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.ShareReceiver.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */