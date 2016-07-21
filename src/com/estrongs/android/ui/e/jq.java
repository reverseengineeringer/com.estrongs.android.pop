package com.estrongs.android.ui.e;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.a.a;
import java.util.Hashtable;
import java.util.Map;

public class jq
  extends c
{
  private FileExplorerActivity c = null;
  
  public jq(FileExplorerActivity paramFileExplorerActivity)
  {
    c = paramFileExplorerActivity;
    b = new String[] { "paste", "new", "cancel" };
    e();
  }
  
  public void e()
  {
    a = new Hashtable();
    a.put("paste", new a(2130838576, c.getString(2131230871)).a(new jr(this)));
    a.put("new", new a(2130838572, c.getString(2131230867)).a(new js(this)));
    a.put("cancel", new a(2130838525, c.getString(2131230835)).a(new jt(this)));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.jq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */