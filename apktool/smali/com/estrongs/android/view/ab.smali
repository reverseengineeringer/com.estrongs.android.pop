.class Lcom/estrongs/android/view/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ab;->a:Lcom/estrongs/android/view/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ab;->a:Lcom/estrongs/android/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/z;

    iget-object v0, v0, Lcom/estrongs/android/view/z;->ag:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->V()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0804aa

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ab;->a:Lcom/estrongs/android/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/z;

    iget-boolean v0, v0, Lcom/estrongs/android/view/z;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ab;->a:Lcom/estrongs/android/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/z;

    invoke-static {v0}, Lcom/estrongs/android/view/z;->a(Lcom/estrongs/android/view/z;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/ab;->a:Lcom/estrongs/android/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/z;

    iget-object v1, p0, Lcom/estrongs/android/view/ab;->a:Lcom/estrongs/android/view/aa;

    iget-object v1, v1, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/z;

    iget-object v1, v1, Lcom/estrongs/android/view/z;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/z;->a(Ljava/util/List;)V

    goto :goto_0
.end method
