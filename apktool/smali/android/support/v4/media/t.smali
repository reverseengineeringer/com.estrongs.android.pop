.class Landroid/support/v4/media/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/media/k;

.field final synthetic b:Landroid/support/v4/media/n;


# direct methods
.method constructor <init>(Landroid/support/v4/media/n;Landroid/support/v4/media/k;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/t;->b:Landroid/support/v4/media/n;

    iput-object p2, p0, Landroid/support/v4/media/t;->a:Landroid/support/v4/media/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/media/t;->a:Landroid/support/v4/media/k;

    invoke-interface {v0}, Landroid/support/v4/media/k;->a()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/t;->b:Landroid/support/v4/media/n;

    iget-object v1, v1, Landroid/support/v4/media/n;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->b(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/e/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/e/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/support/v4/media/i;

    iget-object v2, p0, Landroid/support/v4/media/t;->b:Landroid/support/v4/media/n;

    iget-object v2, v2, Landroid/support/v4/media/n;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/support/v4/media/i;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/e;)V

    iget-object v2, p0, Landroid/support/v4/media/t;->a:Landroid/support/v4/media/k;

    iput-object v2, v1, Landroid/support/v4/media/i;->c:Landroid/support/v4/media/k;

    iget-object v2, p0, Landroid/support/v4/media/t;->b:Landroid/support/v4/media/n;

    iget-object v2, v2, Landroid/support/v4/media/n;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->b(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/e/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
