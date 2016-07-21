.class public Lcom/estrongs/android/ui/view/ESVideoView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field private A:Lcom/estrongs/android/ui/view/av;

.field private B:Lcom/estrongs/android/ui/view/au;

.field private C:Landroid/media/MediaPlayer$OnCompletionListener;

.field private D:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private E:Landroid/media/MediaPlayer$OnErrorListener;

.field private F:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field protected a:Landroid/net/Uri;

.field b:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field c:Landroid/media/MediaPlayer$OnPreparedListener;

.field d:Landroid/view/SurfaceHolder$Callback;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/view/SurfaceHolder;

.field private j:Landroid/media/MediaPlayer;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/widget/MediaController;

.field private p:Landroid/media/MediaPlayer$OnCompletionListener;

.field private q:Landroid/media/MediaPlayer$OnPreparedListener;

.field private r:I

.field private s:Landroid/media/MediaPlayer$OnErrorListener;

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/content/Context;

.field private y:Z

.field private z:Lcom/estrongs/android/ui/view/aw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->e:Ljava/lang/String;

    iput v2, p0, Lcom/estrongs/android/ui/view/ESVideoView;->g:I

    iput v2, p0, Lcom/estrongs/android/ui/view/ESVideoView;->h:I

    iput-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->i:Landroid/view/SurfaceHolder;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/ESVideoView;->y:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->z:Lcom/estrongs/android/ui/view/aw;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->A:Lcom/estrongs/android/ui/view/av;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->B:Lcom/estrongs/android/ui/view/au;

    new-instance v0, Lcom/estrongs/android/ui/view/an;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/an;-><init>(Lcom/estrongs/android/ui/view/ESVideoView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->b:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcom/estrongs/android/ui/view/ao;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/ao;-><init>(Lcom/estrongs/android/ui/view/ESVideoView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->c:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/estrongs/android/ui/view/ap;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/ap;-><init>(Lcom/estrongs/android/ui/view/ESVideoView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->C:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/estrongs/android/ui/view/aq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/aq;-><init>(Lcom/estrongs/android/ui/view/ESVideoView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->D:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/estrongs/android/ui/view/ar;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/ar;-><init>(Lcom/estrongs/android/ui/view/ESVideoView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->E:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/estrongs/android/ui/view/as;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/as;-><init>(Lcom/estrongs/android/ui/view/ESVideoView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->F:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/estrongs/android/ui/view/at;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/at;-><init>(Lcom/estrongs/android/ui/view/ESVideoView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->d:Landroid/view/SurfaceHolder$Callback;

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->e()V

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->x:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/ui/view/ESVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->e()V

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->x:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->e:Ljava/lang/String;

    iput v2, p0, Lcom/estrongs/android/ui/view/ESVideoView;->g:I

    iput v2, p0, Lcom/estrongs/android/ui/view/ESVideoView;->h:I

    iput-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->i:Landroid/view/SurfaceHolder;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/ESVideoView;->y:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->z:Lcom/estrongs/android/ui/view/aw;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->A:Lcom/estrongs/android/ui/view/av;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->B:Lcom/estrongs/android/ui/view/au;

    new-instance v0, Lcom/estrongs/android/ui/view/an;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/an;-><init>(Lcom/estrongs/android/ui/view/ESVideoView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->b:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcom/estrongs/android/ui/view/ao;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/ao;-><init>(Lcom/estrongs/android/ui/view/ESVideoView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->c:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/estrongs/android/ui/view/ap;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/ap;-><init>(Lcom/estrongs/android/ui/view/ESVideoView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->C:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/estrongs/android/ui/view/aq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/aq;-><init>(Lcom/estrongs/android/ui/view/ESVideoView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->D:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/estrongs/android/ui/view/ar;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/ar;-><init>(Lcom/estrongs/android/ui/view/ESVideoView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->E:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/estrongs/android/ui/view/as;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/as;-><init>(Lcom/estrongs/android/ui/view/ESVideoView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->F:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/estrongs/android/ui/view/at;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/at;-><init>(Lcom/estrongs/android/ui/view/ESVideoView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->d:Landroid/view/SurfaceHolder$Callback;

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->e()V

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->x:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/ESVideoView;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->k:I

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/ESVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->k:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/ESVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->i:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/ESVideoView;Lcom/estrongs/android/ui/view/aw;)Lcom/estrongs/android/ui/view/aw;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->z:Lcom/estrongs/android/ui/view/aw;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/ESVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/ESVideoView;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->l:I

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/ESVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->l:I

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/ESVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->v:Z

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/ESVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->g:I

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->q:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/ESVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->w:Z

    return p1
.end method

.method static synthetic d(Lcom/estrongs/android/ui/view/ESVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->h:I

    return p1
.end method

.method static synthetic d(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/view/ESVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->y:Z

    return p1
.end method

.method static synthetic e(Lcom/estrongs/android/ui/view/ESVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->r:I

    return p1
.end method

.method static synthetic e(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/widget/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    return-object v0
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/estrongs/android/ui/view/ESVideoView;->k:I

    iput v2, p0, Lcom/estrongs/android/ui/view/ESVideoView;->l:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->d:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/view/ESVideoView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/view/ESVideoView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->requestFocus()Z

    iput v2, p0, Lcom/estrongs/android/ui/view/ESVideoView;->g:I

    iput v2, p0, Lcom/estrongs/android/ui/view/ESVideoView;->h:I

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/ui/view/ESVideoView;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->t:I

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/view/ESVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->m:I

    return p1
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->z:Lcom/estrongs/android/ui/view/aw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/view/aw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/aw;-><init>(Lcom/estrongs/android/ui/view/ESVideoView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->z:Lcom/estrongs/android/ui/view/aw;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->z:Lcom/estrongs/android/ui/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/aw;->start()V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/ui/view/ESVideoView;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->m:I

    return v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/view/ESVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->n:I

    return p1
.end method

.method private g()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->i:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->x:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->f()V

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->c:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->b:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->f:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->C:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->E:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->F:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->r:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->x:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ESVideoView;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->i:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->D:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->g:I

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->h()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/ESVideoView;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput v4, p0, Lcom/estrongs/android/ui/view/ESVideoView;->g:I

    iput v4, p0, Lcom/estrongs/android/ui/view/ESVideoView;->h:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->E:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v5, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    iput-object v7, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/ESVideoView;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput v4, p0, Lcom/estrongs/android/ui/view/ESVideoView;->g:I

    iput v4, p0, Lcom/estrongs/android/ui/view/ESVideoView;->h:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->E:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v5, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    iput-object v7, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    goto/16 :goto_0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/view/ESVideoView;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->n:I

    return v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/view/ESVideoView;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->h:I

    return v0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->p:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/view/ESVideoView;)Lcom/estrongs/android/ui/view/av;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->A:Lcom/estrongs/android/ui/view/av;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/ui/view/ESVideoView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/ui/view/ESVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->s:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/ui/view/ESVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->g()V

    return-void
.end method

.method static synthetic o(Lcom/estrongs/android/ui/view/ESVideoView;)Lcom/estrongs/android/ui/view/aw;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->z:Lcom/estrongs/android/ui/view/aw;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/ui/view/al;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/view/al;-><init>(Lcom/estrongs/android/ui/view/ESVideoView;Landroid/media/MediaPlayer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iput v3, p0, Lcom/estrongs/android/ui/view/ESVideoView;->g:I

    iput v3, p0, Lcom/estrongs/android/ui/view/ESVideoView;->h:I

    iput-boolean v3, p0, Lcom/estrongs/android/ui/view/ESVideoView;->y:Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->start()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->t:I

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->t:I

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->a:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->a(ZZ)V

    iput v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->t:I

    :cond_0
    iput-object p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->a:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->g()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->requestLayout()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->invalidate()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/ui/view/ESVideoView;->a(ZZ)V

    return-void
.end method

.method public a(ZZ)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/ui/view/am;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/view/am;-><init>(Lcom/estrongs/android/ui/view/ESVideoView;Landroid/media/MediaPlayer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    iput v3, p0, Lcom/estrongs/android/ui/view/ESVideoView;->g:I

    if-eqz p1, :cond_0

    iput v3, p0, Lcom/estrongs/android/ui/view/ESVideoView;->h:I

    :cond_0
    iput-boolean v3, p0, Lcom/estrongs/android/ui/view/ESVideoView;->y:Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/estrongs/android/ui/view/ESVideoView;->a(ZZ)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->g()V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->y:Z

    return v0
.end method

.method public canPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->u:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->v:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->w:Z

    return v0
.end method

.method public d()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->g:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->g:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->r:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->z:Lcom/estrongs/android/ui/view/aw;

    iget v0, v0, Lcom/estrongs/android/ui/view/aw;->b:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->f:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->f:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->f:I

    iget v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->f:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->f:I

    iget v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->f:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x52

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->d()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    if-eqz v0, :cond_8

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->pause()V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->start()V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    :cond_4
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->start()V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    :cond_5
    const/16 v0, 0x56

    if-eq p1, v0, :cond_6

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->pause()V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->i()V

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 4

    iget v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->k:I

    invoke-static {v0, p1}, Lcom/estrongs/android/ui/view/ESVideoView;->getDefaultSize(II)I

    move-result v1

    iget v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->l:I

    invoke-static {v0, p2}, Lcom/estrongs/android/ui/view/ESVideoView;->getDefaultSize(II)I

    move-result v0

    iget v2, p0, Lcom/estrongs/android/ui/view/ESVideoView;->k:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/estrongs/android/ui/view/ESVideoView;->l:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/estrongs/android/ui/view/ESVideoView;->k:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/estrongs/android/ui/view/ESVideoView;->l:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    iget v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->l:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/estrongs/android/ui/view/ESVideoView;->k:I

    div-int/2addr v0, v2

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/ui/view/ESVideoView;->setMeasuredDimension(II)V

    return-void

    :cond_1
    iget v2, p0, Lcom/estrongs/android/ui/view/ESVideoView;->k:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/estrongs/android/ui/view/ESVideoView;->l:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    iget v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->k:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/estrongs/android/ui/view/ESVideoView;->l:I

    div-int/2addr v1, v2

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->i()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->i()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    const/4 v1, 0x4

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->y:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iput v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->g:I

    :cond_1
    iput v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->h:I

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->y:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->A:Lcom/estrongs/android/ui/view/av;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->A:Lcom/estrongs/android/ui/view/av;

    invoke-interface {v0}, Lcom/estrongs/android/ui/view/av;->a()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->z:Lcom/estrongs/android/ui/view/aw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->z:Lcom/estrongs/android/ui/view/aw;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/view/aw;->a(I)V

    :cond_2
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iput-object p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->o:Landroid/widget/MediaController;

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->h()V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->p:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnDrawListener(Lcom/estrongs/android/ui/view/au;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->B:Lcom/estrongs/android/ui/view/au;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->s:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->q:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setSeekListener(Lcom/estrongs/android/ui/view/av;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->A:Lcom/estrongs/android/ui/view/av;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/ESVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->y:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESVideoView;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iput v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->g:I

    :cond_1
    iput v1, p0, Lcom/estrongs/android/ui/view/ESVideoView;->h:I

    goto :goto_0
.end method
