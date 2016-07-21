.class public Lcom/estrongs/android/ftp/a;
.super Ljava/lang/Object;


# static fields
.field public static d:Z

.field public static f:Ljava/lang/String;

.field public static i:Z

.field private static m:Lcom/estrongs/android/ftp/a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Thread;

.field public e:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public j:Lcom/estrongs/android/ftp/d;

.field public k:Z

.field private l:I

.field private n:I

.field private o:Ljava/net/InetAddress;

.field private p:Ljava/net/ServerSocket;

.field private q:I

.field private r:I

.field private s:Ljava/lang/Object;

.field private t:Ljava/lang/Thread;

.field private u:Z

.field private v:J

.field private w:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ftp/a;->m:Lcom/estrongs/android/ftp/a;

    sput-boolean v1, Lcom/estrongs/android/ftp/a;->d:Z

    const-string v0, "UTF-8"

    sput-object v0, Lcom/estrongs/android/ftp/a;->f:Ljava/lang/String;

    sput-boolean v1, Lcom/estrongs/android/ftp/a;->i:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/estrongs/android/ftp/a;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/ftp/a;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/ftp/a;->c:Ljava/lang/Thread;

    const/16 v0, 0x15

    iput v0, p0, Lcom/estrongs/android/ftp/a;->l:I

    iput-boolean v1, p0, Lcom/estrongs/android/ftp/a;->e:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ftp/a;->g:Z

    iput-object v2, p0, Lcom/estrongs/android/ftp/a;->h:Ljava/lang/String;

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/estrongs/android/ftp/a;->n:I

    iput-object v2, p0, Lcom/estrongs/android/ftp/a;->o:Ljava/net/InetAddress;

    iput-object v2, p0, Lcom/estrongs/android/ftp/a;->p:Ljava/net/ServerSocket;

    iput v1, p0, Lcom/estrongs/android/ftp/a;->q:I

    iput v1, p0, Lcom/estrongs/android/ftp/a;->r:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ftp/a;->s:Ljava/lang/Object;

    iput-object v2, p0, Lcom/estrongs/android/ftp/a;->t:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/estrongs/android/ftp/a;->u:Z

    iput-wide v4, p0, Lcom/estrongs/android/ftp/a;->v:J

    iput-wide v4, p0, Lcom/estrongs/android/ftp/a;->w:J

    iput-object v2, p0, Lcom/estrongs/android/ftp/a;->j:Lcom/estrongs/android/ftp/d;

    iput-boolean v1, p0, Lcom/estrongs/android/ftp/a;->k:Z

    iput-object p1, p0, Lcom/estrongs/android/ftp/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/ftp/a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/estrongs/android/ftp/a;->l:I

    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ftp/a;->g:Z

    if-nez p4, :cond_2

    const-string p4, "/sdcard"

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string p4, "/sdcard"

    :cond_4
    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ftp/a;->h:Ljava/lang/String;

    :goto_1
    return-void

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ftp/a;->h:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iput-object p4, p0, Lcom/estrongs/android/ftp/a;->h:Ljava/lang/String;

    goto :goto_1
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/estrongs/android/ftp/a;
    .locals 2

    const-class v1, Lcom/estrongs/android/ftp/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/ftp/a;->m:Lcom/estrongs/android/ftp/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ftp/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/estrongs/android/ftp/a;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/ftp/a;->m:Lcom/estrongs/android/ftp/a;

    :goto_0
    sget-object v0, Lcom/estrongs/android/ftp/a;->m:Lcom/estrongs/android/ftp/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/estrongs/android/ftp/a;->m:Lcom/estrongs/android/ftp/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/estrongs/android/ftp/a;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/ftp/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->s:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ftp/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/ftp/a;->v:J

    return-wide v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ftp/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/ftp/a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/estrongs/android/ftp/a;->l:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ftp/a;->g:Z

    if-nez p4, :cond_2

    const-string p4, "/sdcard"

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string p4, "/sdcard"

    :cond_4
    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ftp/a;->h:Ljava/lang/String;

    :goto_1
    return-void

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ftp/a;->h:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iput-object p4, p0, Lcom/estrongs/android/ftp/a;->h:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic c(Lcom/estrongs/android/ftp/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/ftp/a;->w:J

    return-wide v0
.end method

.method static synthetic d(Lcom/estrongs/android/ftp/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ftp/a;->u:Z

    return v0
.end method

.method public static declared-synchronized e()Lcom/estrongs/android/ftp/a;
    .locals 2

    const-class v0, Lcom/estrongs/android/ftp/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/estrongs/android/ftp/a;->m:Lcom/estrongs/android/ftp/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic e(Lcom/estrongs/android/ftp/a;)Ljava/net/ServerSocket;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->p:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public static j()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/ftp/a;->d:Z

    sget-object v0, Lcom/estrongs/android/ftp/a;->m:Lcom/estrongs/android/ftp/a;

    if-nez v0, :cond_0

    const-string v0, "Error"

    const-string v1, "IN Server, stop inst is null"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/estrongs/android/ftp/a;->m:Lcom/estrongs/android/ftp/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/a;->k()V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ftp/a;->m:Lcom/estrongs/android/ftp/a;

    goto :goto_0
.end method

.method private l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ftp/a;->u:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ftp/a;->t:Ljava/lang/Thread;

    return-void
.end method

.method private m()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/ftp/a;->u:Z

    iput-wide v2, p0, Lcom/estrongs/android/ftp/a;->v:J

    iput-wide v2, p0, Lcom/estrongs/android/ftp/a;->w:J

    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->j:Lcom/estrongs/android/ftp/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->j:Lcom/estrongs/android/ftp/d;

    invoke-interface {v0, v1, v1}, Lcom/estrongs/android/ftp/d;->a(II)V

    :cond_0
    new-instance v0, Lcom/estrongs/android/ftp/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ftp/b;-><init>(Lcom/estrongs/android/ftp/a;)V

    iput-object v0, p0, Lcom/estrongs/android/ftp/a;->t:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/ftp/a;->d:Z

    sput-boolean v0, Lcom/estrongs/android/ftp/a;->i:Z

    iput-boolean v0, p0, Lcom/estrongs/android/ftp/a;->k:Z

    iget-boolean v1, p0, Lcom/estrongs/android/ftp/a;->e:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/an;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ftp/a;->o:Ljava/net/InetAddress;

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ftp/a;->o:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v1, Ljava/net/ServerSocket;

    iget v2, p0, Lcom/estrongs/android/ftp/a;->l:I

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ljava/net/ServerSocket;-><init>(II)V

    iput-object v1, p0, Lcom/estrongs/android/ftp/a;->p:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/estrongs/android/ftp/a;->e:Z

    new-instance v1, Lcom/estrongs/android/ftp/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ftp/c;-><init>(Lcom/estrongs/android/ftp/a;)V

    iput-object v1, p0, Lcom/estrongs/android/ftp/a;->c:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/estrongs/android/ftp/a;->c:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public a()V
    .locals 4

    iget-object v1, p0, Lcom/estrongs/android/ftp/a;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/ftp/a;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ftp/a;->q:I

    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->t:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ftp/a;->m()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->j:Lcom/estrongs/android/ftp/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->j:Lcom/estrongs/android/ftp/d;

    iget v2, p0, Lcom/estrongs/android/ftp/a;->r:I

    iget v3, p0, Lcom/estrongs/android/ftp/a;->q:I

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/ftp/d;->a(II)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(J)V
    .locals 5

    iget-object v1, p0, Lcom/estrongs/android/ftp/a;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/estrongs/android/ftp/a;->v:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/estrongs/android/ftp/a;->v:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ftp/a;->h:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ftp/a;->h:Ljava/lang/String;

    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ftp/a;->h:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/estrongs/android/ftp/a;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ftp/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/ftp/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ftp/a;->g:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ftp/a;->k:Z

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v1, p0, Lcom/estrongs/android/ftp/a;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/ftp/a;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ftp/a;->q:I

    iget v0, p0, Lcom/estrongs/android/ftp/a;->q:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/ftp/a;->r:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ftp/a;->l()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->j:Lcom/estrongs/android/ftp/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->j:Lcom/estrongs/android/ftp/d;

    iget v2, p0, Lcom/estrongs/android/ftp/a;->r:I

    iget v3, p0, Lcom/estrongs/android/ftp/a;->q:I

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/ftp/d;->a(II)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(J)V
    .locals 5

    iget-object v1, p0, Lcom/estrongs/android/ftp/a;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/estrongs/android/ftp/a;->w:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/estrongs/android/ftp/a;->w:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 4

    iget-object v1, p0, Lcom/estrongs/android/ftp/a;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/ftp/a;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ftp/a;->r:I

    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->t:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ftp/a;->m()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->j:Lcom/estrongs/android/ftp/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->j:Lcom/estrongs/android/ftp/d;

    iget v2, p0, Lcom/estrongs/android/ftp/a;->r:I

    iget v3, p0, Lcom/estrongs/android/ftp/a;->q:I

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/ftp/d;->a(II)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 4

    iget-object v1, p0, Lcom/estrongs/android/ftp/a;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/ftp/a;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ftp/a;->r:I

    iget v0, p0, Lcom/estrongs/android/ftp/a;->q:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/ftp/a;->r:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ftp/a;->l()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->j:Lcom/estrongs/android/ftp/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->j:Lcom/estrongs/android/ftp/d;

    iget v2, p0, Lcom/estrongs/android/ftp/a;->r:I

    iget v3, p0, Lcom/estrongs/android/ftp/a;->q:I

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/ftp/d;->a(II)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized f()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/ftp/a;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ftp/a;->n:I

    iget v0, p0, Lcom/estrongs/android/ftp/a;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->o:Ljava/net/InetAddress;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ftp/a;->l:I

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ftp/a;->e:Z

    return v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/ftp/a;->i:Z

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/a;->p:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
