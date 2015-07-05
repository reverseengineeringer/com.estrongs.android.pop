package com.baidu.sapi2.share;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.baidu.sapi2.SapiAccount;
import com.baidu.sapi2.utils.enums.LoginShareStrategy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ShareModel
  implements Parcelable
{
  public static final Parcelable.Creator<ShareModel> CREATOR = new d();
  private SapiAccount a;
  private List<SapiAccount> b = new ArrayList();
  private ShareEvent c;
  private String d;
  private LoginShareStrategy e;
  
  ShareModel() {}
  
  ShareModel(Parcel paramParcel)
  {
    a(paramParcel);
  }
  
  ShareModel(ShareEvent paramShareEvent)
  {
    c = paramShareEvent;
  }
  
  ShareModel(ShareEvent paramShareEvent, SapiAccount paramSapiAccount)
  {
    this(paramShareEvent);
    a = paramSapiAccount;
  }
  
  ShareModel(ShareEvent paramShareEvent, SapiAccount paramSapiAccount, List<SapiAccount> paramList)
  {
    this(paramShareEvent, paramSapiAccount);
  }
  
  private void a(Parcel paramParcel)
  {
    c = ((ShareEvent)paramParcel.readSerializable());
    paramParcel.readTypedList(b, SapiAccount.CREATOR);
    a = ((SapiAccount)paramParcel.readParcelable(SapiAccount.class.getClassLoader()));
    e = ((LoginShareStrategy)paramParcel.readSerializable());
    d = paramParcel.readString();
  }
  
  List<SapiAccount> a()
  {
    return b;
  }
  
  void a(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(e.a(paramContext, (SapiAccount)localIterator.next()));
    }
    a(localArrayList);
    if (a != null) {
      a = e.a(paramContext, a);
    }
    if (!TextUtils.isEmpty(d)) {
      d = e.a(paramContext, d);
    }
  }
  
  void a(SapiAccount paramSapiAccount)
  {
    a = paramSapiAccount;
  }
  
  void a(ShareEvent paramShareEvent)
  {
    c = paramShareEvent;
  }
  
  void a(LoginShareStrategy paramLoginShareStrategy)
  {
    e = paramLoginShareStrategy;
  }
  
  void a(String paramString)
  {
    d = paramString;
  }
  
  void a(List<SapiAccount> paramList)
  {
    if (paramList != null) {
      b = paramList;
    }
  }
  
  ShareEvent b()
  {
    return c;
  }
  
  void b(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(e.b(paramContext, (SapiAccount)localIterator.next()));
    }
    a(localArrayList);
    if (a != null) {
      a = e.b(paramContext, a);
    }
    if (!TextUtils.isEmpty(d)) {
      d = e.b(paramContext, d);
    }
  }
  
  String c()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return "ShareModel{currentAccount=" + a + ", shareAccounts=" + b + ", event=" + c + ", from='" + d + '\'' + ", senderStrategy=" + e + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeSerializable(c);
    paramParcel.writeTypedList(b);
    paramParcel.writeParcelable(a, paramInt);
    paramParcel.writeSerializable(e);
    paramParcel.writeString(d);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.ShareModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */