.class Lcom/facebook/ads/internal/view/d$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/d$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d$1;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d$1$1;->a:Lcom/facebook/ads/internal/view/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 4

    new-instance v0, Lcom/facebook/ads/internal/util/o;

    invoke-direct {v0}, Lcom/facebook/ads/internal/util/o;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/d$1$1;->a:Lcom/facebook/ads/internal/view/d$1;

    iget-object v3, v3, Lcom/facebook/ads/internal/view/d$1;->b:Lcom/facebook/ads/internal/view/d;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/d;->a(Lcom/facebook/ads/internal/view/d;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
