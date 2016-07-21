.class public Lcom/flurry/sdk/gq;
.super Landroid/widget/VideoView;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Landroid/media/MediaPlayer$OnPreparedListener;

.field private c:Lcom/flurry/sdk/gq$a;

.field private d:F

.field private e:Landroid/net/Uri;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/flurry/sdk/gq$b;

.field private m:Landroid/media/AudioManager;

.field private n:Landroid/media/MediaPlayer;

.field private o:Z

.field private p:Z

.field private q:Landroid/media/MediaPlayer$OnCompletionListener;

.field private r:Landroid/media/MediaPlayer$OnErrorListener;

.field private final s:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/ln;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gq;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/gq$a;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/gq;->d:F

    iput-object v2, p0, Lcom/flurry/sdk/gq;->e:Landroid/net/Uri;

    iput v1, p0, Lcom/flurry/sdk/gq;->f:I

    iput v1, p0, Lcom/flurry/sdk/gq;->g:I

    iput v1, p0, Lcom/flurry/sdk/gq;->h:I

    iput v1, p0, Lcom/flurry/sdk/gq;->i:I

    iput v3, p0, Lcom/flurry/sdk/gq;->j:I

    iput v3, p0, Lcom/flurry/sdk/gq;->k:I

    sget-object v0, Lcom/flurry/sdk/gq$b;->a:Lcom/flurry/sdk/gq$b;

    iput-object v0, p0, Lcom/flurry/sdk/gq;->l:Lcom/flurry/sdk/gq$b;

    iput-object v2, p0, Lcom/flurry/sdk/gq;->m:Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/flurry/sdk/gq;->n:Landroid/media/MediaPlayer;

    iput-boolean v1, p0, Lcom/flurry/sdk/gq;->o:Z

    iput-boolean v1, p0, Lcom/flurry/sdk/gq;->p:Z

    new-instance v0, Lcom/flurry/sdk/gq$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gq$1;-><init>(Lcom/flurry/sdk/gq;)V

    iput-object v0, p0, Lcom/flurry/sdk/gq;->a:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/flurry/sdk/gq$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gq$2;-><init>(Lcom/flurry/sdk/gq;)V

    iput-object v0, p0, Lcom/flurry/sdk/gq;->q:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/flurry/sdk/gq$3;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gq$3;-><init>(Lcom/flurry/sdk/gq;)V

    iput-object v0, p0, Lcom/flurry/sdk/gq;->r:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/flurry/sdk/gq$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gq$4;-><init>(Lcom/flurry/sdk/gq;)V

    iput-object v0, p0, Lcom/flurry/sdk/gq;->s:Lcom/flurry/sdk/kb;

    iput-object p2, p0, Lcom/flurry/sdk/gq;->c:Lcom/flurry/sdk/gq$a;

    invoke-virtual {p0}, Lcom/flurry/sdk/gq;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/flurry/sdk/gq;->m:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/flurry/sdk/gq;->m:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gq;->m:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/gq;->i:I

    :cond_0
    invoke-direct {p0, p2}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq$a;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gq;F)F
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/gq;->d:F

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gq;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/gq;->h:I

    return p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gq;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gq;->m:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gq;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gq;->n:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gq;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gq;->e:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq$b;)Lcom/flurry/sdk/gq$b;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gq;->l:Lcom/flurry/sdk/gq$b;

    return-object p1
.end method

.method private a(Lcom/flurry/sdk/gq$a;)V
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Lcom/flurry/sdk/gq$b;->b:Lcom/flurry/sdk/gq$b;

    iput-object v0, p0, Lcom/flurry/sdk/gq;->l:Lcom/flurry/sdk/gq$b;

    iput-object p1, p0, Lcom/flurry/sdk/gq;->c:Lcom/flurry/sdk/gq$a;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/gq;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/gq;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gq;->requestFocus()Z

    invoke-virtual {p0}, Lcom/flurry/sdk/gq;->requestLayout()V

    invoke-static {}, Lcom/flurry/sdk/lo;->a()Lcom/flurry/sdk/lo;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gq;->s:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lo;->a(Lcom/flurry/sdk/kb;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gq;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gq;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/gq;)I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/gq;->f:I

    return v0
.end method

.method static synthetic b(Lcom/flurry/sdk/gq;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/gq;->g:I

    return p1
.end method

.method static synthetic c(Lcom/flurry/sdk/gq;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gq;->m:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/gq;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gq;->o:Z

    return v0
.end method

.method static synthetic e(Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gq;->c:Lcom/flurry/sdk/gq$a;

    return-object v0
.end method

.method static synthetic f(Lcom/flurry/sdk/gq;)F
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/gq;->d:F

    return v0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/gq;->b:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gq;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gq;->setFocusableInTouchMode(Z)V

    invoke-direct {p0}, Lcom/flurry/sdk/gq;->n()V

    invoke-virtual {p0}, Lcom/flurry/sdk/gq;->pause()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gq;->n:Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/flurry/sdk/lo;->a()Lcom/flurry/sdk/lo;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gq;->s:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lo;->b(Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gq;->e:Landroid/net/Uri;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gq;->a:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gq;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/flurry/sdk/gq;->q:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gq;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/flurry/sdk/gq;->r:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gq;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gq;->pause()V

    invoke-direct {p0}, Lcom/flurry/sdk/gq;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gq;->e:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gq;->setVideoURI(Landroid/net/Uri;)V

    :goto_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gq;->requestFocus()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gq;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gq;->setVideoPath(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private n()V
    .locals 3

    invoke-virtual {p0}, Lcom/flurry/sdk/gq;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/flurry/sdk/gq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private o()Z
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gq;->e:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gq;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gq;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/gq;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gq;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gq;->o:Z

    return-void
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gq;->seekTo(I)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gq;->start()V

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;I)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gq;->b:Ljava/lang/String;

    const-string v2, "Video setVideoURI cannot have null value."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Lcom/flurry/sdk/gq;->f:I

    iput-object p1, p0, Lcom/flurry/sdk/gq;->e:Landroid/net/Uri;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gq;->b:Ljava/lang/String;

    const-string v2, "Video setVideoURI cannot have null value."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Lcom/flurry/sdk/gq;->f:I

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gq;->e:Landroid/net/Uri;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/gq;->o:Z

    return-void
.end method

.method public b()V
    .locals 5

    const/4 v4, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/gq;->m:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flurry/sdk/gq;->h:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/gq;->m:Landroid/media/AudioManager;

    iget v1, p0, Lcom/flurry/sdk/gq;->h:I

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/gq;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gq;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    iput-boolean v2, p0, Lcom/flurry/sdk/gq;->o:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gq;->m:Landroid/media/AudioManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gq;->o:Z

    return v0
.end method

.method public d()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/gq;->l:Lcom/flurry/sdk/gq$b;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/flurry/sdk/gq;->l:Lcom/flurry/sdk/gq$b;

    sget-object v4, Lcom/flurry/sdk/gq$b;->f:Lcom/flurry/sdk/gq$b;

    invoke-virtual {v3, v4}, Lcom/flurry/sdk/gq$b;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public e()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/gq;->l:Lcom/flurry/sdk/gq$b;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/flurry/sdk/gq;->l:Lcom/flurry/sdk/gq$b;

    sget-object v4, Lcom/flurry/sdk/gq$b;->e:Lcom/flurry/sdk/gq$b;

    invoke-virtual {v3, v4}, Lcom/flurry/sdk/gq$b;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gq;->l:Lcom/flurry/sdk/gq$b;

    sget-object v1, Lcom/flurry/sdk/gq$b;->c:Lcom/flurry/sdk/gq$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gq$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gq;->l:Lcom/flurry/sdk/gq$b;

    sget-object v1, Lcom/flurry/sdk/gq$b;->e:Lcom/flurry/sdk/gq$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gq$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/flurry/sdk/gq;->m:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gq;->m:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/flurry/sdk/gq;->h:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, Lcom/flurry/sdk/gq;->pause()V

    invoke-direct {p0}, Lcom/flurry/sdk/gq;->l()V

    return-void
.end method

.method public getCurrentPosition()I
    .locals 5

    const/high16 v0, -0x80000000

    :try_start_0
    invoke-super {p0}, Landroid/widget/VideoView;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/flurry/sdk/gq;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlayer current position issue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/sdk/kg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOffsetStartTime()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getVideoLength()I
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/gq;->getDuration()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/gq;->l()V

    return-void
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gq;->p:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gq;->p:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/VideoView;->onAttachedToWindow()V

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/gq;->m()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget v0, p0, Lcom/flurry/sdk/gq;->g:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gq;->c:Lcom/flurry/sdk/gq$a;

    iget v1, p0, Lcom/flurry/sdk/gq;->g:I

    invoke-interface {v0, v1}, Lcom/flurry/sdk/gq$a;->g(I)V

    :cond_0
    invoke-super {p0}, Landroid/widget/VideoView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/flurry/sdk/gq;->pause()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/flurry/sdk/gq;->c:Lcom/flurry/sdk/gq$a;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/flurry/sdk/gq;->j:I

    if-eq v0, v2, :cond_0

    iget v2, p0, Lcom/flurry/sdk/gq;->k:I

    if-eq v1, v2, :cond_0

    iput v0, p0, Lcom/flurry/sdk/gq;->j:I

    iput v1, p0, Lcom/flurry/sdk/gq;->k:I

    iget-object v2, p0, Lcom/flurry/sdk/gq;->c:Lcom/flurry/sdk/gq$a;

    invoke-interface {v2, v0, v1}, Lcom/flurry/sdk/gq$a;->a(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gq;->p:Z

    invoke-super {p0, p1}, Landroid/widget/VideoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/VideoView;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    iget v0, p0, Lcom/flurry/sdk/gq;->g:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gq;->c:Lcom/flurry/sdk/gq$a;

    iget v1, p0, Lcom/flurry/sdk/gq;->g:I

    invoke-interface {v0, v1}, Lcom/flurry/sdk/gq$a;->f(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gq;->c:Lcom/flurry/sdk/gq$a;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/flurry/sdk/gq$a;->e(I)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    sget-object v0, Lcom/flurry/sdk/gq$b;->e:Lcom/flurry/sdk/gq$b;

    iput-object v0, p0, Lcom/flurry/sdk/gq;->l:Lcom/flurry/sdk/gq$b;

    return-void
.end method

.method public resume()V
    .locals 1

    invoke-super {p0}, Landroid/widget/VideoView;->resume()V

    sget-object v0, Lcom/flurry/sdk/gq$b;->d:Lcom/flurry/sdk/gq$b;

    iput-object v0, p0, Lcom/flurry/sdk/gq;->l:Lcom/flurry/sdk/gq$b;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 1

    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    sget-object v0, Lcom/flurry/sdk/gq$b;->d:Lcom/flurry/sdk/gq$b;

    iput-object v0, p0, Lcom/flurry/sdk/gq;->l:Lcom/flurry/sdk/gq$b;

    return-void
.end method

.method public suspend()V
    .locals 1

    invoke-super {p0}, Landroid/widget/VideoView;->suspend()V

    sget-object v0, Lcom/flurry/sdk/gq$b;->g:Lcom/flurry/sdk/gq$b;

    iput-object v0, p0, Lcom/flurry/sdk/gq;->l:Lcom/flurry/sdk/gq$b;

    return-void
.end method
