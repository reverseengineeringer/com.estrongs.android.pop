.class public Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Lcom/estrongs/fs/d;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/widget/ImageView;

.field private g:I

.field private h:I

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/util/DisplayMetrics;

.field private l:F

.field private m:Lcom/estrongs/android/j/c;

.field private n:Landroid/view/View$OnClickListener;

.field private final o:Landroid/os/Handler;

.field private p:Landroid/graphics/drawable/BitmapDrawable;

.field private q:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a:Lcom/estrongs/fs/d;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->e:I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->f:Landroid/widget/ImageView;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->k:Landroid/util/DisplayMetrics;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->m:Lcom/estrongs/android/j/c;

    new-instance v0, Lcom/estrongs/android/pop/app/ja;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ja;-><init>(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->n:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->o:Landroid/os/Handler;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->p:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->q:Landroid/graphics/drawable/BitmapDrawable;

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

.method static synthetic a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->e:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->p:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/pop/app/je;->a(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/jb;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/jb;-><init>(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->e:I

    return v0
.end method

.method private c()V
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/pop/app/je;->a(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/jc;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/jc;-><init>(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private d()V
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->q:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->p:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->q:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->o:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/jd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/jd;-><init>(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Lcom/estrongs/fs/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a:Lcom/estrongs/fs/d;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d()V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->q:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->g:I

    return v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->h:I

    return v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->p:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->e:I

    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->L(Ljava/lang/String;)Z

    move-result v5

    iget-object v6, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v6}, Lcom/estrongs/android/util/ap;->bg(Ljava/lang/String;)Z

    move-result v6

    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    if-nez v6, :cond_2

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->mark(I)V

    :goto_1
    iget v7, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->h:I

    invoke-static {v3, v7}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v7

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz v4, :cond_3

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    move-object v0, v1

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->c:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->g:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v0, v0, -0x50

    iput v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->h:I

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->q:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->q:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->q:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->setWallpaper(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f08040e

    const/16 v6, 0x8

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a:Lcom/estrongs/fs/d;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->k:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->k:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->l:F

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->m:Lcom/estrongs/android/j/c;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d0

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f03016d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->setContentView(I)V

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->m:Lcom/estrongs/android/j/c;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "islocalopen"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->m:Lcom/estrongs/android/j/c;

    const-string v1, "act3"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->m:Lcom/estrongs/android/j/c;

    const-string v1, "act3"

    const-string v2, "image_browser"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const v0, 0x7f0e01d4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "FILE_PATH"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    :goto_1
    if-nez v0, :cond_a

    const-string v0, "pic://"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    :goto_2
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    move-object v2, v0

    :goto_3
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pic"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "search"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v2

    if-ge v2, v6, :cond_5

    const-class v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->finish()V

    :goto_5
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :cond_5
    const-class v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_4

    :cond_6
    const v0, 0x7f0e0448

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->i:Landroid/widget/ImageView;

    const v0, 0x7f0e0449

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->i:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->j:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->g:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v0, v0, -0x50

    iput v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->registerForContextMenu(Landroid/view/View;)V

    const-string v0, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x320

    const/high16 v2, 0x300000

    :try_start_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v1, v3, v4}, Lcom/estrongs/android/pop/app/imageviewer/ao;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->q:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_6
    const v0, 0x7f0e05f7

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    const v0, 0x7f08040e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_6

    :cond_9
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->b()V

    goto/16 :goto_5

    :cond_a
    move-object v1, v0

    goto/16 :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    const v0, 0x7f08064e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    return-void
.end method
