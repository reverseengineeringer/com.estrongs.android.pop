.class Lcom/flurry/sdk/jb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/lg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jb;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jb$1;->a:Lcom/flurry/sdk/jb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/lg;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/jb$1;->a(Lcom/flurry/sdk/lg;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/lg;)V
    .locals 4

    iget-object v0, p0, Lcom/flurry/sdk/jb$1;->a:Lcom/flurry/sdk/jb;

    invoke-static {v0}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jb;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/flurry/sdk/lg;->b:Lcom/flurry/sdk/lf;

    iget-object v1, p0, Lcom/flurry/sdk/jb$1;->a:Lcom/flurry/sdk/jb;

    invoke-static {v1}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jb;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/flurry/sdk/jb$8;->a:[I

    iget-object v1, p1, Lcom/flurry/sdk/lg;->c:Lcom/flurry/sdk/lg$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/lg$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/flurry/sdk/jb$1;->a:Lcom/flurry/sdk/jb;

    iget-object v2, p1, Lcom/flurry/sdk/lg;->b:Lcom/flurry/sdk/lf;

    iget-object v0, p1, Lcom/flurry/sdk/lg;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/lf;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/flurry/sdk/jb$1;->a:Lcom/flurry/sdk/jb;

    iget-object v0, p1, Lcom/flurry/sdk/lg;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jb;->a(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/flurry/sdk/jb$1;->a:Lcom/flurry/sdk/jb;

    iget-object v0, p1, Lcom/flurry/sdk/lg;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jb;->b(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/jb$1;->a:Lcom/flurry/sdk/jb;

    invoke-static {v2}, Lcom/flurry/sdk/jb;->b(Lcom/flurry/sdk/jb;)Lcom/flurry/sdk/kb;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->b(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    iget-object v0, p0, Lcom/flurry/sdk/jb$1;->a:Lcom/flurry/sdk/jb;

    iget-wide v2, p1, Lcom/flurry/sdk/lg;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/jb;->a(J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
