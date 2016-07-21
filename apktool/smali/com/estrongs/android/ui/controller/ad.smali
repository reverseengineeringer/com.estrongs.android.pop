.class Lcom/estrongs/android/ui/controller/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/ad;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ad;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/h;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ad;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0, p1}, Lcom/estrongs/android/ui/controller/h;->a(Lcom/estrongs/android/ui/controller/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ad;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/ad;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v2, v2, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "all"

    invoke-virtual {v2}, Lcom/estrongs/android/view/cr;->aq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/ad;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v2, v2, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f080380

    invoke-static {v2, v3, v0}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ad;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method
