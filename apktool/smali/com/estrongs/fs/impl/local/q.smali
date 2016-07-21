.class Lcom/estrongs/fs/impl/local/q;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/net/LocalSocket;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:[B

.field private g:I

.field private h:I

.field private i:J

.field private j:I

.field private k:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/fs/impl/local/q;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/fs/impl/local/q;->b:Landroid/net/LocalSocket;

    iput-boolean v2, p0, Lcom/estrongs/fs/impl/local/q;->c:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/impl/local/q;->d:Z

    iput v2, p0, Lcom/estrongs/fs/impl/local/q;->e:I

    iput-object v1, p0, Lcom/estrongs/fs/impl/local/q;->f:[B

    iput v2, p0, Lcom/estrongs/fs/impl/local/q;->g:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/fs/impl/local/q;->h:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/local/q;->i:J

    iput v2, p0, Lcom/estrongs/fs/impl/local/q;->j:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/fs/impl/local/q;->k:J

    iput-object p1, p0, Lcom/estrongs/fs/impl/local/q;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/local/q;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/fs/impl/local/q;->e:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/local/q;J)J
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/fs/impl/local/q;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/local/q;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/local/q;->b:Landroid/net/LocalSocket;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/local/q;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/local/q;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/impl/local/q;->c:Z

    return p1
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/local/q;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/local/q;->f:[B

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/fs/impl/local/q;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/fs/impl/local/q;->g:I

    return p1
.end method

.method static synthetic b(Lcom/estrongs/fs/impl/local/q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/local/q;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/fs/impl/local/q;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/fs/impl/local/q;->j:I

    return p1
.end method

.method static synthetic c(Lcom/estrongs/fs/impl/local/q;)Landroid/net/LocalSocket;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/q;->b:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/fs/impl/local/q;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/local/q;->e:I

    return v0
.end method

.method static synthetic e(Lcom/estrongs/fs/impl/local/q;)[B
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/q;->f:[B

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/fs/impl/local/q;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/local/q;->g:I

    return v0
.end method

.method static synthetic g(Lcom/estrongs/fs/impl/local/q;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/local/q;->i:J

    return-wide v0
.end method

.method static synthetic h(Lcom/estrongs/fs/impl/local/q;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/local/q;->j:I

    return v0
.end method

.method static synthetic i(Lcom/estrongs/fs/impl/local/q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/local/q;->d:Z

    return v0
.end method

.method static synthetic j(Lcom/estrongs/fs/impl/local/q;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/local/q;->h:I

    return v0
.end method

.method static synthetic k(Lcom/estrongs/fs/impl/local/q;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/local/q;->k:J

    return-wide v0
.end method


# virtual methods
.method a(I)V
    .locals 1

    iput p1, p0, Lcom/estrongs/fs/impl/local/q;->h:I

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

.method a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/fs/impl/local/q;->k:J

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

.method a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/estrongs/fs/impl/local/q;->d:Z

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
