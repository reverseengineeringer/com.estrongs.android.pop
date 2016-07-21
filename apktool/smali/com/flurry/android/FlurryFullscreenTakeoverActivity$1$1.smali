.class Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gr;

.field final synthetic b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;Lcom/flurry/sdk/gr;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iput-object p2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gr;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gr;

    iget-object v0, v0, Lcom/flurry/sdk/gr;->e:Lcom/flurry/sdk/gr$a;

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$3;->a:[I

    invoke-virtual {v0}, Lcom/flurry/sdk/gr$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RELOAD_ACTIVITY Event was fired for adObject:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gr;

    iget-object v3, v3, Lcom/flurry/sdk/gr;->a:Lcom/flurry/sdk/s;

    invoke-interface {v3}, Lcom/flurry/sdk/s;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gr;

    iget-object v3, v3, Lcom/flurry/sdk/gr;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and should Close Ad:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gr;

    iget-boolean v3, v3, Lcom/flurry/sdk/gr;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    new-instance v1, Lcom/flurry/sdk/hb;

    iget-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gr;

    iget-object v2, v2, Lcom/flurry/sdk/gr;->a:Lcom/flurry/sdk/s;

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gr;

    iget-object v3, v3, Lcom/flurry/sdk/gr;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gr;

    iget-boolean v4, v4, Lcom/flurry/sdk/gr;->c:Z

    iget-object v5, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gr;

    iget-boolean v5, v5, Lcom/flurry/sdk/gr;->d:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/flurry/sdk/hb;-><init>(Lcom/flurry/sdk/s;Ljava/lang/String;ZZ)V

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/sdk/hb;)Lcom/flurry/sdk/hb;

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v1, v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Lcom/flurry/sdk/hb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hb;->c()Lcom/flurry/sdk/s;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/sdk/s;)Lcom/flurry/sdk/s;

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Lcom/flurry/sdk/s;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot launch Activity. No Ad Controller"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Z)V

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLOSE_ACTIVITY Event was fired :"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
