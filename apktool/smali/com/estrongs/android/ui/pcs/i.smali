.class Lcom/estrongs/android/ui/pcs/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/i;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/i;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/d;->b(Lcom/estrongs/android/ui/pcs/d;)Lcom/estrongs/android/ui/pcs/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/v;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/i;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/d;->dismiss()V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/i;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/d;->c(Lcom/estrongs/android/ui/pcs/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/i;->a:Lcom/estrongs/android/ui/pcs/d;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/d;->b:Lcom/estrongs/android/ui/pcs/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/i;->a:Lcom/estrongs/android/ui/pcs/d;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/d;->b:Lcom/estrongs/android/ui/pcs/n;

    const-string v1, "pcs_temp_mode"

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/pcs/r;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Lcom/estrongs/android/ui/pcs/n;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/i;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/d;->b(Lcom/estrongs/android/ui/pcs/d;)Lcom/estrongs/android/ui/pcs/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/v;->d()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/estrongs/android/ui/pcs/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/i;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/d;->d(Lcom/estrongs/android/ui/pcs/d;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/pcs/a;-><init>(Landroid/content/Context;ZZ)V

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/i;->a:Lcom/estrongs/android/ui/pcs/d;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/d;->b:Lcom/estrongs/android/ui/pcs/n;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/a;->a(Lcom/estrongs/android/ui/pcs/n;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/a;->a()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/estrongs/android/ui/pcs/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/i;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/d;->d(Lcom/estrongs/android/ui/pcs/d;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/a;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method
