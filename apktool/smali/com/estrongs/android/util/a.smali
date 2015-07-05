.class public Lcom/estrongs/android/util/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static k:Lcom/estrongs/android/util/a;


# instance fields
.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Lcom/estrongs/android/util/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/a;->a:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "FileExplorer"

    aput-object v1, v0, v3

    const-string v1, "Shadow"

    aput-object v1, v0, v4

    const-string v1, "PopRemoteImageBrowser"

    aput-object v1, v0, v5

    const-string v1, "PopVideoPlayer"

    aput-object v1, v0, v6

    const-string v1, "PopAudioPlayer"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "PopNoteEditor"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ESRingtoneChooser"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ESWallPaperChooser"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ESContentChooser"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ESFileSharingActivity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/util/a;->b:[Ljava/lang/String;

    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Recommend_Show"

    aput-object v1, v0, v3

    const-string v1, "Home_Pic"

    aput-object v1, v0, v4

    const-string v1, "Home_Pic_Wan"

    aput-object v1, v0, v5

    const-string v1, "Home_Music"

    aput-object v1, v0, v6

    const-string v1, "Home_Music_Wan"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Home_Video"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Home_Video_Wan"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Home_Doc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Home_Doc_Wan"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Home_App"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Home_App_Wan"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Home_Download"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Home_Download_Mgr"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Home_Sdcard"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Home_PCS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Home_Cloud"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Home_Remote"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Home_LAN"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Home_Baidu_Security"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Sidebar_Baidu_Security"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Home_Send"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Home_Task"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Home_Recycle"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Home_NetSearch"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Home_Search_Wan"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Home_News"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Home_Weather"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Home_Hide"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Home_Disk"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Home_Root"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Home_Gesture"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Home_Net_Mgr"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Home_Bluetooth"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Home_FTP"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Home_Clipboard"

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/util/a;->c:[Ljava/lang/String;

    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Home_Pic_UV"

    aput-object v1, v0, v3

    const-string v1, "Home_Pic_Wan_UV"

    aput-object v1, v0, v4

    const-string v1, "Home_Music_UV"

    aput-object v1, v0, v5

    const-string v1, "Home_Music_Wan_UV"

    aput-object v1, v0, v6

    const-string v1, "Home_Video_UV"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Home_Video_Wan_UV"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Home_Doc_UV"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Home_Doc_Wan_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Home_App_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Home_App_Wan_UV"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Home_Download_UV"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Home_Download_Mgr_UV"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Home_Sdcard_UV"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Home_PCS_UV"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Home_Cloud_UV"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Home_Remote_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Home_LAN_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Home_Baidu_Security_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Sidebar_Baidu_Security_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Home_Send_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Home_Task_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Home_Recycle_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Home_NetSearch_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Home_Search_Wan_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Home_News_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Home_Weather_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Home_Hide_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Home_Disk_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Home_Root_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Home_Gesture_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Home_Net_Mgr_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Home_Bluetooth_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Home_FTP_UV"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Home_Clipboard_UV"

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/util/a;->d:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/util/a;->e:[Ljava/lang/String;

    const-string v0, "Google Market"

    sput-object v0, Lcom/estrongs/android/util/a;->f:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/a;->k:Lcom/estrongs/android/util/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/util/a;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/util/a;->h:Z

    iput-object v1, p0, Lcom/estrongs/android/util/a;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    iput-object p1, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/util/a;->i:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/util/a;->g:Z

    return-void
.end method

.method public static a()Lcom/estrongs/android/util/a;
    .locals 1

    sget-object v0, Lcom/estrongs/android/util/a;->k:Lcom/estrongs/android/util/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;)Lcom/estrongs/android/util/a;
    .locals 1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/estrongs/android/util/a;->k:Lcom/estrongs/android/util/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/util/a;

    invoke-direct {v0, p0, p2}, Lcom/estrongs/android/util/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/util/a;->k:Lcom/estrongs/android/util/a;

    :cond_0
    sget-object v0, Lcom/estrongs/android/util/a;->k:Lcom/estrongs/android/util/a;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/estrongs/android/util/a;

    invoke-direct {v0, p0, p2}, Lcom/estrongs/android/util/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lcom/estrongs/android/util/a;->f:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/util/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobstat/StatService;->setAppChannel(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/estrongs/android/util/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/estrongs/android/util/a;->b:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;J)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    const-string v2, "Event_DB"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v1, v4, p2

    if-gtz v1, :cond_0

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/estrongs/android/util/a;->c:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/estrongs/android/util/a;->d:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/estrongs/android/util/a;->e:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    const-string v1, "Event_DB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b()Z
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->aq()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->ar()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    :goto_0
    const-wide/32 v8, 0x4d3f6400

    if-nez v6, :cond_1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    cmp-long v2, v2, v8

    if-gez v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/estrongs/android/util/a;->h:Z

    :goto_1
    iget-boolean v2, p0, Lcom/estrongs/android/util/a;->h:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/estrongs/android/util/a;->g:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/FexApplication;->g()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "FileExplorer"

    iget-object v3, p0, Lcom/estrongs/android/util/a;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/mobstat/StatService;->onResume(Landroid/content/Context;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/estrongs/android/pop/ad;->d(J)V

    :goto_2
    return v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/android/util/a;->h:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->g:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FileExplorer"

    iget-object v1, p0, Lcom/estrongs/android/util/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->g:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FileExplorer"

    iget-object v1, p0, Lcom/estrongs/android/util/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/StatService;->onPause(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/a;->k:Lcom/estrongs/android/util/a;

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->g:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FileExplorer"

    iget-object v1, p0, Lcom/estrongs/android/util/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/util/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x5265c00

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/util/a;->g:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FileExplorer"

    iget-object v1, p0, Lcom/estrongs/android/util/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/util/a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/util/a;->j:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method
