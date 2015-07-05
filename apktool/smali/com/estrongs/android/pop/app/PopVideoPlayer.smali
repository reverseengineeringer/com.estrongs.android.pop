.class public Lcom/estrongs/android/pop/app/PopVideoPlayer;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Lcom/estrongs/android/ui/e/jb;


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:Lcom/estrongs/android/pop/app/aa;

.field private C:Lcom/estrongs/android/pop/app/r;

.field private D:Landroid/widget/TextView;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:J

.field private I:J

.field private J:Landroid/os/Handler;

.field private final K:Landroid/content/BroadcastReceiver;

.field private final L:Landroid/content/BroadcastReceiver;

.field private final M:Landroid/content/BroadcastReceiver;

.field private N:Lcom/estrongs/android/ui/e/iw;

.field private O:Lcom/estrongs/android/ui/e/ic;

.field private P:Lcom/estrongs/android/view/a/a;

.field private Q:Lcom/estrongs/android/view/a/a;

.field private R:Lcom/estrongs/android/view/a/a;

.field private S:Z

.field private final T:I

.field private final U:I

.field private V:Ljava/lang/Object;

.field private W:Lcom/estrongs/android/ui/e/iw;

.field private X:Lcom/estrongs/android/ui/e/ic;

.field private Y:Lcom/estrongs/android/view/a/a;

.field private Z:Lcom/estrongs/android/view/a/a;

.field a:Z

.field private aa:Lcom/estrongs/android/view/a/a;

.field private ab:Lcom/estrongs/android/view/a/a;

.field private ac:Landroid/graphics/Rect;

.field b:Landroid/view/View;

.field c:Z

.field protected d:Landroid/view/View;

.field e:Z

.field f:Z

.field g:Z

.field h:Lcom/estrongs/android/pop/app/i;

.field i:Ljava/lang/Boolean;

.field j:Z

.field private l:Lcom/estrongs/fs/d;

.field private m:Lcom/estrongs/android/ui/view/ESVideoView;

.field private n:Z

.field private o:Landroid/widget/FrameLayout;

.field private p:Landroid/widget/MediaController;

.field private q:Landroid/widget/MediaController;

.field private r:Lcom/estrongs/android/pop/app/ke;

.field private t:I

.field private u:Landroid/net/Uri;

.field private v:Ljava/lang/String;

.field private w:Lcom/estrongs/android/util/a;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Lcom/estrongs/fs/d;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->n:Z

    iput v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->t:I

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->u:Landroid/net/Uri;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->v:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->w:Lcom/estrongs/android/util/a;

    iput v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->A:I

    invoke-static {}, Lcom/estrongs/android/pop/app/aa;->g()Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->B:Lcom/estrongs/android/pop/app/aa;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->C:Lcom/estrongs/android/pop/app/r;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->D:Landroid/widget/TextView;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->E:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->F:Z

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->G:Z

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->H:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->I:J

    new-instance v0, Lcom/estrongs/android/pop/app/iq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/iq;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/app/jd;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/jd;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->K:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c:Z

    new-instance v0, Lcom/estrongs/android/pop/app/js;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/js;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->L:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/estrongs/android/pop/app/ju;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ju;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->M:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->S:Z

    iput v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->T:I

    iput v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->U:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h:Lcom/estrongs/android/pop/app/i;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->i:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->V:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->j:Z

    return-void
.end method

.method static synthetic A(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->n()V

    return-void
.end method

.method static synthetic B(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->q()V

    return-void
.end method

.method static synthetic C(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->G:Z

    return v0
.end method

.method static synthetic D(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/ui/e/iw;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->W:Lcom/estrongs/android/ui/e/iw;

    return-object v0
.end method

.method static synthetic E(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/fs/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Lcom/estrongs/fs/d;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopVideoPlayer;J)J
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->I:J

    return-wide p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/ui/view/ESVideoView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Lcom/estrongs/android/ui/view/ESVideoView;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v0, "http"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "127.0.0.1"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopVideoPlayer;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)V
    .locals 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->B:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->B:Lcom/estrongs/android/pop/app/aa;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->u:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->v:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/c/a;->a()I

    move-result v3

    invoke-static {v2, v3, v4, v4}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->v:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->v:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/bc;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/app/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/app/a/am;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->C:Lcom/estrongs/android/pop/app/r;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l()V

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m()V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->C:Lcom/estrongs/android/pop/app/r;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/r;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopVideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->S:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopVideoPlayer;J)J
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->H:J

    return-wide p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopVideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->u()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopVideoPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Z)V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->E:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/PopVideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->E:Z

    return p1
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/widget/MediaController;

    return-object v0
.end method

.method private e()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->u:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "http://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "127.0.0.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/PopVideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->G:Z

    return p1
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    return-object v0
.end method

.method private f()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Z)V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f()V

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->q:Landroid/widget/MediaController;

    return-object v0
