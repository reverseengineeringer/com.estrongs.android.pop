.class public Lcom/estrongs/android/pop/app/StreamingMediaPlayer;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private A:Z

.field private a:Lcom/estrongs/fs/d;

.field private b:Lcom/estrongs/android/ui/view/ESVideoView;

.field private c:I

.field private d:Landroid/widget/MediaController;

.field private e:Z

.field private f:J

.field private g:J

.field private h:J

.field private final i:Landroid/os/Handler;

.field private j:Ljava/io/File;

.field private final k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Landroid/media/MediaPlayer;

.field private o:Z

.field private p:Ljava/lang/Thread;

.field private final q:I

.field private final r:I

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I

.field private x:Landroid/app/ProgressDialog;

.field private y:Landroid/app/ProgressDialog;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Lcom/estrongs/fs/d;

    iput v2, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c:I

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e:Z

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->h:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i:Landroid/os/Handler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/downloadingMedia.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->k:Ljava/lang/String;

    iput-object v3, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->n:Landroid/media/MediaPlayer;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->o:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->q:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->r:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->t:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->u:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->v:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->w:I

    iput-object v3, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->x:Landroid/app/ProgressDialog;

    iput-object v3, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->y:Landroid/app/ProgressDialog;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->z:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->A:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->h:J

    return-wide v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;J)J
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->n:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/pop/app/mq;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/pop/app/mq;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->p:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/mj;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/mj;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;J)J
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->h:J

    return-wide p1
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->l:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->p:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->z:Z

    return p1
.end method

.method private c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:Lcom/estrongs/android/ui/view/ESVideoView;

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->z:Z

    return v0
.end method

.method private d()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g:J

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ESVideoView;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c()Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/pop/app/mi;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/mi;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->A:Z

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->x:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private f()Z
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f:J

    return-wide v0
.end method

.method private g()V
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g:J

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->x:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->x:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->x:Landroid/app/ProgressDialog;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g:J

    return-wide v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:Lcom/estrongs/android/ui/view/ESVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->start()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->h:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e:Z

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->A:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->z:Z

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Z)V

    return-void
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Lcom/estrongs/fs/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Lcom/estrongs/fs/d;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->l:Z

    return v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->o:Z

    return v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b()V

    return-void
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->y:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->j:Ljava/io/File;

    return-object v0
.end method

.method static synthetic q(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Lcom/estrongs/android/ui/view/ESVideoView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:Lcom/estrongs/android/ui/view/ESVideoView;

    return-object v0
.end method

.method static synthetic r(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->h()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->l:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c()Z

    return-void
.end method

.method public a(I)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->showDialog(I)V
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

.method public a(Ljava/lang/String;)V
    .locals 11

    const/4 v1, 0x0

    const/high16 v10, 0x40000

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    :goto_0
    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/mt;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/mt;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    move-object v3, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->k:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->j:Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_4

    :cond_4
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->j:Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-array v5, v10, [B

    move v0, v1

    :cond_5
    invoke-virtual {v3, v5, v1, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_8

    :cond_6
    :goto_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i()V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/mu;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/mu;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_7
    add-int/2addr v2, v6

    :cond_8
    if-ge v2, v10, :cond_9

    sub-int v6, v10, v2

    invoke-virtual {v3, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-gez v6, :cond_7

    :cond_9
    invoke-virtual {v4, v5, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v0, v2

    int-to-long v6, v0

    iput-wide v6, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g:J

    iget-wide v6, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->h:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->h:J

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->d()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g()V

    iget-wide v6, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g:J

    iget-wide v8, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->f:J

    cmp-long v2, v6, v8

    if-gez v2, :cond_6

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->setDefaultKeyMode(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d0

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f030154

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->setContentView(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->m:Ljava/lang/String;

    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->d:Landroid/widget/MediaController;

    const v0, 0x7f0e05a0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/ESVideoView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:Lcom/estrongs/android/ui/view/ESVideoView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:Lcom/estrongs/android/ui/view/ESVideoView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->d:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->d:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:Lcom/estrongs/android/ui/view/ESVideoView;

    new-instance v1, Lcom/estrongs/android/pop/app/me;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/me;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:Lcom/estrongs/android/ui/view/ESVideoView;

    new-instance v1, Lcom/estrongs/android/pop/app/mk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/mk;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:Lcom/estrongs/android/ui/view/ESVideoView;

    new-instance v1, Lcom/estrongs/android/pop/app/mm;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/mm;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/mo;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/mo;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const/4 v5, 0x1

    const v4, 0x7f0803e4

    const v3, 0x7f080226

    const v1, 0x1080027

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08067e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/mv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/mv;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08046a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/mw;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/mw;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080680

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/mf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/mf;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08067f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/mg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/mg;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->x:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->x:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->x:Landroid/app/ProgressDialog;

    const v1, 0x7f08067d

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->x:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->x:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->x:Landroid/app/ProgressDialog;

    const v1, 0x7f08067c

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->x:Landroid/app/ProgressDialog;

    const v1, 0x7f080221

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/mh;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/mh;-><init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->x:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->y:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->y:Landroid/app/ProgressDialog;

    const v1, 0x7f0805b6

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->y:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->j:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c:I

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->o:Z

    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "playback_position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c:I

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:Lcom/estrongs/android/ui/view/ESVideoView;

    iget v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->start()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "playback_position"

    iget v1, p0, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onStop()V

    return-void
.end method
