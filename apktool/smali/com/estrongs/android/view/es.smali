.class Lcom/estrongs/android/view/es;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/b/x;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/er;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/er;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/es;->a:Lcom/estrongs/android/view/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/view/es;->a:Lcom/estrongs/android/view/er;

    invoke-static {v0}, Lcom/estrongs/android/view/er;->a(Lcom/estrongs/android/view/er;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/es;->a:Lcom/estrongs/android/view/er;

    invoke-static {v0}, Lcom/estrongs/android/view/er;->b(Lcom/estrongs/android/view/er;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/es;->a:Lcom/estrongs/android/view/er;

    invoke-static {v0}, Lcom/estrongs/android/view/er;->c(Lcom/estrongs/android/view/er;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public a(I)V
    .locals 6

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/estrongs/android/view/es;->a:Lcom/estrongs/android/view/er;

    invoke-virtual {v0}, Lcom/estrongs/android/view/er;->aD()V

    iget-object v0, p0, Lcom/estrongs/android/view/es;->a:Lcom/estrongs/android/view/er;

    invoke-static {v0}, Lcom/estrongs/android/view/er;->a(Lcom/estrongs/android/view/er;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/es;->a:Lcom/estrongs/android/view/er;

    invoke-static {v0}, Lcom/estrongs/android/view/er;->b(Lcom/estrongs/android/view/er;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/es;->a:Lcom/estrongs/android/view/er;

    invoke-static {v0}, Lcom/estrongs/android/view/er;->c(Lcom/estrongs/android/view/er;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "hp_cost_time"

    iget-object v4, p0, Lcom/estrongs/android/view/es;->a:Lcom/estrongs/android/view/er;

    invoke-static {v4}, Lcom/estrongs/android/view/er;->d(Lcom/estrongs/android/view/er;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/estrongs/android/view/es;->a:Lcom/estrongs/android/view/er;

    invoke-virtual {v1}, Lcom/estrongs/android/view/er;->aF()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v1

    const-string v2, "log"

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/es;->a:Lcom/estrongs/android/view/er;

    invoke-static {v0}, Lcom/estrongs/android/view/er;->b(Lcom/estrongs/android/view/er;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/es;->a:Lcom/estrongs/android/view/er;

    invoke-static {v0}, Lcom/estrongs/android/view/er;->c(Lcom/estrongs/android/view/er;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
