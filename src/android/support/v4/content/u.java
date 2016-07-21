package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;

class u
{
  final IntentFilter a;
  final BroadcastReceiver b;
  boolean c;
  
  u(IntentFilter paramIntentFilter, BroadcastReceiver paramBroadcastReceiver)
  {
    a = paramIntentFilter;
    b = paramBroadcastReceiver;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("Receiver{");
    localStringBuilder.append(b);
    localStringBuilder.append(" filter=");
    localStringBuilder.append(a);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */