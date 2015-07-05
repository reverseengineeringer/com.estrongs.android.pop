.class public Lcom/estrongs/android/pop/app/b/p;
.super Ljava/util/Observable;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/net/InetAddress;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/b/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/b/f;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/b/p;->b:Ljava/lang/String;

    iput v0, p0, Lcom/estrongs/android/pop/app/b/p;->c:I

    iput v0, p0, Lcom/estrongs/android/pop/app/b/p;->d:I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/b/p;->e:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/p;->a:Ljava/net/InetAddress;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/p;->e:Ljava/util/ArrayList;

    return-void
.end method

.method private a(I)I
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/p;->a:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v1

    instance-of v1, v1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/estrongs/android/pop/app/b/p;->c:I

    if-ge v1, v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/app/b/p;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/b/p;->c:I

    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/b/p;->a(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/estrongs/android/pop/app/b/p;->d:I

    if-ge v1, v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/b/p;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/b/p;->d:I

    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/b/p;->a(I)I

    move-result v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/pop/app/b/f;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->a:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/pop/app/b/f;->h:[I

    if-nez v2, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/b/o;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/p;->a:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/b/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/app/b/f;II)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/p;->setChanged()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/b/p;->notifyObservers(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    array-length v3, v2

    move v0, v5

    :goto_1
    if-ge v0, v3, :cond_3

    aget v6, v2, v0

    iput v8, p0, Lcom/estrongs/android/pop/app/b/p;->c:I

    iput v8, p0, Lcom/estrongs/android/pop/app/b/p;->d:I

    invoke-direct {p0, v6}, Lcom/estrongs/android/pop/app/b/p;->a(I)I

    move-result v7

    if-nez v7, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->a:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->b:Ljava/lang/String;

    :goto_2
    const-string v1, "localhost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->a:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_3
    new-instance v0, Lcom/estrongs/android/pop/app/b/o;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/p;->a:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/b/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/app/b/f;II)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/p;->setChanged()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/b/p;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->b:Ljava/lang/String;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/estrongs/android/pop/app/b/o;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/p;->a:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/b/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/app/b/f;II)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/p;->setChanged()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/b/p;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/b/f;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/b/p;->a(Lcom/estrongs/android/pop/app/b/f;)V
    :try_end_0
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/p;->setChanged()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/p;->notifyObservers()V

    goto :goto_0
.end method
