.class Lcom/estrongs/android/ui/pcs/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/f;->b(Lcom/estrongs/android/ui/pcs/f;)Lcom/estrongs/android/ui/pcs/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/y;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/f;->dismiss()V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/f;->c(Lcom/estrongs/android/ui/pcs/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/f;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/f;->b:Lcom/estrongs/android/ui/pcs/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/f;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/f;->b:Lcom/estrongs/android/ui/pcs/q;

    const-string v1, "pcs_temp_mode"

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/pcs/u;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Lcom/estrongs/android/ui/pcs/q;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/f;->b(Lcom/estrongs/android/ui/pcs/f;)Lcom/estrongs/android/ui/pcs/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/y;->d()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/estrongs/android/ui/pcs/c;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/f;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/f;->d(Lcom/estrongs/android/ui/pcs/f;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/pcs/c;-><init>(Landroid/content/Context;ZZ)V

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/f;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/f;->b:Lcom/estrongs/android/ui/pcs/q;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/c;->a(Lcom/estrongs/android/ui/pcs/q;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/c;->a()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/estrongs/android/ui/pcs/c;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/f;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/f;->d(Lcom/estrongs/android/ui/pcs/f;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/c;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method
