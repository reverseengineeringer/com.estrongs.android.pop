.class Lcom/estrongs/android/view/dk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/dj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/dj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/dk;->a:Lcom/estrongs/android/view/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/dk;->a:Lcom/estrongs/android/view/dj;

    invoke-static {v0}, Lcom/estrongs/android/view/dj;->a(Lcom/estrongs/android/view/dj;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/dk;->a:Lcom/estrongs/android/view/dj;

    iget-object v1, v1, Lcom/estrongs/android/view/dj;->ad:Landroid/app/Activity;

    const v2, 0x7f0b0159

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/dk;->a:Lcom/estrongs/android/view/dj;

    invoke-static {v0}, Lcom/estrongs/android/view/dj;->b(Lcom/estrongs/android/view/dj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/dk;->a:Lcom/estrongs/android/view/dj;

    iget-object v1, p0, Lcom/estrongs/android/view/dk;->a:Lcom/estrongs/android/view/dj;

    const v2, 0x7f0b03c3

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/dj;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/view/dj;->a(Lcom/estrongs/android/view/dj;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/dk;->a:Lcom/estrongs/android/view/dj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/view/dj;->a(Lcom/estrongs/android/view/dj;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/dk;->a:Lcom/estrongs/android/view/dj;

    iget-object v1, p0, Lcom/estrongs/android/view/dk;->a:Lcom/estrongs/android/view/dj;

    invoke-static {v1}, Lcom/estrongs/android/view/dj;->c(Lcom/estrongs/android/view/dj;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/view/dj;->a(Lcom/estrongs/android/view/dj;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/dk;->a:Lcom/estrongs/android/view/dj;

    invoke-static {v0}, Lcom/estrongs/android/view/dj;->a(Lcom/estrongs/android/view/dj;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/dk;->a:Lcom/estrongs/android/view/dj;

    iget-object v1, v1, Lcom/estrongs/android/view/dj;->ad:Landroid/app/Activity;

    const v2, 0x7f0b015a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/dk;->a:Lcom/estrongs/android/view/dj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/view/dj;->a(Lcom/estrongs/android/view/dj;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/dk;->a:Lcom/estrongs/android/view/dj;

    invoke-static {v0}, Lcom/estrongs/android/view/dj;->a(Lcom/estrongs/android/view/dj;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/dk;->a:Lcom/estrongs/android/view/dj;

    iget-object v1, v1, Lcom/estrongs/android/view/dj;->ad:Landroid/app/Activity;

    const v2, 0x7f0b0158

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/view/dk;->a:Lcom/estrongs/android/view/dj;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/dj;->a(Landroid/content/Intent;)V

    goto :goto_1
.end method
