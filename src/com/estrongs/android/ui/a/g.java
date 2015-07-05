package com.estrongs.android.ui.a;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.am;
import com.estrongs.android.util.ay;
import com.estrongs.fs.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class g
  extends BaseExpandableListAdapter
{
  private Context a;
  private Handler b;
  private ArrayList<j> c;
  private Drawable d;
  private Drawable e;
  private Map<String, Drawable> f = null;
  private Map<String, String> g = null;
  private List<String> h;
  private int i = 3;
  
  public g(Context paramContext, Handler paramHandler, Map<String, String> paramMap, Map<String, Drawable> paramMap1)
  {
    a = paramContext;
    b = paramHandler;
    e = al.a(a).a(2130837511);
    d = al.a(a).a(2130837512);
    g = paramMap;
    f = paramMap1;
    b();
  }
  
  private void a(List<i> paramList, List<ShortcutFormat> paramList1)
  {
    LinkedList localLinkedList = ad.a(a).M();
    int j = 0;
    while (j < paramList1.size())
    {
      i locali = new i(this);
      ShortcutFormat localShortcutFormat = (ShortcutFormat)paramList1.get(j);
      boolean bool = true;
      if ((!am.t(targetLocation)) && (!targetLocation.endsWith("/")) && (!targetLocation.endsWith("#"))) {
        targetLocation += "/";
      }
      if (am.ba(targetLocation)) {
        bool = com.estrongs.fs.impl.local.h.b(targetLocation).getFileType().a();
      }
      if ((bool) && (!localLinkedList.contains(targetLocation)))
      {
        c = targetLocation;
        b = shortcutName;
        a = ay.a(a, targetLocation);
        paramList.add(locali);
      }
      j += 1;
    }
  }
  
  private String b(int paramInt)
  {
    return a.getString(paramInt);
  }
  
  private void b()
  {
    c = new ArrayList();
    j localj = new j(this, null);
    a = b(2131427715);
    c.add(localj);
    localj = new j(this, null);
    a = b(2131428034);
    b = new LinkedList();
    c();
    Object localObject = ad.a(a).M();
    int j = 0;
    while (j < h.size())
    {
      i locali = new i(this);
      c = ((String)h.get(j));
      b = ((String)g.get(c));
      a = ((Drawable)f.get(c));
      if (!((List)localObject).contains(c)) {
        b.add(locali);
      }
      j += 1;
    }
    c.add(localj);
    localj = new j(this, null);
    a = b(2131427873);
    b = new LinkedList();
    localObject = new ArrayList();
    ((List)localObject).addAll(cu.a());
    ay.a(com.estrongs.android.pop.a.k, false, (List)localObject);
    a(b, (List)localObject);
    c.add(localj);
  }
  
  private void b(String paramString)
  {
    h.add(i, paramString);
  }
  
  private void c()
  {
    h = new ArrayList();
    Object localObject = b.b();
    h.add("#home_page#");
    h.add("#home#");
    if (!z.n)
    {
      h.add("/");
      i = 4;
    }
    h.add(localObject);
    h.add("gallery://local/buckets/");
    h.add("music://");
    h.add("video://");
    h.add("book://");
    if (z.j) {
      h.add("app://");
    }
    h.add(ad.a(a).z());
    h.add("mynetwork://");
    if (!z.d) {
      h.add("smb://");
    }
    if (!z.U) {
      h.add("net://");
    }
    h.add("ftp://");
    if (z.e) {
      h.add("bt://");
    }
    if (!z.ae) {
      h.add("remote://");
    }
    if (!z.T) {
      h.add("download://");
    }
    h.add("du://" + (String)localObject);
    h.add("recycle://");
    localObject = am.a();
    ((List)localObject).remove(b.b());
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      a((String)((Iterator)localObject).next());
    }
  }
  
  public i a(int paramInt1, int paramInt2)
  {
    Object localObject = a(paramInt1);
    try
    {
      localObject = (i)b.get(paramInt2);
      return (i)localObject;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public j a(int paramInt)
  {
    return (j)c.get(paramInt);
  }
  
  public void a()
  {
    b();
    notifyDataSetChanged();
  }
  
  public void a(String paramString)
  {
    b(paramString);
  }
  
  public long getChildId(int paramInt1, int paramInt2)
  {
    return paramInt2;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null)
    {
      paramViewGroup = com.estrongs.android.pop.esclasses.g.a(a).inflate(2130903169, null);
      int j = paramViewGroup.getPaddingLeft();
      int k = paramViewGroup.getPaddingRight();
      paramViewGroup.setBackgroundResource(2130837980);
      paramViewGroup.setPadding(j, 0, k, 0);
      paramViewGroup.setFocusable(false);
    }
    paramView = a(paramInt1, paramInt2);
    ImageView localImageView = (ImageView)paramViewGroup.findViewById(2131362429);
    if (a == null) {
      localImageView.setVisibility(8);
    }
    for (;;)
    {
      ((TextView)paramViewGroup.findViewById(2131362430)).setText(b);
      localImageView = (ImageView)paramViewGroup.findViewById(2131362432);
      localImageView.setFocusable(true);
      localImageView.setImageResource(2130838059);
      localImageView.setOnClickListener(new h(this, paramView));
      return paramViewGroup;
      localImageView.setVisibility(0);
      localImageView.setImageDrawable(a);
    }
  }
  
  public int getChildrenCount(int paramInt)
  {
    List localList = ab;
    if (localList == null) {
      return 0;
    }
    return localList.size();
  }
  
  public int getGroupCount()
  {
    return 3;
  }
  
  public long getGroupId(int paramInt)
  {
    return paramInt;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null)
    {
      paramViewGroup = com.estrongs.android.pop.esclasses.g.a(a).inflate(2130903151, null);
      paramViewGroup.setMinimumHeight(com.estrongs.android.ui.d.a.a(a, 48.0F));
    }
    paramView = a(paramInt);
    TextView localTextView = (TextView)paramViewGroup.findViewById(2131361997);
    localTextView.setTextColor(al.a(a).d(2131230738));
    localTextView.setText(a);
    paramView = (ImageView)paramViewGroup.findViewById(2131362017);
    if (paramInt > 0)
    {
      if (paramBoolean) {
        paramView.setImageDrawable(d);
      }
      for (;;)
      {
        paramView.setVisibility(0);
        return paramViewGroup;
        paramView.setImageDrawable(e);
      }
    }
    paramView.setVisibility(8);
    return paramViewGroup;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return true;
  }
  
  public void onGroupCollapsed(int paramInt)
  {
    Message localMessage = new Message();
    what = 1;
    arg1 = paramInt;
    arg2 = 1;
    b.sendMessage(localMessage);
  }
  
  public void onGroupExpanded(int paramInt)
  {
    Message localMessage = new Message();
    what = 1;
    arg1 = paramInt;
    arg2 = 0;
    b.sendMessage(localMessage);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */