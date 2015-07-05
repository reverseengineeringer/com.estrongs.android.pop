.class public Lcom/estrongs/android/pop/app/imageviewer/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/imageviewer/w;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/lang/Thread;

.field private d:Landroid/content/ContentResolver;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->a:Ljava/util/ArrayList;

    const-string v0, "Image Loader - Mini"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/t;->c()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->a:Ljava/util/ArrayList;

    const-string v0, "Image Loader - Mini"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/t;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/t;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/imageviewer/t;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->b:Z

    return v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->b:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/x;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/pop/app/imageviewer/x;-><init>(Lcom/estrongs/android/pop/app/imageviewer/t;Lcom/estrongs/android/pop/app/imageviewer/u;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Lcom/estrongs/android/pop/app/imageviewer/v;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->c:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/t;->c()V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/w;

    invoke-direct {v0, p1, p2, p3}, Lcom/estrongs/android/pop/app/imageviewer/w;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Lcom/estrongs/android/pop/app/imageviewer/v;I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()[I
    .locals 5

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->a:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/w;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/w;->c:I

    aput v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->a:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->d:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->c:Ljava/lang/Thread;

    invoke-static {}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a()Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->d:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a(Ljava/lang/Thread;Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/t;->c:Ljava/lang/Thread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
