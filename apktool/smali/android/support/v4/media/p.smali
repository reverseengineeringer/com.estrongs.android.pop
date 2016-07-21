.class Landroid/support/v4/media/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/media/k;

.field final synthetic b:Landroid/support/v4/media/n;


# direct methods
.method constructor <init>(Landroid/support/v4/media/n;Landroid/support/v4/media/k;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/p;->b:Landroid/support/v4/media/n;

    iput-object p2, p0, Landroid/support/v4/media/p;->a:Landroid/support/v4/media/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/p;->a:Landroid/support/v4/media/k;

    invoke-interface {v0}, Landroid/support/v4/media/k;->a()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/p;->b:Landroid/support/v4/media/n;

    iget-object v1, v1, Landroid/support/v4/media/n;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->b(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/e/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/e/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/i;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
