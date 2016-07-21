.class Landroid/support/v4/media/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/support/v4/os/ResultReceiver;

.field final synthetic c:Landroid/support/v4/media/n;


# direct methods
.method constructor <init>(Landroid/support/v4/media/n;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/s;->c:Landroid/support/v4/media/n;

    iput-object p2, p0, Landroid/support/v4/media/s;->a:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/media/s;->b:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/s;->c:Landroid/support/v4/media/n;

    iget-object v0, v0, Landroid/support/v4/media/n;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, p0, Landroid/support/v4/media/s;->a:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/media/s;->b:Landroid/support/v4/os/ResultReceiver;

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    return-void
.end method
