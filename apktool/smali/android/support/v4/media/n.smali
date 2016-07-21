.class Landroid/support/v4/media/n;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/n;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/e;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/n;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/media/k;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/n;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/m;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/p;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/p;-><init>(Landroid/support/v4/media/n;Landroid/support/v4/media/k;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILandroid/os/Bundle;Landroid/support/v4/media/k;)V
    .locals 7

    iget-object v0, p0, Landroid/support/v4/media/n;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package/uid mismatch: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/n;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/m;

    move-result-object v6

    new-instance v0, Landroid/support/v4/media/o;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/o;-><init>(Landroid/support/v4/media/n;Landroid/support/v4/media/k;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual {v6, v0}, Landroid/support/v4/media/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/k;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/n;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/m;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/q;

    invoke-direct {v1, p0, p3, p1, p2}, Landroid/support/v4/media/q;-><init>(Landroid/support/v4/media/n;Landroid/support/v4/media/k;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/n;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/m;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/s;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/media/s;-><init>(Landroid/support/v4/media/n;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/m;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b(Landroid/support/v4/media/k;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/n;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/m;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/t;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/t;-><init>(Landroid/support/v4/media/n;Landroid/support/v4/media/k;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/k;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/n;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/m;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/r;

    invoke-direct {v1, p0, p3, p1, p2}, Landroid/support/v4/media/r;-><init>(Landroid/support/v4/media/n;Landroid/support/v4/media/k;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method
