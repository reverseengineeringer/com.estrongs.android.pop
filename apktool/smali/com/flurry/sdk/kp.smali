.class public Lcom/flurry/sdk/kp;
.super Lcom/flurry/sdk/lz;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/flurry/sdk/kp$a;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private j:Z

.field private final k:Lcom/flurry/sdk/jx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jx",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/flurry/sdk/kp$c;

.field private m:Ljava/net/HttpURLConnection;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:J

.field private r:J

.field private s:Ljava/lang/Exception;

.field private t:I

.field private final u:Lcom/flurry/sdk/jx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jx",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/lang/Object;

.field private w:Z

.field private x:I

.field private y:Lcom/flurry/sdk/ko;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/kp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/kp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Lcom/flurry/sdk/lz;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/flurry/sdk/kp;->d:I

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/flurry/sdk/kp;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/kp;->j:Z

    new-instance v0, Lcom/flurry/sdk/jx;

    invoke-direct {v0}, Lcom/flurry/sdk/jx;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kp;->k:Lcom/flurry/sdk/jx;

    iput-wide v2, p0, Lcom/flurry/sdk/kp;->q:J

    iput-wide v2, p0, Lcom/flurry/sdk/kp;->r:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/kp;->t:I

    new-instance v0, Lcom/flurry/sdk/jx;

    invoke-direct {v0}, Lcom/flurry/sdk/jx;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kp;->u:Lcom/flurry/sdk/jx;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kp;->v:Ljava/lang/Object;

    const/16 v0, 0x61a8

    iput v0, p0, Lcom/flurry/sdk/kp;->x:I

    new-instance v0, Lcom/flurry/sdk/ko;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ko;-><init>(Lcom/flurry/sdk/kp;)V

    iput-object v0, p0, Lcom/flurry/sdk/kp;->y:Lcom/flurry/sdk/ko;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/kp;)Ljava/net/HttpURLConnection;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kp;->l:Lcom/flurry/sdk/kp$c;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/kp;->e()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/kp;->l:Lcom/flurry/sdk/kp$c;

    invoke-interface {v0, p0, p1}, Lcom/flurry/sdk/kp$c;->a(Lcom/flurry/sdk/kp;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private a(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kp;->l:Lcom/flurry/sdk/kp$c;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/kp;->e()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/kp;->l:Lcom/flurry/sdk/kp$c;

    invoke-interface {v0, p0, p1}, Lcom/flurry/sdk/kp$c;->a(Lcom/flurry/sdk/kp;Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method private r()V
    .locals 7

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/flurry/sdk/kp;->o:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kp;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/lt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/kp;->b:Ljava/lang/String;

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/flurry/sdk/kp;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/flurry/sdk/kp;->d:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/flurry/sdk/kp;->e:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/flurry/sdk/kp;->c:Lcom/flurry/sdk/kp$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/kp$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Lcom/flurry/sdk/kp;->j:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    sget-object v1, Lcom/flurry/sdk/kp$a;->c:Lcom/flurry/sdk/kp$a;

    iget-object v3, p0, Lcom/flurry/sdk/kp;->c:Lcom/flurry/sdk/kp$a;

    invoke-virtual {v1, v3}, Lcom/flurry/sdk/kp$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/kp;->k:Lcom/flurry/sdk/jx;

    invoke-virtual {v0}, Lcom/flurry/sdk/jx;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v4, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/flurry/sdk/kp;->t()V

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/kp$a;->b:Lcom/flurry/sdk/kp$a;

    iget-object v1, p0, Lcom/flurry/sdk/kp;->c:Lcom/flurry/sdk/kp$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kp$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/kp$a;->c:Lcom/flurry/sdk/kp$a;

    iget-object v1, p0, Lcom/flurry/sdk/kp;->c:Lcom/flurry/sdk/kp$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kp$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/flurry/sdk/kp;->o:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/flurry/sdk/kp;->t()V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/kp$a;->c:Lcom/flurry/sdk/kp$a;

    iget-object v1, p0, Lcom/flurry/sdk/kp;->c:Lcom/flurry/sdk/kp$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kp$a;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    :try_start_3
    iget-object v0, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    :try_start_4
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-direct {p0, v1}, Lcom/flurry/sdk/kp;->a(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    invoke-static {v1}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    :cond_4
    iget-boolean v0, p0, Lcom/flurry/sdk/kp;->p:Z

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/kp;->q:J

    :cond_5
    iget-boolean v0, p0, Lcom/flurry/sdk/kp;->w:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/flurry/sdk/kp;->y:Lcom/flurry/sdk/ko;

    iget v1, p0, Lcom/flurry/sdk/kp;->x:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/flurry/sdk/ko;->a(J)V

    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/kp;->t:I

    iget-boolean v0, p0, Lcom/flurry/sdk/kp;->p:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/flurry/sdk/kp;->q:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/flurry/sdk/kp;->q:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/flurry/sdk/kp;->r:J

    :cond_7
    iget-object v0, p0, Lcom/flurry/sdk/kp;->y:Lcom/flurry/sdk/ko;

    invoke-virtual {v0}, Lcom/flurry/sdk/ko;->a()V

    iget-object v0, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/flurry/sdk/kp;->u:Lcom/flurry/sdk/jx;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/flurry/sdk/jx;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_9
    sget-object v0, Lcom/flurry/sdk/kp$a;->b:Lcom/flurry/sdk/kp$a;

    iget-object v1, p0, Lcom/flurry/sdk/kp;->c:Lcom/flurry/sdk/kp$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kp$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/flurry/sdk/kp$a;->c:Lcom/flurry/sdk/kp$a;

    iget-object v1, p0, Lcom/flurry/sdk/kp;->c:Lcom/flurry/sdk/kp$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kp$a;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/flurry/sdk/kp;->t()V

    goto/16 :goto_0

    :cond_a
    :try_start_7
    iget-boolean v0, p0, Lcom/flurry/sdk/kp;->o:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/flurry/sdk/kp;->t()V

    goto/16 :goto_0

    :cond_b
    :try_start_8
    iget-object v0, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v3

    :try_start_9
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-direct {p0, v1}, Lcom/flurry/sdk/kp;->a(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-static {v1}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-direct {p0}, Lcom/flurry/sdk/kp;->t()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_c
    invoke-static {v2}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_3
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object v2, v3

    goto :goto_3
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kp;->l:Lcom/flurry/sdk/kp$c;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/kp;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/kp;->l:Lcom/flurry/sdk/kp$c;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/kp$c;->a(Lcom/flurry/sdk/kp;)V

    goto :goto_0
.end method

.method private t()V
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/kp;->n:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/kp;->n:Z

    iget-object v0, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0
.end method

.method private u()V
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/kp;->n:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/kp;->n:Z

    iget-object v0, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/flurry/sdk/kp$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kp$1;-><init>(Lcom/flurry/sdk/kp;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/kp;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/kp;->y:Lcom/flurry/sdk/ko;

    invoke-virtual {v0}, Lcom/flurry/sdk/ko;->a()V

    invoke-direct {p0}, Lcom/flurry/sdk/kp;->s()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jl;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/kp;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network not available, aborting http request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/kp;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/flurry/sdk/kp;->y:Lcom/flurry/sdk/ko;

    invoke-virtual {v0}, Lcom/flurry/sdk/ko;->a()V

    invoke-direct {p0}, Lcom/flurry/sdk/kp;->s()V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/kp;->c:Lcom/flurry/sdk/kp$a;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/kp$a;->a:Lcom/flurry/sdk/kp$a;

    iget-object v1, p0, Lcom/flurry/sdk/kp;->c:Lcom/flurry/sdk/kp$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kp$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/flurry/sdk/kp$a;->b:Lcom/flurry/sdk/kp$a;

    iput-object v0, p0, Lcom/flurry/sdk/kp;->c:Lcom/flurry/sdk/kp$a;

    :cond_3
    invoke-direct {p0}, Lcom/flurry/sdk/kp;->r()V

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/kp;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/flurry/sdk/kp;->t:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/kp;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/flurry/sdk/kp;->y:Lcom/flurry/sdk/ko;

    invoke-virtual {v0}, Lcom/flurry/sdk/ko;->a()V

    invoke-direct {p0}, Lcom/flurry/sdk/kp;->s()V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    :try_start_3
    sget-object v2, Lcom/flurry/sdk/kp;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/flurry/sdk/kp;->t:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/kp;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/kp;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during http request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/kp;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v1

    iput v1, p0, Lcom/flurry/sdk/kp;->g:I

    iget-object v1, p0, Lcom/flurry/sdk/kp;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v1

    iput v1, p0, Lcom/flurry/sdk/kp;->f:I

    iput-object v0, p0, Lcom/flurry/sdk/kp;->s:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/flurry/sdk/kp;->y:Lcom/flurry/sdk/ko;

    invoke-virtual {v0}, Lcom/flurry/sdk/ko;->a()V

    invoke-direct {p0}, Lcom/flurry/sdk/kp;->s()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/flurry/sdk/kp;->y:Lcom/flurry/sdk/ko;

    invoke-virtual {v1}, Lcom/flurry/sdk/ko;->a()V

    invoke-direct {p0}, Lcom/flurry/sdk/kp;->s()V

    throw v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/kp;->d:I

    return-void
.end method

.method public a(Lcom/flurry/sdk/kp$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kp;->c:Lcom/flurry/sdk/kp$a;

    return-void
.end method

.method public a(Lcom/flurry/sdk/kp$c;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kp;->l:Lcom/flurry/sdk/kp$c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kp;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kp;->k:Lcom/flurry/sdk/jx;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/jx;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/kp;->w:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kp;->u:Lcom/flurry/sdk/jx;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jx;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/kp;->e:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/kp;->j:Z

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/kp;->r:J

    return-wide v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/kp;->x:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kp;->u:Lcom/flurry/sdk/jx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/kp;->u:Lcom/flurry/sdk/jx;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jx;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/kp;->u:Lcom/flurry/sdk/jx;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jx;->b(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/kp;->p:Z

    return-void
.end method

.method public d()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/kp;->s:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/kp;->s:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/flurry/sdk/kp;->z:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    iget-object v1, p0, Lcom/flurry/sdk/kp;->v:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/kp;->o:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/kp;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/kp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    iget v0, p0, Lcom/flurry/sdk/kp;->t:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/flurry/sdk/kp;->t:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/flurry/sdk/kp;->z:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/kp;->t:I

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kp;->s:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kp;->s:Ljava/lang/Exception;

    return-object v0
.end method

.method public k()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/kp;->q:J

    sub-long/2addr v0, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/kp;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MS) for url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/kp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x275

    iput v0, p0, Lcom/flurry/sdk/kp;->t:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/kp;->z:Z

    invoke-direct {p0}, Lcom/flurry/sdk/kp;->s()V

    invoke-virtual {p0}, Lcom/flurry/sdk/kp;->l()V

    return-void
.end method

.method public l()V
    .locals 4

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/kp;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling http request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/kp;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/kp;->v:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/flurry/sdk/kp;->o:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/flurry/sdk/kp;->u()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public m()V
    .locals 0

    invoke-virtual {p0}, Lcom/flurry/sdk/kp;->l()V

    return-void
.end method
