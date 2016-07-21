.class final Lcom/estrongs/fs/b/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    check-cast p1, Lcom/estrongs/fs/b/ba;

    invoke-virtual {p1}, Lcom/estrongs/fs/b/ba;->a()Ljava/net/InetAddress;

    move-result-object v0

    if-ne p2, v1, :cond_1

    if-ne p3, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/an;->a(Ljava/net/InetAddress;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v2, :cond_0

    const/4 v1, 0x4

    if-eq p3, v1, :cond_2

    const/4 v1, 0x5

    if-ne p3, v1, :cond_0

    :cond_2
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/util/an;->a(Ljava/net/InetAddress;Z)V

    goto :goto_0
.end method
