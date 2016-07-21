.class public Lcom/estrongs/fs/impl/local/r;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/fs/impl/local/r;->d:Ljava/lang/String;

    iput v1, p0, Lcom/estrongs/fs/impl/local/r;->a:I

    iput v1, p0, Lcom/estrongs/fs/impl/local/r;->b:I

    iput v1, p0, Lcom/estrongs/fs/impl/local/r;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/local/r;->e:Z

    iput-object p1, p0, Lcom/estrongs/fs/impl/local/r;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/estrongs/fs/impl/local/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/local/r;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/local/r;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/r;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/local/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/local/r;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a(III)V
    .locals 1

    iput p1, p0, Lcom/estrongs/fs/impl/local/r;->a:I

    iput p2, p0, Lcom/estrongs/fs/impl/local/r;->b:I

    iput p3, p0, Lcom/estrongs/fs/impl/local/r;->c:I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/local/r;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/fs/impl/local/r;->a(III)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/local/r;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/local/r;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/estrongs/fs/impl/local/r;->e:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/estrongs/fs/impl/local/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/local/r;->e:Z

    return v0
.end method
