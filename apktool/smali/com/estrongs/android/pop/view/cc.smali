.class Lcom/estrongs/android/pop/view/cc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cc;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cc;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cc;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cc;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/cc;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->K:Lcom/estrongs/android/widget/f;

    invoke-virtual {v2}, Lcom/estrongs/android/widget/f;->e()Lcom/estrongs/fs/h;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/view/cc;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n:Z

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/pop/utils/ao;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Lcom/estrongs/fs/h;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cc;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->K:Lcom/estrongs/android/widget/f;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/f;->k()V

    return-void
.end method
