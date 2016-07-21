package com.dianxinos.library.notify.dispatcher;

import android.content.Intent;
import android.text.TextUtils;
import com.dianxinos.library.dxbase.h;

class e
  implements h
{
  e(b paramb) {}
  
  public void a(Intent paramIntent)
  {
    paramIntent = paramIntent.getDataString();
    if (TextUtils.isEmpty(paramIntent)) {}
    do
    {
      return;
      paramIntent = paramIntent.substring("package:".length());
    } while (TextUtils.isEmpty(paramIntent));
    b.a(a, 12, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.dispatcher.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */