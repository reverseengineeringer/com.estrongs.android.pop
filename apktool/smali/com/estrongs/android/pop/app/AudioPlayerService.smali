.class public Lcom/estrongs/android/pop/app/AudioPlayerService;
.super Landroid/app/Service;


# static fields
.field public static b:Lcom/estrongs/android/pop/app/AudioPlayerService;

.field public static j:Ljava/lang/String;


# instance fields
.field public a:Z

.field public c:Lcom/estrongs/android/g/a;

.field public d:Z

.field e:Landroid/media/MediaPlayer$OnCompletionListener;

.field f:Landroid/media/MediaPlayer$OnErrorListener;

.field g:Lcom/estrongs/android/pop/app/m;

.field public h:Z

.field i:Z

.field private k:Ljava/lang/Object;

.field private final l:Landroid/os/IBinder;

.field private m:Z

.field private n:Z

.field private o:Lcom/estrongs/android/ui/notification/b;

.field private p:Landroid/media/MediaPlayer;

.field private q:Z

.field private r:Lcom/estrongs/android/pop/app/c/k;

.field private final s:Landroid/content/BroadcastReceiver;

.field private final t:Landroid/content/BroadcastReceiver;

.field private final u:Landroid/content/BroadcastReceiver;

.field private final v:Landroid/content/BroadcastReceiver;

.field private w:Ljava/lang/Object;

.field private x:Lcom/estrongs/android/pop/app/gp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const-string v0, "http://127.0.0.1:35864/"

    sput-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->k:Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/pop/app/u;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/u;-><init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:Landroid/os/IBinder;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->n:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->a:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->c:Lcom/estrongs/android/g/a;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->d:Z

    new-instance v0, Lcom/estrongs/android/pop/app/n;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/n;-><init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/estrongs/android/pop/app/p;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/p;-><init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->e:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/estrongs/android/pop/app/q;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/q;-><init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->f:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/estrongs/android/pop/app/r;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/r;-><init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/estrongs/android/pop/app/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/s;-><init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/estrongs/android/pop/app/t;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/t;-><init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->v:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->g:Lcom/estrongs/android/pop/app/m;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->h:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->i:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->w:Ljava/lang/Object;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    return-void
.end method

.method private H()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->b()I

    move-result v0

    return v0
.end method

.method private declared-synchronized I()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->g:Lcom/estrongs/android/pop/app/m;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/pop/app/m;

    invoke-direct {v0, p0, p0}, Lcom/estrongs/android/pop/app/m;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->g:Lcom/estrongs/android/pop/app/m;

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->w:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->g:Lcom/estrongs/android/pop/app/m;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/m;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->i:Z

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized J()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->g:Lcom/estrongs/android/pop/app/m;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->w:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->g:Lcom/estrongs/android/pop/app/m;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/m;->b()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->i:Z

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private K()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/k;->e()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ai;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/k;->g()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ai;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/gp;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    return-object v0
.end method

.method private a(Landroid/media/MediaPlayer;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/o;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/o;-><init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/o;->start()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/AudioPlayerService;Landroid/media/MediaPlayer;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Landroid/media/MediaPlayer;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/c/k;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/AudioPlayerService;)I
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->H()I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/AudioPlayerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:Z

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/AudioPlayerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->n:Z

    return v0
.end method


# virtual methods
.method public A()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->e()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->o:Lcom/estrongs/android/ui/notification/b;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/b;->a()V

    :cond_0
    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/k;->j()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->g()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/c/i;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->g()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/k;->j()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->g()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/c/i;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f080145

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public D()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->E()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020295

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public E()Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/k;->j()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->g()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/c/i;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public F()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->n:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/k;->f()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/gp;->e(I)V

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->I()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-static {}, Lcom/estrongs/android/util/k;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->o:Lcom/estrongs/android/ui/notification/b;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->A()V

    goto :goto_0
.end method

.method public G()Lcom/estrongs/android/pop/app/c/k;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->e()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/k;->e()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/j;->b()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/c/k;->a(I)V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/gp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/c/i;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/c/k;->b(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->z()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->A()V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/pop/app/c/j;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/c/k;->a(Lcom/estrongs/android/pop/app/c/j;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->c()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/c/k;->b(I)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/c/k;->a(Ljava/util/List;)V

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->d()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->m()I

    move-result v0

    return v0
.end method

.method public d(I)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->h()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->h:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->h:Z

    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->k:Ljava/lang/Object;

    monitor-enter v3

    if-gez p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->a()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/c/k;->d(I)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->j()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/gp;->a(I)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->h:Z

    monitor-exit v3

    move v0, v2

    goto :goto_0

    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->g()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    if-nez v3, :cond_6

    :cond_5
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    iget-object v0, v0, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const v3, 0x8c18

    invoke-static {v0, v3}, Lcom/estrongs/android/util/ap;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_1
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->K()V

    :cond_8
    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/c/k;->f()I

    move-result v4

    :try_start_2
    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    invoke-interface {v3, v4}, Lcom/estrongs/android/pop/app/gp;->a(I)V

    :cond_9
    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v3, :cond_a

    :try_start_3
    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_a
    :goto_2
    :try_start_4
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->e:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->f:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->h:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->A()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v2

    goto/16 :goto_0

    :cond_b
    sget-object v3, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "/?:@"

    invoke-static {v0, v4}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_c
    const-string v3, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "http://"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "/?:@"

    invoke-static {v0, v4}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    instance-of v3, v0, Ljava/lang/IllegalStateException;

    if-nez v3, :cond_d

    instance-of v3, v0, Ljava/lang/NullPointerException;

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v3, v4, v1}, Lcom/estrongs/android/pop/app/c/k;->a(IZ)V

    :cond_d
    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->h:Z

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/AudioPlayerService;->e(I)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    if-eqz v3, :cond_f

    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    invoke-interface {v2, v4}, Lcom/estrongs/android/pop/app/gp;->g(I)V

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0

    :cond_f
    iget-object v3, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Landroid/media/MediaPlayer;)Z

    move-result v3

    if-nez v3, :cond_e

    move v0, v2

    goto/16 :goto_0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->k()I

    move-result v0

    return v0
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->f()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/app/gp;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->l()I

    move-result v0

    return v0
.end method

.method public f(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v1, p1}, Lcom/estrongs/android/pop/app/c/k;->c(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()Z

    move-result v0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->o()I

    move-result v0

    return v0
.end method

.method public h()Lcom/estrongs/android/pop/app/c/j;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->e()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->f()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:Z

    return v0
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/k;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/c/k;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->n:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->h:Z

    return v0
.end method

.method public o()V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->stopSelf()V

    invoke-static {}, Lcom/estrongs/android/util/k;->b()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->l:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    :try_start_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/i;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    sput-object p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    new-instance v0, Lcom/estrongs/android/g/a;

    const-string v1, "/sdcard/"

    const v2, 0x8c18

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/g/a;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->c:Lcom/estrongs/android/g/a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.estrongs.action.audio.control.preview"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.estrongs.action.audio.control.play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.estrongs.action.audio.control.next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.estrongs.action.audio.control.close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->v:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    :try_start_4
    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/estrongs/android/pop/app/AudioPlayerService$MediaButtonReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    new-instance v2, Lcom/estrongs/android/util/ao;

    invoke-direct {v2, v0}, Lcom/estrongs/android/util/ao;-><init>(Ljava/lang/Object;)V

    const-string v0, "registerMediaButtonEventReceiver"

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_0
    :goto_2
    :try_start_5
    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v0

    if-nez v0, :cond_1

    :try_start_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_1
    :goto_3
    new-instance v0, Lcom/estrongs/android/ui/notification/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/notification/b;-><init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->o:Lcom/estrongs/android/ui/notification/b;

    new-instance v0, Lcom/estrongs/android/pop/app/c/k;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/c/k;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    return-void

    :catch_0
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->c:Lcom/estrongs/android/g/a;

    goto :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/gp;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->c:Lcom/estrongs/android/g/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->c:Lcom/estrongs/android/g/a;

    invoke-virtual {v0}, Lcom/estrongs/android/g/a;->h()V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/estrongs/android/pop/app/AudioPlayerService$MediaButtonReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    new-instance v2, Lcom/estrongs/android/util/ao;

    invoke-direct {v2, v0}, Lcom/estrongs/android/util/ao;-><init>(Ljava/lang/Object;)V

    const-string v0, "unregisterMediaButtonEventReceiver"

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-nez v0, :cond_3

    :try_start_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    sput-object v4, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->k()V

    invoke-static {v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b([Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Z)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "isadd"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "hasplaylist"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v0, 0x0

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_3

    aget-object v4, v0, v2

    const-string v5, ".m3u"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    aget-object v4, v0, v2

    invoke-static {v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    :goto_2
    return v1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f080183

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->e()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->b()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/c/j;)Z

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->e()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move v0, v1

    :goto_4
    array-length v5, v2

    if-ge v0, v5, :cond_6

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b(Ljava/util/List;)V

    if-eqz v3, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d(I)Z

    :cond_7
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v2, 0x7f080146

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/FexApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v2, 0x7f080147

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/FexApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_1
    move-exception v4

    goto/16 :goto_1

    :cond_9
    move-object v2, v0

    goto :goto_3

    :cond_a
    move-object v2, v0

    goto :goto_3
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Z)V

    return v0
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Lcom/estrongs/android/pop/app/c/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->g()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v0

    return-object v0
.end method

.method public r()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->h:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/c/k;->i()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/c/k;->f()I

    move-result v3

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    if-nez v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->n:Z

    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    invoke-interface {v2, v3}, Lcom/estrongs/android/pop/app/gp;->c(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->A()V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->k:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/estrongs/android/pop/app/c/k;->a(IZ)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->I()V

    invoke-static {}, Lcom/estrongs/android/util/k;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    instance-of v4, v2, Ljava/lang/IllegalStateException;

    if-nez v4, :cond_4

    instance-of v2, v2, Ljava/lang/NullPointerException;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v2, v3, v0}, Lcom/estrongs/android/pop/app/c/k;->a(IZ)V

    :cond_4
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->h:Z

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->e(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    invoke-interface {v1, v3}, Lcom/estrongs/android/pop/app/gp;->g(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Landroid/media/MediaPlayer;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public s()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/k;->f()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/k;->f()I

    move-result v1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/gp;->b(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->o:Lcom/estrongs/android/ui/notification/b;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/b;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->A()V

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->J()V

    invoke-static {}, Lcom/estrongs/android/util/k;->b()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->m:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->n:Z

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->J()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->p:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-static {}, Lcom/estrongs/android/util/k;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->x:Lcom/estrongs/android/pop/app/gp;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->r:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/k;->f()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/gp;->d(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->o:Lcom/estrongs/android/ui/notification/b;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->A()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    goto :goto_0
.end method

.method public v()V
    .locals 5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()Z

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v2

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->p()I

    move-result v3

    const/16 v4, 0x1388

    if-le v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->w()V

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()Z

    goto :goto_0
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->c(I)V

    return-void
.end method

.method public x()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->f(I)Z

    goto :goto_0
.end method

.method public y()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->F()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->f(I)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->f(I)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->u()V

    goto :goto_0
.end method

.method public z()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/AudioPlayerService;->o:Lcom/estrongs/android/ui/notification/b;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/b;->i()V

    return-void
.end method
