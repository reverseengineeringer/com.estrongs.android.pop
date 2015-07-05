.class public Lcom/estrongs/android/d/h;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/estrongs/android/d/h;


# instance fields
.field private a:Lcom/estrongs/fs/d;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/d/h;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/d/h;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/d/h;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/d/h;->a()V

    invoke-direct {p0}, Lcom/estrongs/android/d/h;->b()V

    invoke-static {p1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/d/h;->a:Lcom/estrongs/fs/d;

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

.method private a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;ILjava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p4}, Lcom/estrongs/android/d/h;->c(Ljava/lang/String;Ljava/io/InputStream;)Landroid/os/MemoryFile;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/d/h;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, 0x200000

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->mark(I)V

    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {p2, p3}, Lcom/estrongs/android/d/h;->a(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v3

    iput v3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    iput-boolean v3, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/os/MemoryFile;->close()V

    :cond_4
    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/d/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    invoke-direct {p0, p1}, Lcom/estrongs/android/d/h;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    :cond_5
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    invoke-direct {p0, p1}, Lcom/estrongs/android/d/h;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/d/h;
    .locals 1

    sget-object v0, Lcom/estrongs/android/d/h;->e:Lcom/estrongs/android/d/h;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/android/d/h;

    invoke-direct {v0, p0}, Lcom/estrongs/android/d/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/d/h;->e:Lcom/estrongs/android/d/h;

    :cond_1
    sget-object v0, Lcom/estrongs/android/d/h;->e:Lcom/estrongs/android/d/h;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/d/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/d/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, ".thumbnails"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/util/am;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/d/h;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .locals 7

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v2, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_3

    int-to-float v0, v3

    div-float v0, v5, v0

    :goto_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_2

    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    int-to-float v0, v4

    div-float v0, v5, v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/d/h;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/d/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, ".apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/util/am;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/d/h;->d:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/io/InputStream;)Landroid/os/MemoryFile;
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/d/h;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/d;->c(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v1

    :cond_0
    :try_start_2
    iget-wide v4, v2, Lcom/estrongs/fs/c;->e:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    new-instance v0, Landroid/os/MemoryFile;

    iget-wide v4, v2, Lcom/estrongs/fs/c;->e:J

    long-to-int v2, v4

    invoke-direct {v0, p1, v2}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x2000

    new-array v4, v2, [B

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/d/h;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v2, p1}, Lcom/estrongs/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    :cond_1
    instance-of v2, p2, Ljava/io/BufferedInputStream;

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v5, 0x2000

    invoke-direct {v2, p2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p2, v2

    :cond_2
    invoke-virtual {p2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_1
    if-lez v2, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    add-int/2addr v3, v2

    invoke-virtual {p2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a(ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/estrongs/android/d/h;->a(ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    :try_start_0
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/estrongs/android/d/h;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;ILjava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {p4}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {p4}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {p4}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p4}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/estrongs/android/d/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/d/h;->a()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/d/h;->b(Ljava/lang/String;Ljava/io/InputStream;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/d/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/estrongs/android/d/h;->a(ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/estrongs/android/d/h;->a(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/estrongs/android/d/h;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/estrongs/android/d/f;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
