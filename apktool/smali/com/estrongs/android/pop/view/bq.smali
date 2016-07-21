.class Lcom/estrongs/android/pop/view/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/cp;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/estrongs/android/view/cr;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    instance-of v0, v0, Lcom/estrongs/android/pop/spfs/CreateSiteFileObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->I:Lcom/estrongs/android/view/cp;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/estrongs/android/view/cp;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IZ)Z

    move-result v0

    goto :goto_0
.end method
