.class Lcom/estrongs/android/view/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/y;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/z;->a:Lcom/estrongs/android/view/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/z;->a:Lcom/estrongs/android/view/y;

    iget-object v0, v0, Lcom/estrongs/android/view/y;->a:Lcom/estrongs/android/view/x;

    iget-object v0, v0, Lcom/estrongs/android/view/x;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->H()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0b02fa

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/z;->a:Lcom/estrongs/android/view/y;

    iget-object v0, v0, Lcom/estrongs/android/view/y;->a:Lcom/estrongs/android/view/x;

    iget-boolean v0, v0, Lcom/estrongs/android/view/x;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/z;->a:Lcom/estrongs/android/view/y;

    iget-object v0, v0, Lcom/estrongs/android/view/y;->a:Lcom/estrongs/android/view/x;

    invoke-static {v0}, Lcom/estrongs/android/view/x;->a(Lcom/estrongs/android/view/x;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/z;->a:Lcom/estrongs/android/view/y;

    iget-object v0, v0, Lcom/estrongs/android/view/y;->a:Lcom/estrongs/android/view/x;

    iget-object v1, p0, Lcom/estrongs/android/view/z;->a:Lcom/estrongs/android/view/y;

    iget-object v1, v1, Lcom/estrongs/android/view/y;->a:Lcom/estrongs/android/view/x;

    iget-object v1, v1, Lcom/estrongs/android/view/x;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/x;->a(Ljava/util/List;)V

    goto :goto_0
.end method
