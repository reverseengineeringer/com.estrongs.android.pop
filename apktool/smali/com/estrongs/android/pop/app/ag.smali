.class public Lcom/estrongs/android/pop/app/ag;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Z

.field private static final d:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Lcom/estrongs/android/pop/app/ag;


# instance fields
.field private e:Lcom/estrongs/chromecast/ChromeCast;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Lcom/estrongs/android/pop/app/ah;

.field private l:Lcom/estrongs/android/pop/app/c/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/app/ag;->c:Z

    const-class v0, Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/ag;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/ag;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.estrongs.chromecast"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/ag;->b:Ljava/lang/String;

    sput-object v2, Lcom/estrongs/android/pop/app/ag;->f:Ljava/lang/String;

    sput-object v2, Lcom/estrongs/android/pop/app/ag;->g:Lcom/estrongs/android/pop/app/ag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/ag;->h:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/ag;->i:Z

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ag;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ag;->k:Lcom/estrongs/android/pop/app/ah;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ag;->l:Lcom/estrongs/android/pop/app/c/k;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/chromecast/MediaMetaData;
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/estrongs/android/pop/app/ag;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->a(Ljava/io/File;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/app/ag;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/.nomedia"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->i(Ljava/lang/String;)Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/app/ag;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/estrongs/android/util/bg;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->l:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->g()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/c/i;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x50

    invoke-virtual {v0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v0, Lcom/estrongs/chromecast/MediaMetaData;

    invoke-direct {v0}, Lcom/estrongs/chromecast/MediaMetaData;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Lcom/estrongs/android/g/a;->a()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v1, v4, v5}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/chromecast/MediaMetaData;->imageUrl:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v2}, Lcom/estrongs/fs/util/j;->a(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    move-object v1, v0

    goto/16 :goto_0

    :cond_1
    :try_start_5
    invoke-static {p1}, Lcom/estrongs/android/util/bg;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/a/b;->h(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/estrongs/android/h/f;->a(Lcom/estrongs/fs/h;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/estrongs/android/h/f;->d(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    :try_start_6
    invoke-static {v1}, Lcom/estrongs/fs/util/j;->a(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    :try_start_7
    invoke-static {v2}, Lcom/estrongs/fs/util/j;->a(Ljava/io/OutputStream;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_3

    :catch_5
    move-exception v1

    move-object v1, v2

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public static a()Z
    .locals 2

    sget-boolean v0, Lcom/estrongs/android/pop/z;->at:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/bk;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/app/ag;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static g()Lcom/estrongs/android/pop/app/ag;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/ag;->g:Lcom/estrongs/android/pop/app/ag;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/ag;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/ag;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/ag;->g:Lcom/estrongs/android/pop/app/ag;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/ag;->g:Lcom/estrongs/android/pop/app/ag;

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0, p1, p2}, Lcom/estrongs/chromecast/ChromeCast;->mediaSeek(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f08049d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/chromecast/CastDeviceInfo;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0, p1}, Lcom/estrongs/chromecast/ChromeCast;->selectDevice(Lcom/estrongs/chromecast/CastDeviceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/chromecast/CastDeviceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0, p1}, Lcom/estrongs/chromecast/ChromeCast;->addDeviceListener(Lcom/estrongs/chromecast/CastDeviceListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0, p1}, Lcom/estrongs/chromecast/ChromeCast;->addConnectionListener(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0, p1}, Lcom/estrongs/chromecast/ChromeCast;->addMediaPlayerListener(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Double;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/estrongs/chromecast/ChromeCast;->setVolume(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/app/c/k;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/app/ag;->d:Ljava/lang/String;

    const-string v1, "loadMedia failed not connected"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->a()Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->j()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ag;->y()Lcom/estrongs/chromecast/CastDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/chromecast/CastDeviceInfo;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ag;->j:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ag;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ag;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/g/f;->f(Ljava/lang/String;)V

    :cond_2
    iput-object v0, p0, Lcom/estrongs/android/pop/app/ag;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->k:Lcom/estrongs/android/pop/app/ah;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->k:Lcom/estrongs/android/pop/app/ah;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ah;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->k:Lcom/estrongs/android/pop/app/ah;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ah;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    new-instance v0, Lcom/estrongs/android/pop/app/ah;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/ah;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ag;->k:Lcom/estrongs/android/pop/app/ah;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->k:Lcom/estrongs/android/pop/app/ah;

    iput-object p3, v0, Lcom/estrongs/android/pop/app/ah;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->k:Lcom/estrongs/android/pop/app/ah;

    iput-object p2, v0, Lcom/estrongs/android/pop/app/ah;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->k:Lcom/estrongs/android/pop/app/ah;

    iput-object p4, v0, Lcom/estrongs/android/pop/app/ah;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->k:Lcom/estrongs/android/pop/app/ah;

    iput-object p1, v0, Lcom/estrongs/android/pop/app/ah;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->k:Lcom/estrongs/android/pop/app/ah;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/ah;->a:Ljava/lang/String;

    :cond_4
    iput-object p5, p0, Lcom/estrongs/android/pop/app/ag;->l:Lcom/estrongs/android/pop/app/c/k;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-direct {p0, p1, p3}, Lcom/estrongs/android/pop/app/ag;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/chromecast/MediaMetaData;

    move-result-object v1

    invoke-interface {v0, p2, p3, p4, v1}, Lcom/estrongs/chromecast/ChromeCast;->loadMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/chromecast/MediaMetaData;)V

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ag;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/estrongs/android/g/f;->a(Ljava/lang/String;Lcom/estrongs/fs/h;)V

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/estrongs/android/h/f;->a(Lcom/estrongs/fs/h;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/estrongs/android/h/f;->d(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ag;->k:Lcom/estrongs/android/pop/app/ah;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/pop/app/ah;->e:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f08049d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/bg;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ag;->k:Lcom/estrongs/android/pop/app/ah;

    iput-object v0, v1, Lcom/estrongs/android/pop/app/ah;->e:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_7
    invoke-static {p1}, Lcom/estrongs/android/util/bg;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020295

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public b(Lcom/estrongs/chromecast/CastDeviceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0, p1}, Lcom/estrongs/chromecast/ChromeCast;->removeDeviceListener(Lcom/estrongs/chromecast/CastDeviceListener;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0, p1}, Lcom/estrongs/chromecast/ChromeCast;->removeConnectionListener(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0, p1}, Lcom/estrongs/chromecast/ChromeCast;->removeMediaPlayerListener(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/ag;->h:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/ag;->i:Z

    return v0
.end method

.method public e()Z
    .locals 8

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/ag;->i:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/app/ag;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/estrongs/chromecast/ChromeCastImpl;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/estrongs/chromecast/ChromeCastImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/ag;->i:Z

    sget-boolean v1, Lcom/estrongs/android/pop/app/ag;->c:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/estrongs/android/pop/app/ag;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/estrongs/android/pop/app/ag;->h:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v4, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v4}, Lcom/estrongs/chromecast/ChromeCast;->init()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v2, 0x7f0801ae

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    move v0, v1

    goto :goto_0

    :cond_2
    if-gez v4, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v2, 0x7f08049d

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/ag;->h:Z

    sget-boolean v4, Lcom/estrongs/android/pop/app/ag;->c:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/estrongs/android/pop/app/ag;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public h()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->startScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public i()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->mediaStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f08049d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public j()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->mediaPlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f08049d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public k()V
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->l:Lcom/estrongs/android/pop/app/c/k;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->l:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->l:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->g()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v0

    iget-object v1, v0, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ag;->r()I

    move-result v0

    if-eq v0, v6, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ag;->r()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ag;->i()V

    :cond_2
    invoke-static {}, Lcom/estrongs/android/g/a;->a()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/ag;->l:Lcom/estrongs/android/pop/app/c/k;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/app/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/app/c/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f08049d

    invoke-static {v0, v1, v6}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public l()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->mediaPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f08049d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public m()Lcom/estrongs/android/pop/app/c/k;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->l:Lcom/estrongs/android/pop/app/c/k;

    return-object v0
.end method

.method public n()V
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/app/ag;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->a(Ljava/io/File;)Z

    return-void
.end method

.method public o()Lcom/estrongs/android/pop/app/ah;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ag;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->k:Lcom/estrongs/android/pop/app/ah;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->stopScan()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->mediaStop()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public r()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->getMediaPlayerState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->getMediaStreamDuration()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public t()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->getMediaStreamPosition()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public u()D
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->getVolume()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public v()V
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ag;->u()D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ag;->a(Ljava/lang/Double;)V

    return-void
.end method

.method public w()V
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ag;->u()D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ag;->a(Ljava/lang/Double;)V

    return-void
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/chromecast/CastDeviceInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->getDevices()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()Lcom/estrongs/chromecast/CastDeviceInfo;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->getConnectedDevice()Lcom/estrongs/chromecast/CastDeviceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()I
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ag;->r()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ag;->e:Lcom/estrongs/chromecast/ChromeCast;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCast;->getIdleReason()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
