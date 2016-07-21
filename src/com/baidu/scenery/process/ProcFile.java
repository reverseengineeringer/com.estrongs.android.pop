package com.baidu.scenery.process;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class ProcFile
  extends File
  implements Parcelable
{
  public static final Parcelable.Creator<ProcFile> CREATOR = new ProcFile.1();
  public final String content;
  
  protected ProcFile(Parcel paramParcel)
  {
    super(paramParcel.readString());
    content = paramParcel.readString();
  }
  
  protected ProcFile(String paramString)
  {
    super(paramString);
    content = readFile(paramString);
  }
  
  protected static String readFile(String paramString)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localBufferedReader = new BufferedReader(new FileReader(paramString));
      if (localObject == null) {
        break label83;
      }
    }
    finally
    {
      try
      {
        localObject = localBufferedReader.readLine();
        paramString = "";
        while (localObject != null)
        {
          localStringBuilder.append(paramString).append((String)localObject);
          paramString = "\n";
          localObject = localBufferedReader.readLine();
        }
        paramString = localStringBuilder.toString();
        if (localBufferedReader != null) {
          localBufferedReader.close();
        }
        return paramString;
      }
      finally
      {
        for (;;)
        {
          BufferedReader localBufferedReader;
          Object localObject = localBufferedReader;
        }
      }
      paramString = finally;
      localObject = null;
    }
    ((BufferedReader)localObject).close();
    label83:
    throw paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long length()
  {
    return content.length();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(getAbsolutePath());
    paramParcel.writeString(content);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.process.ProcFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */