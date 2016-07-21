.class public Lcom/estrongs/android/view/music/f;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:I

.field b:I

.field private d:Lcom/estrongs/android/pop/app/gq;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Landroid/content/Context;

.field private m:Lcom/estrongs/android/view/music/l;

.field private n:Z

.field private o:Lcom/estrongs/android/pop/app/c/k;

.field private p:Landroid/os/Handler;

.field private q:I

.field private r:I

.field private s:Lcom/estrongs/android/pop/app/gp;

.field private final t:Landroid/content/BroadcastReceiver;

.field private final u:Landroid/content/BroadcastReceiver;

.field private v:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/view/music/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/view/music/f;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    iput-object v0, p0, Lcom/estrongs/android/view/music/f;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/android/view/music/f;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/view/music/f;->g:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/estrongs/android/view/music/f;->h:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/music/f;->i:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/music/f;->j:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/music/f;->k:Z

    iput v2, p0, Lcom/estrongs/android/view/music/f;->a:I

    iput v2, p0, Lcom/estrongs/android/view/music/f;->b:I

    iput-object v0, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    iput-boolean v1, p0, Lcom/estrongs/android/view/music/f;->n:Z

    new-instance v0, Lcom/estrongs/android/pop/app/c/k;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/c/k;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/music/f;->o:Lcom/estrongs/android/pop/app/c/k;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/music/f;->p:Landroid/os/Handler;

    iput v1, p0, Lcom/estrongs/android/view/music/f;->q:I

    iput v1, p0, Lcom/estrongs/android/view/music/f;->r:I

    new-instance v0, Lcom/estrongs/android/view/music/g;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/music/g;-><init>(Lcom/estrongs/android/view/music/f;)V

    iput-object v0, p0, Lcom/estrongs/android/view/music/f;->s:Lcom/estrongs/android/pop/app/gp;

    new-instance v0, Lcom/estrongs/android/view/music/h;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/music/h;-><init>(Lcom/estrongs/android/view/music/f;)V

    iput-object v0, p0, Lcom/estrongs/android/view/music/f;->t:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/estrongs/android/view/music/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/music/i;-><init>(Lcom/estrongs/android/view/music/f;)V

    iput-object v0, p0, Lcom/estrongs/android/view/music/f;->u:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/estrongs/android/view/music/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/music/j;-><init>(Lcom/estrongs/android/view/music/f;)V

    iput-object v0, p0, Lcom/estrongs/android/view/music/f;->v:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/music/f;Lcom/estrongs/android/pop/app/c/k;)Lcom/estrongs/android/pop/app/c/k;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/music/f;->o:Lcom/estrongs/android/pop/app/c/k;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/music/f;Lcom/estrongs/android/pop/app/gq;)Lcom/estrongs/android/pop/app/gq;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/view/music/l;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/music/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/music/f;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(II)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/view/music/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/view/music/k;-><init>(Lcom/estrongs/android/view/music/f;II)V

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/k;->start()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/view/music/f;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/view/music/l;->a(II)V

    :cond_1
    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/gq;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/app/gq;->a(Lcom/estrongs/android/pop/app/gp;)V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gq;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/app/gq;->a(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gq;->n()V

    invoke-virtual {p1, v1}, Lcom/estrongs/android/pop/app/gq;->a(Z)V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gq;->q()V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gq;->z()V

    iput-boolean v1, p0, Lcom/estrongs/android/view/music/f;->n:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/view/music/f;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/view/music/f;->a(II)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/view/music/f;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/music/f;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/view/music/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/music/f;->m()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/view/music/f;)Lcom/estrongs/android/pop/app/gp;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->s:Lcom/estrongs/android/pop/app/gp;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/view/music/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/music/f;->n()V

    return-void
.end method

.method private k()V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/view/music/f;->n:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ContextWrapper;

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/music/f;->n:Z

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/view/music/f;->l()V

    return-void
.end method

