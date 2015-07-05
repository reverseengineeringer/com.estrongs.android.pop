.class public Lcom/estrongs/android/pop/app/imageviewer/gallery/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/imageviewer/gallery/e;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

.field private c:Lcom/estrongs/fs/d;

.field private d:Lcom/estrongs/fs/c;

.field private e:Landroid/graphics/BitmapFactory$Options;

.field private f:I

.field private g:Lcom/estrongs/fs/h;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;)V
    .locals 1

    invoke-interface {p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;Lcom/estrongs/fs/d;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->g:Lcom/estrongs/fs/h;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;Lcom/estrongs/fs/d;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->g:Lcom/estrongs/fs/h;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->c:Lcom/estrongs/fs/d;

    invoke-static {p3}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "file://"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Landroid/net/Uri;

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Landroid/net/Uri;

    goto :goto_0
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

.method private a(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private q()Landroid/os/ParcelFileDescriptor;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->e()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()J
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->g:Lcom/estrongs/fs/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->c:Lcom/estrongs/fs/d;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;ZZ)Lcom/estrongs/fs/h;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->g:Lcom/estrongs/fs/h;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->g:Lcom/estrongs/fs/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->g:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(IIZ)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(IIZZ)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->q()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-static {p1, p2, v3, p4}, Lcom/estrongs/android/pop/app/imageviewer/ao;->a(IILandroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v1, "ESFileImage"

    const-string v3, "got exception closing ParcelFileDescriptor "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "ESFileImage"

    const-string v4, "got exception decoding bitmap "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "ESFileImage"

    const-string v3, "got exception closing ParcelFileDescriptor "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "ESFileImage"

    const-string v3, "got exception closing ParcelFileDescriptor "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->c:Lcom/estrongs/fs/d;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_5
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->e:Landroid/graphics/BitmapFactory$Options;

    if-nez v3, :cond_2

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->e:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    :try_start_6
    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->c:Lcom/estrongs/fs/d;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/estrongs/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_6
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v0

    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/am;->J(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/am;->aV(Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->e:Landroid/graphics/BitmapFactory$Options;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->e:Landroid/graphics/BitmapFactory$Options;

    const/16 v5, 0x320

    invoke-static {v4, v5}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->e:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->e:Landroid/graphics/BitmapFactory$Options;

    sget-boolean v4, Lcom/estrongs/android/pop/z;->x:Z

    if-nez v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v1, 0x0

    :try_start_7
    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->e:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    move-object v0, v1

    :goto_4
    move-object v2, v0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    move-object v0, v2

    goto :goto_2

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto :goto_3

    :catch_6
    move-exception v1

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    move-object v0, v2

    goto :goto_4

    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    throw v1
.end method

.method public a(Z)Landroid/graphics/Bitmap;
    .locals 2

    const/16 v0, 0x140

    const v1, 0x17700

    invoke-virtual {p0, v0, v1, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/estrongs/fs/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->g:Lcom/estrongs/fs/h;

    return-object v0
.end method

.method protected a(I)V
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->f:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->f:I

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->f:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    const-string v0, "file"

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Ljava/io/File;
    .locals 6

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/remoteimg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->r()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/util/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/fs/b/r;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->c:Lcom/estrongs/fs/d;

    new-instance v3, Lcom/estrongs/fs/o;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/estrongs/fs/o;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/estrongs/fs/o;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/estrongs/fs/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/r;->execute(Z)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/r;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    return-object v2
.end method

.method public f()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public g()Ljava/io/InputStream;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->c:Lcom/estrongs/fs/d;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->e:Landroid/graphics/BitmapFactory$Options;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->c:Lcom/estrongs/fs/d;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->e:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->e:Landroid/graphics/BitmapFactory$Options;

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->j()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public l()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->j()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->j()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()J
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->p()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d:Lcom/estrongs/fs/c;

    iget-wide v0, v0, Lcom/estrongs/fs/c;->e:J

    return-wide v0
.end method

.method public o()J
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->p()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d:Lcom/estrongs/fs/c;

    iget-wide v0, v0, Lcom/estrongs/fs/c;->j:J

    return-wide v0
.end method

.method public p()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d:Lcom/estrongs/fs/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d:Lcom/estrongs/fs/c;

    iget-wide v0, v0, Lcom/estrongs/fs/c;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->c:Lcom/estrongs/fs/d;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->c(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d:Lcom/estrongs/fs/c;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d:Lcom/estrongs/fs/c;

    if-nez v0, :cond_2

    new-instance v0, Lcom/estrongs/fs/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/estrongs/fs/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d:Lcom/estrongs/fs/c;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto :goto_0
.end method
