package com.estrongs.android.pop.app;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.m;
import com.gmail.yuyang226.flickr.a.a.a;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedList;

public class ImageCommentActivity
  extends HomeAsBackActivity
{
  SPFileInfo a;
  private LinkedList<Object> b = new LinkedList();
  private LayoutInflater c = null;
  private Object d = new Object();
  private m e = null;
  private m f = null;
  private m g = null;
  private String h;
  private View i;
  private ListView j;
  private BaseAdapter k = null;
  private TypedMap l = new TypedMap();
  private View m;
  private at n;
  private Comparator<a> o = new da(this);
  
  private SPFileInfo a(String paramString)
  {
    SPFileInfo localSPFileInfo = new SPFileInfo();
    paramString = getIntent();
    ownerId = paramString.getStringExtra("ownerId");
    ownerUsername = paramString.getStringExtra("ownerName");
    name = paramString.getStringExtra("name");
    description = paramString.getStringExtra("desc");
    long l1 = new Date().getTime();
    lastModifiedTime = paramString.getLongExtra("createdTime", l1);
    if ((ownerId != null) && (ownerUsername != null) && ((name != null) || (description != null)))
    {
      paramString = localSPFileInfo;
      if (lastModifiedTime != l1) {
        break label134;
      }
    }
    try
    {
      paramString = PhotoInfoManager.getPhotoInfo(h);
      label134:
      return paramString;
    }
    catch (PhotoInfoException paramString)
    {
      paramString.printStackTrace();
    }
    return localSPFileInfo;
  }
  
  private void a(boolean paramBoolean)
  {
    if ((e != null) && (e.isAlive())) {
      return;
    }
    i.findViewById(2131624429).setVisibility(0);
    e = new dg(this, "Comment Loader", paramBoolean);
    e.start();
  }
  
  private void d()
  {
    i = c.inflate(2130903336, null);
    i.setOnClickListener(new db(this));
    j = ((ListView)findViewById(2131625364));
    j.setCacheColorHint(0);
    j.setFastScrollEnabled(true);
    setTitle(getString(2131231138) + ">" + Uri.parse(h).getHost());
    m = findViewById(2131625370);
    ((View)((ImageView)findViewById(2131625369)).getParent()).setOnClickListener(new dc(this));
  }
  
  private void e()
  {
    if ((g != null) && (g.isAlive())) {
      return;
    }
    m.setVisibility(0);
    g = new dd(this, "Comment Refresher");
    g.start();
  }
  
  private boolean f()
  {
    return "Facebook".equals(ap.ay(h));
  }
  
  private String[] h()
  {
    String str = getString(2131232432);
    return new String[] { getString(2131232439) + " " + str, getString(2131232435) + " " + str, getString(2131232434) + " " + str, getString(2131232433) + " " + str, getString(2131232440) + " " + str, getString(2131232436) + " " + str };
  }
  
  private BaseAdapter i()
  {
    return new dj(this);
  }
  
  public void finish()
  {
    super.finish();
    if (e != null)
    {
      e.a();
      e = null;
    }
    if (f != null)
    {
      f.a();
      f = null;
    }
    if (g != null)
    {
      g.a();
      g = null;
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) && (paramInt2 == -1)) {
      a(true);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    n = J();
    setContentView(2130903377);
    h = getIntent().getStringExtra("pic_path");
    c = k.a(this);
    d();
    b.add(d);
    k = i();
    j.setAdapter(k);
    j.setSelector(new ColorDrawable(0));
    l.put("limit", Integer.valueOf(10));
    l.put("offset", Integer.valueOf(0));
    a(false);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131755010, paramMenu);
    paramMenu.findItem(2131625663).setTitle(2131230880);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131625663)
    {
      e();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ImageCommentActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */