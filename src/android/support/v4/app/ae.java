package android.support.v4.app;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class ae
  extends ai<FragmentActivity>
{
  public ae(FragmentActivity paramFragmentActivity)
  {
    super(paramFragmentActivity);
  }
  
  public View a(int paramInt)
  {
    return a.findViewById(paramInt);
  }
  
  public void a(Fragment paramFragment, Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    a.startActivityFromFragment(paramFragment, paramIntent, paramInt, paramBundle);
  }
  
  public void a(Fragment paramFragment, String[] paramArrayOfString, int paramInt)
  {
    FragmentActivity.access$000(a, paramFragment, paramArrayOfString, paramInt);
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    a.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  public boolean a()
  {
    Window localWindow = a.getWindow();
    return (localWindow != null) && (localWindow.peekDecorView() != null);
  }
  
  public boolean a(Fragment paramFragment)
  {
    return !a.isFinishing();
  }
  
  public boolean a(String paramString)
  {
    return a.a(a, paramString);
  }
  
  public LayoutInflater b()
  {
    return a.getLayoutInflater().cloneInContext(a);
  }
  
  public void b(Fragment paramFragment)
  {
    a.onAttachFragment(paramFragment);
  }
  
  public FragmentActivity c()
  {
    return a;
  }
  
  public void d()
  {
    a.supportInvalidateOptionsMenu();
  }
  
  public boolean e()
  {
    return a.getWindow() != null;
  }
  
  public int f()
  {
    Window localWindow = a.getWindow();
    if (localWindow == null) {
      return 0;
    }
    return getAttributeswindowAnimations;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */