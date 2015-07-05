.class Lcom/estrongs/android/pop/zeroconf/x;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/zeroconf/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/zeroconf/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/zeroconf/x;->a:Lcom/estrongs/android/pop/zeroconf/w;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0x230c

    :try_start_0
    new-array v1, v0, [B

    new-instance v2, Ljava/net/DatagramPacket;

    array-length v0, v1

    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/x;->a:Lcom/estrongs/android/pop/zeroconf/w;

    invoke-static {v0}, Lcom/estrongs/android/pop/zeroconf/w;->a(Lcom/estrongs/android/pop/zeroconf/w;)Lcom/estrongs/android/pop/zeroconf/x;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v0, v1

    invoke-virtual {v2, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/x;->a:Lcom/estrongs/android/pop/zeroconf/w;

    invoke-static {v0}, Lcom/estrongs/android/pop/zeroconf/w;->b(Lcom/estrongs/android/pop/zeroconf/w;)Ljava/net/MulticastSocket;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/x;->a:Lcom/estrongs/android/pop/zeroconf/w;

    invoke-static {v0}, Lcom/estrongs/android/pop/zeroconf/w;->a(Lcom/estrongs/android/pop/zeroconf/w;)Lcom/estrongs/android/pop/zeroconf/x;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/zeroconf/x;->a:Lcom/estrongs/android/pop/zeroconf/w;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/zeroconf/w;->a(Ljava/net/DatagramPacket;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/zeroconf/a;

    invoke-direct {v0, v2}, Lcom/estrongs/android/pop/zeroconf/a;-><init>(Ljava/net/DatagramPacket;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/a;->n()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/pop/zeroconf/x;->a:Lcom/estrongs/android/pop/zeroconf/w;

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/zeroconf/w;->a(Lcom/estrongs/android/pop/zeroconf/w;Lcom/estrongs/android/pop/zeroconf/d;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/a;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/pop/zeroconf/x;->a:Lcom/estrongs/android/pop/zeroconf/w;

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/zeroconf/w;->b(Lcom/estrongs/android/pop/zeroconf/w;Lcom/estrongs/android/pop/zeroconf/d;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
