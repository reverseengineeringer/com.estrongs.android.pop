.class Lcom/estrongs/android/view/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/af;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/af;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ag;->a:Lcom/estrongs/android/view/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/ag;->a:Lcom/estrongs/android/view/af;

    iget-object v0, v0, Lcom/estrongs/android/view/af;->ag:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->V()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0804aa

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/view/ag;->a:Lcom/estrongs/android/view/af;

    invoke-virtual {v1}, Lcom/estrongs/android/view/af;->c()V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