.end method

.method private h()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->B:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->p()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Ljava/lang/String;

    const-string v1, "changeToCastMode error, chromecast is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->A:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->q:Landroid/widget/MediaController;

    if-nez v0, :cond_3

    new-instance v0, Lcom/estrongs/android/pop/app/jv;

    invoke-direct {v0, p0, p0}, Lcom/estrongs/android/pop/app/jv;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->q:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r:Lcom/estrongs/android/pop/app/ke;

    if-nez v0, :cond_2

    new-instance v0, Lcom/estrongs/android/pop/app/ke;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ke;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r:Lcom/estrongs/android/pop/app/ke;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->B:Lcom/estrongs/android/pop/app/aa;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r:Lcom/estrongs/android/pop/app/ke;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/aa;->a(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->B:Lcom/estrongs/android/pop/app/aa;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r:Lcom/estrongs/android/pop/app/ke;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/aa;->a(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->B:Lcom/estrongs/android/pop/app/aa;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r:Lcom/estrongs/android/pop/app/ke;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/aa;->a(Lcom/estrongs/chromecast/CastDeviceListener;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->q:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r:Lcom/estrongs/android/pop/app/ke;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->q:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z:Landroid/view/View;

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02028e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->B:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->r()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->B:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->r()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/ke;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r:Lcom/estrongs/android/pop/app/ke;

    return-object v0
.end method

.method private i()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/app/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->q:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r:Lcom/estrongs/android/pop/app/ke;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->j()V

    return-void
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/PopVideoPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->H:J

    return-wide v0
.end method

.method private k()V
    .locals 5

    const/16 v4, 0x8

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->A:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->q:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->q:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->n()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z:Landroid/view/View;

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0202b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/PopVideoPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->I:J

    return-wide v0
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->C:Lcom/estrongs/android/pop/app/r;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/r;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/r;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->C:Lcom/estrongs/android/pop/app/r;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->C:Lcom/estrongs/android/pop/app/r;

    new-instance v1, Lcom/estrongs/android/pop/app/iz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/iz;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/r;->a(Lcom/estrongs/android/pop/app/ae;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->C:Lcom/estrongs/android/pop/app/r;

    new-instance v1, Lcom/estrongs/android/pop/app/ja;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ja;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/r;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method private m()V
    .locals 3

    const/16 v2, 0x9

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->t:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/jh;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/jh;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->v()V

    return-void
.end method

.method private n()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->a()Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/ChromeCastPlayerNotificationHelper;->j()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_5

    new-instance v0, Lcom/estrongs/android/util/al;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-direct {v0, v1}, Lcom/estrongs/android/util/al;-><init>(Ljava/lang/Object;)V

    const-string v1, "resume"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/al;->a(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Lcom/estrongs/android/ui/view/ESVideoView;

    iget v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->t:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->seekTo(I)V

    :cond_2
    const-string v0, "Market"

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->j:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->u()V

    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Z

    iput v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->t:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c:Z

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->u()V

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:Z

    if-eqz v0, :cond_7

    iput v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->t:I

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:Z

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->q()V

    goto :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->q()V

    iput v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->t:I

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Z

    goto :goto_0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized o()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h:Lcom/estrongs/android/pop/app/i;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/pop/app/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/i;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h:Lcom/estrongs/android/pop/app/i;

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->V:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h:Lcom/estrongs/android/pop/app/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/i;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->i:Ljava/lang/Boolean;

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
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->s()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized p()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h:Lcom/estrongs/android/pop/app/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->V:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h:Lcom/estrongs/android/pop/app/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/i;->b()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->i:Ljava/lang/Boolean;

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
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic p(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->S:Z

    return v0
.end method

.method static synthetic q(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->x:Landroid/view/View;

    return-object v0
.end method

.method private q()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "smb://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Landroid/net/Uri;)V

    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ESVideoView;->requestFocus()Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    const/4 v2, 0x2

    iget v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->t:I

    iget-boolean v4, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:Z

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic r(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/aa;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->B:Lcom/estrongs/android/pop/app/aa;

    return-object v0
.end method

.method private r()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->N:Lcom/estrongs/android/ui/e/iw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->N:Lcom/estrongs/android/ui/e/iw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->W:Lcom/estrongs/android/ui/e/iw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->W:Lcom/estrongs/android/ui/e/iw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic s(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic t(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/pop/app/r;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->C:Lcom/estrongs/android/pop/app/r;

    return-object v0
.end method

.method private declared-synchronized u()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->start()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->J:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->F:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/l;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic u(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l()V

    return-void
.end method

.method static synthetic v(Lcom/estrongs/android/pop/app/PopVideoPlayer;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->A:I

    return v0
.end method

.method private declared-synchronized v()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->a()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->F:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/l;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic w(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g()V

    return-void
.end method

.method static synthetic x(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic y(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k()V

    return-void
.end method

.method static synthetic z(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/ui/e/iw;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->N:Lcom/estrongs/android/ui/e/iw;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->A:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    const v3, 0x7f02028d

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->N:Lcom/estrongs/android/ui/e/iw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/jb;

    invoke-direct {v0, p0, p0, v1, v1}, Lcom/estrongs/android/pop/app/jb;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->N:Lcom/estrongs/android/ui/e/iw;

    new-instance v0, Lcom/estrongs/android/ui/e/ic;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/e/ic;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->O:Lcom/estrongs/android/ui/e/ic;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->N:Lcom/estrongs/android/ui/e/iw;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->O:Lcom/estrongs/android/ui/e/ic;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/iw;->a(Lcom/estrongs/android/ui/e/ic;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->N:Lcom/estrongs/android/ui/e/iw;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->O:Lcom/estrongs/android/ui/e/ic;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/ic;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/iw;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->N:Lcom/estrongs/android/ui/e/iw;

    new-instance v1, Lcom/estrongs/android/pop/app/jc;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/jc;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/iw;->a(Lcom/estrongs/android/ui/e/ja;)V

    new-instance v0, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0b04ac

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/je;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/je;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->Q:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0b04ad

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/jf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/jf;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->P:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0b04ab

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/jg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/jg;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->R:Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->O:Lcom/estrongs/android/ui/e/ic;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ic;->b()Lcom/estrongs/android/ui/e/jk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/jk;->j()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->R:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->n:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->Q:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->N:Lcom/estrongs/android/ui/e/iw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iw;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->N:Lcom/estrongs/android/ui/e/iw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iw;->c()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->N:Lcom/estrongs/android/ui/e/iw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iw;->d()V

    goto :goto_0
.end method

.method public c()V
    .locals 5

    const v4, 0x7f0b0220

    const v3, 0x7f0202a4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->W:Lcom/estrongs/android/ui/e/iw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/ji;

    invoke-direct {v0, p0, p0, v1, v1}, Lcom/estrongs/android/pop/app/ji;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->W:Lcom/estrongs/android/ui/e/iw;

    new-instance v0, Lcom/estrongs/android/ui/e/ic;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/e/ic;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->X:Lcom/estrongs/android/ui/e/ic;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->W:Lcom/estrongs/android/ui/e/iw;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->X:Lcom/estrongs/android/ui/e/ic;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/iw;->a(Lcom/estrongs/android/ui/e/ic;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->W:Lcom/estrongs/android/ui/e/iw;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->X:Lcom/estrongs/android/ui/e/ic;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/ic;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/iw;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->W:Lcom/estrongs/android/ui/e/iw;

    new-instance v1, Lcom/estrongs/android/pop/app/jj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/jj;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/iw;->a(Lcom/estrongs/android/ui/e/ja;)V

    new-instance v0, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/jk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/jk;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->Y:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02029c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0b0013

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/jl;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/jl;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->aa:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0b003c

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/jq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/jq;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->ab:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/jr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/jr;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->Z:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02028d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0b04ad

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/jt;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/jt;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->P:Lcom/estrongs/android/view/a/a;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->X:Lcom/estrongs/android/ui/e/ic;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ic;->b()Lcom/estrongs/android/ui/e/jk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/jk;->j()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->u:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "http"

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->u:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->ab:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_1
    const-string v2, "Market"

    const-string v3, "Sharp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->aa:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/estrongs/android/pop/app/aa;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->P:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->Y:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->W:Lcom/estrongs/android/ui/e/iw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iw;->b()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->W:Lcom/estrongs/android/ui/e/iw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iw;->c()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d:Landroid/view/View;

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0202bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void

    :cond_5
    invoke-static {}, Lcom/estrongs/android/pop/app/aa;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->Z:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->W:Lcom/estrongs/android/ui/e/iw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iw;->d()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->setDefaultKeyMode(I)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d0

    const/16 v3, 0x400

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f0300b3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->setContentView(I)V

    new-instance v0, Lcom/estrongs/android/pop/app/jw;

    invoke-direct {v0, p0, p0}, Lcom/estrongs/android/pop/app/jw;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/widget/MediaController;

    const v0, 0x7f0a0345

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/ESVideoView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Lcom/estrongs/android/ui/view/ESVideoView;

    const v0, 0x7f0a0346

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->o:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->o:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/estrongs/android/pop/app/jx;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/jx;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0347

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->D:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->D:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0068

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b04ae

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Lcom/estrongs/android/ui/view/ESVideoView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/widget/MediaController;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Landroid/widget/MediaController;)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/widget/MediaController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Lcom/estrongs/android/ui/view/ESVideoView;

    new-instance v2, Lcom/estrongs/android/pop/app/jy;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/jy;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Lcom/estrongs/android/ui/view/ESVideoView;

    new-instance v2, Lcom/estrongs/android/pop/app/jz;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/jz;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Lcom/estrongs/android/ui/view/ESVideoView;

    new-instance v2, Lcom/estrongs/android/pop/app/ir;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/ir;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Lcom/estrongs/android/ui/view/ESVideoView;

    new-instance v2, Lcom/estrongs/android/pop/app/is;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/is;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Lcom/estrongs/android/ui/view/ar;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->u:Landroid/net/Uri;

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->finish()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->t:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:Z

    const-string v0, "Market"

    const-string v2, "Spreadtrum"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->K:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->L:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->M:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Landroid/view/View;

    const-string v0, "PopVideoPlayer"

    invoke-static {p0, v1, v0}, Lcom/estrongs/android/util/a;->a(Landroid/content/Context;ZLjava/lang/String;)Lcom/estrongs/android/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->w:Lcom/estrongs/android/util/a;

    const v0, 0x7f0a0348

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->x:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->x:Landroid/view/View;

    const v2, 0x7f0a0349

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->v:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->y:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->v:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->x:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShown()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v3, 0x96

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->x:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->x:Landroid/view/View;

    const v3, 0x7f0a0273

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d:Landroid/view/View;

    new-instance v3, Lcom/estrongs/android/pop/app/it;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/it;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0087

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z:Landroid/view/View;

    new-instance v3, Lcom/estrongs/android/pop/app/iu;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/iu;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0272

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/estrongs/android/pop/app/iv;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/iv;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/ESVideoView;->a(Landroid/net/Uri;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->n:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "Chromecast"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ChromecastUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v4}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Z)V

    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShown()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f()V

    :cond_5
    new-instance v0, Lcom/estrongs/android/pop/app/ix;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ix;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ix;->start()V

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x4

    goto/16 :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->o()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->q()V

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r:Lcom/estrongs/android/pop/app/ke;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->B:Lcom/estrongs/android/pop/app/aa;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r:Lcom/estrongs/android/pop/app/ke;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/aa;->b(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->B:Lcom/estrongs/android/pop/app/aa;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r:Lcom/estrongs/android/pop/app/ke;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/aa;->b(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->B:Lcom/estrongs/android/pop/app/aa;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r:Lcom/estrongs/android/pop/app/ke;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/aa;->b(Lcom/estrongs/chromecast/CastDeviceListener;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->C:Lcom/estrongs/android/pop/app/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->C:Lcom/estrongs/android/pop/app/r;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/r;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->C:Lcom/estrongs/android/pop/app/r;

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p()V

    const-string v0, "Market"

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->L:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    :sswitch_0
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->S:Z

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f()V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->w:Lcom/estrongs/android/util/a;

    invoke-virtual {v0}, Lcom/estrongs/android/util/a;->c()Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "playback_position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->t:I

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->w:Lcom/estrongs/android/util/a;

    invoke-virtual {v0}, Lcom/estrongs/android/util/a;->b()Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->n()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->i()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ESVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->t:I

    const-string v0, "playback_position"

    iget v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->t:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onStop()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->v()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public t()Landroid/graphics/Rect;
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->ac:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->ac:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const v1, 0x7f0a034a

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v2, Landroid/graphics/Rect;

    aget v3, v0, v5

    aget v4, v0, v7

    aget v5, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    aget v0, v0, v7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->ac:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->ac:Landroid/graphics/Rect;

    return-object v0
.end method