.method private l()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/estrongs/android/view/music/f;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->l:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/view/music/f;->l:Landroid/content/Context;

    const-class v3, Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/estrongs/android/view/music/f;->v:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v4, p0, Lcom/estrongs/android/view/music/f;->h:Z

    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/view/music/f;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->v:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/music/f;->h:Z

    :cond_0
    return-void
.end method

.method private n()V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->e:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->q()V

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->b()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    iget-wide v4, v0, Lcom/estrongs/android/pop/app/c/j;->a:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->d()V

    move-object v1, v0

    :goto_0
    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/c/j;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/c/m;->a(Lcom/estrongs/android/pop/app/c/j;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->b()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gq;->a(Lcom/estrongs/android/pop/app/c/j;)Z

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->v()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/view/music/f;->r:I

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->u()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/view/music/f;->q:I

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->i()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/estrongs/android/view/music/f;->i:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/view/music/l;->a(IZ)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/music/f;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->l()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/estrongs/android/view/music/f;->i:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/music/l;->d(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/music/l;->a(I)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->v()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/view/music/f;->r:I

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->u()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/view/music/f;->q:I

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/android/view/music/f;->i()V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/estrongs/android/view/music/f;->i:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/music/l;->a(I)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/estrongs/android/view/music/f;->i:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/music/l;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/music/l;->c(I)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->l()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    :goto_4
    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/estrongs/android/view/music/f;->i:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/view/music/l;->d(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/view/music/l;->a(I)V

    goto :goto_3

    :cond_9
    move v3, v0

    goto :goto_4
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->s:Lcom/estrongs/android/pop/app/gp;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gq;->a(Lcom/estrongs/android/pop/app/gp;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->l()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/estrongs/android/view/music/f;->i:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/music/l;->d(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/estrongs/android/view/music/f;->i:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/music/l;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/estrongs/android/view/music/f;->i:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/music/l;->e(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->l()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/gq;->d(I)Z

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/estrongs/android/view/music/f;->i:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/music/l;->a(I)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-direct {p0}, Lcom/estrongs/android/view/music/f;->l()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/music/f;->l:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/view/music/f;->k()V

    return-void
.end method

.method public a(Lcom/estrongs/android/view/music/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gq;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->n()V

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gq;->a(Z)V

    goto :goto_0
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/view/music/f;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/view/music/f;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->o()V

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/view/music/f;->m()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/estrongs/android/view/music/f;->i:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    invoke-virtual {v0}, Lcom/estrongs/android/view/music/l;->b()V

    :cond_3
    return-void
.end method

.method protected d()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/music/f;->i:Z

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/f;->b()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/f;->c()V

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/view/music/f;->m()V

    :goto_0
    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/music/f;->a(Lcom/estrongs/android/pop/app/gq;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/estrongs/android/view/music/f;->k:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/music/f;->k:Z

    invoke-direct {p0}, Lcom/estrongs/android/view/music/f;->l()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/estrongs/android/view/music/f;->m()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/estrongs/android/view/music/f;->m()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public e()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gq;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gq;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/gq;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/view/music/f;->f()V

    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->k()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->q()V

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/estrongs/android/view/music/f;->i:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/view/music/l;->a(IZ)V

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public f()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/gq;->a(J)V

    return-void
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->p()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->x()Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->w()V

    goto :goto_1
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->j()I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gq;->q()V

    iget-object v2, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/estrongs/android/view/music/f;->i:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/view/music/l;->a(IZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v4

    invoke-virtual {v3}, Lcom/estrongs/android/pop/ai;->D()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v4}, Lcom/estrongs/android/pop/app/c/m;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {v4}, Lcom/estrongs/android/pop/app/c/m;->e()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/gq;->a(Lcom/estrongs/android/pop/app/c/j;)Z

    :cond_2
    invoke-virtual {v3}, Lcom/estrongs/android/pop/ai;->E()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/i;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/estrongs/android/view/music/f;->i:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/view/music/f;->m:Lcom/estrongs/android/view/music/l;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/view/music/l;->a(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public j()Lcom/estrongs/android/pop/app/gq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/music/f;->d:Lcom/estrongs/android/pop/app/gq;

    return-object v0
.end method
