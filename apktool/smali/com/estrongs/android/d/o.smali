.class public Lcom/estrongs/android/d/o;
.super Lcom/estrongs/android/d/a;


# static fields
.field private static b:Landroid/graphics/Bitmap;


# instance fields
.field private c:Lcom/estrongs/fs/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/d/o;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/d/a;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/d/o;->c:Lcom/estrongs/fs/d;

    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 5

    const/4 v0, 0x1

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v1, v2, p1

    div-int v4, v3, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-gt v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-le v1, v0, :cond_2

    if-le v2, p1, :cond_2

    div-int/2addr v2, v1

    if-ge v2, p1, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    if-le v1, v0, :cond_3

    if-le v3, p1, :cond_3

    div-int v2, v3, v1

    if-ge v2, p1, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_3
    if-le v1, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2, p3}, Lcom/estrongs/android/d/o;->a(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v2

    iput v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    sget-boolean v2, Lcom/estrongs/android/pop/z;->x:Z

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/d/o;->b()Ljava/io/File;

    move-result-object v0

    const-string v1, ".thumbnails"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/util/am;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/d/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, ".thumbnails"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/util/am;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected c(Lcom/estrongs/fs/h;)Landroid/graphics/Bitmap;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/d/o;->c:Lcom/estrongs/fs/d;

    invoke-virtual {v2, v5}, Lcom/estrongs/fs/d;->k(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_1
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v4

    :cond_0
    const/high16 v4, 0x200000

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->mark(I)V

    const/4 v4, 0x0

    invoke-static {v2, v4, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v2

    :goto_0
    :try_start_4
    invoke-static {p1}, Lcom/estrongs/android/d/f;->h(Lcom/estrongs/fs/h;)I

    move-result v2

    invoke-direct {p0, v4, v6, v2}, Lcom/estrongs/android/d/o;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/d/o;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020098

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v1

    :goto_1
    move-object v2, v4

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    :try_start_5
    sget-object v0, Lcom/estrongs/android/d/o;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget-object v4, p0, Lcom/estrongs/android/d/o;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202fb

    invoke-static {v4, v5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/d/o;->b:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/estrongs/android/d/o;->b:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/estrongs/android/d/o;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_1
    sget-object v0, Lcom/estrongs/android/d/o;->b:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/estrongs/android/d/o;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    invoke-static {v2}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    :goto_4
    return-object v0

    :catch_0
    move-exception v4

    :try_start_6
    invoke-static {v2}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    iget-object v4, p0, Lcom/estrongs/android/d/o;->c:Lcom/estrongs/fs/d;

    invoke-virtual {v4, v5}, Lcom/estrongs/fs/d;->k(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v2

    if-nez v2, :cond_6

    :try_start_7
    iget-object v4, p0, Lcom/estrongs/android/d/o;->c:Lcom/estrongs/fs/d;

    invoke-virtual {v4, v5}, Lcom/estrongs/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v4, v2

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v0, v4, :cond_4

    const/4 v0, 0x3

    invoke-static {v5, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/d/f;->h(Lcom/estrongs/fs/h;)I

    move-result v4

    invoke-static {p1}, Lcom/estrongs/android/d/f;->h(Lcom/estrongs/fs/h;)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v0, v4, v5, v6}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v0

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v3

    :goto_5
    invoke-static {v0}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    move-object v0, v3

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_6
    invoke-static {v2}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v4

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v0, v2

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v0, v4

    goto :goto_5

    :cond_3
    move-object v0, v1

    goto :goto_3

    :cond_4
    move v0, v1

    move-object v1, v3

    goto/16 :goto_2

    :cond_5
    move v0, v1

    move-object v1, v2

    goto/16 :goto_1

    :cond_6
    move-object v4, v2

    goto/16 :goto_0
.end method

.method public d()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/bc;->h()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected g(Lcom/estrongs/fs/h;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method
