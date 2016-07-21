.class Lcom/facebook/ads/internal/http/c$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/http/c;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/http/c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/http/c$1;->a:Lcom/facebook/ads/internal/http/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/http/c$1;->a:Lcom/facebook/ads/internal/http/c;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/http/c;->a(Landroid/os/Message;)V

    return-void
.end method
