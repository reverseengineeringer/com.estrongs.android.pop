.class Lcom/flurry/sdk/aq$1;
.super Landroid/os/FileObserver;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/aq;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/aq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/aq$1;->a:Lcom/flurry/sdk/aq;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2

    and-int/lit16 v0, p1, 0x800

    if-nez v0, :cond_0

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->g()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/aq$1$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/aq$1$1;-><init>(Lcom/flurry/sdk/aq$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
