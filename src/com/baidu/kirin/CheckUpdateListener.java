package com.baidu.kirin;

import com.baidu.kirin.objects.KirinCheckState;
import java.util.HashMap;

public abstract interface CheckUpdateListener
{
  public abstract void checkUpdateResponse(KirinCheckState paramKirinCheckState, HashMap<String, String> paramHashMap);
}

/* Location:
 * Qualified Name:     com.baidu.kirin.CheckUpdateListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */