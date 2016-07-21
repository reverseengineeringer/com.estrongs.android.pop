package android.support.v4.media;

import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.os.ResultReceiver;
import android.util.Log;

final class m
  extends Handler
{
  private final n b = new n(a, null);
  
  private m(MediaBrowserServiceCompat paramMediaBrowserServiceCompat) {}
  
  public void a(Runnable paramRunnable)
  {
    if (Thread.currentThread() == getLooper().getThread())
    {
      paramRunnable.run();
      return;
    }
    post(paramRunnable);
  }
  
  public void handleMessage(Message paramMessage)
  {
    Bundle localBundle = paramMessage.getData();
    switch (what)
    {
    default: 
      Log.w("MediaBrowserServiceCompat", "Unhandled message: " + paramMessage + "\n  Service version: " + 1 + "\n  Client version: " + arg1);
      return;
    case 1: 
      b.a(localBundle.getString("data_package_name"), localBundle.getInt("data_calling_uid"), localBundle.getBundle("data_root_hints"), new l(a, replyTo));
      return;
    case 2: 
      b.a(new l(a, replyTo));
      return;
    case 3: 
      b.a(localBundle.getString("data_media_item_id"), localBundle.getBundle("data_options"), new l(a, replyTo));
      return;
    case 4: 
      b.b(localBundle.getString("data_media_item_id"), localBundle.getBundle("data_options"), new l(a, replyTo));
      return;
    case 5: 
      b.a(localBundle.getString("data_media_item_id"), (ResultReceiver)localBundle.getParcelable("data_result_receiver"));
      return;
    }
    b.b(new l(a, replyTo));
  }
  
  public boolean sendMessageAtTime(Message paramMessage, long paramLong)
  {
    Bundle localBundle = paramMessage.getData();
    localBundle.setClassLoader(MediaBrowserCompat.class.getClassLoader());
    localBundle.putInt("data_calling_uid", Binder.getCallingUid());
    return super.sendMessageAtTime(paramMessage, paramLong);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */