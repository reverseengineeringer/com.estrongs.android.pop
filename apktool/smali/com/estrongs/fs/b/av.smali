.class Lcom/estrongs/fs/b/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/zeroconf/v;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/au;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/au;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/av;->a:Lcom/estrongs/fs/b/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/zeroconf/u;)V
    .locals 2

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/u;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/zeroconf/u;->f:Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/av;->a:Lcom/estrongs/fs/b/au;

    invoke-static {v0}, Lcom/estrongs/fs/b/au;->c(Lcom/estrongs/fs/b/au;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/zeroconf/u;->f:Ljava/net/Inet4Address;

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/u;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/fs/b/au;->a([BLjava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/av;->a:Lcom/estrongs/fs/b/au;

    invoke-static {v0}, Lcom/estrongs/fs/b/au;->a(Lcom/estrongs/fs/b/au;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/u;->f:Ljava/net/Inet4Address;

    invoke-virtual {v1}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/fs/b/av;->a:Lcom/estrongs/fs/b/au;

    invoke-static {v0}, Lcom/estrongs/fs/b/au;->c(Lcom/estrongs/fs/b/au;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    new-instance v1, Lcom/estrongs/fs/b/aw;

    invoke-direct {v1, p0}, Lcom/estrongs/fs/b/aw;-><init>(Lcom/estrongs/fs/b/av;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/estrongs/android/pop/zeroconf/u;)V
    .locals 0

    return-void
.end method
