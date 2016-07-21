.class Lcom/estrongs/android/pop/app/b/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/impl/r/b;

.field final synthetic b:Lcom/estrongs/android/pop/app/b/c/j;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/c/j;Lcom/estrongs/fs/impl/r/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/c/k;->b:Lcom/estrongs/android/pop/app/b/c/j;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/c/k;->a:Lcom/estrongs/fs/impl/r/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/k;->b:Lcom/estrongs/android/pop/app/b/c/j;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/b/c/j;->n:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/k;->b:Lcom/estrongs/android/pop/app/b/c/j;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/b/c/j;->n:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/k;->a:Lcom/estrongs/fs/impl/r/b;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/r/b;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    :cond_0
    return-void
.end method
