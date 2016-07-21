.class Lcom/estrongs/android/view/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/x;->a:Lcom/estrongs/android/view/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/x;->a:Lcom/estrongs/android/view/w;

    invoke-static {v0}, Lcom/estrongs/android/view/w;->a(Lcom/estrongs/android/view/w;)Lcom/estrongs/android/pop/app/cleaner/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->e()V

    iget-object v0, p0, Lcom/estrongs/android/view/x;->a:Lcom/estrongs/android/view/w;

    invoke-static {v0}, Lcom/estrongs/android/view/w;->a(Lcom/estrongs/android/view/w;)Lcom/estrongs/android/pop/app/cleaner/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->f()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/x;->a:Lcom/estrongs/android/view/w;

    invoke-static {v0}, Lcom/estrongs/android/view/w;->b(Lcom/estrongs/android/view/w;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "Card_Show"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/x;->a:Lcom/estrongs/android/view/w;

    invoke-static {v0}, Lcom/estrongs/android/view/w;->b(Lcom/estrongs/android/view/w;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "Card_Show_UV"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/x;->a:Lcom/estrongs/android/view/w;

    invoke-static {v0}, Lcom/estrongs/android/view/w;->c(Lcom/estrongs/android/view/w;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/x;->a:Lcom/estrongs/android/view/w;

    invoke-static {v0}, Lcom/estrongs/android/view/w;->b(Lcom/estrongs/android/view/w;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "Snackbar_clean_cardshow"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/x;->a:Lcom/estrongs/android/view/w;

    invoke-static {v0}, Lcom/estrongs/android/view/w;->e(Lcom/estrongs/android/view/w;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/x;->a:Lcom/estrongs/android/view/w;

    invoke-static {v0}, Lcom/estrongs/android/view/w;->b(Lcom/estrongs/android/view/w;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "cn_card_show"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/x;->a:Lcom/estrongs/android/view/w;

    invoke-static {v0}, Lcom/estrongs/android/view/w;->d(Lcom/estrongs/android/view/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/x;->a:Lcom/estrongs/android/view/w;

    invoke-static {v0}, Lcom/estrongs/android/view/w;->b(Lcom/estrongs/android/view/w;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "Notify_click_cardshow"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
