.class Lcom/estrongs/android/pop/app/cx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/HideListActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/HideListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cx;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cx;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cx;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/HideListActivity;->b(Lcom/estrongs/android/pop/app/HideListActivity;)[Lcom/estrongs/android/pop/utils/aj;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->a(Lcom/estrongs/android/pop/app/HideListActivity;Lcom/estrongs/android/pop/utils/aj;)Lcom/estrongs/android/pop/utils/aj;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cx;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/HideListActivity;->d(Lcom/estrongs/android/pop/app/HideListActivity;)Lcom/estrongs/android/pop/utils/aj;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/aj;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "path"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isDir"

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cx;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/HideListActivity;->d(Lcom/estrongs/android/pop/app/HideListActivity;)Lcom/estrongs/android/pop/utils/aj;

    move-result-object v3

    iget-boolean v3, v3, Lcom/estrongs/android/pop/utils/aj;->a:Z

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cx;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/android/pop/app/HideListActivity;->setResult(ILandroid/content/Intent;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cx;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/HideListActivity;->finish()V

    goto :goto_0
.end method
