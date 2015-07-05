.class Lcom/estrongs/android/pop/app/imageviewer/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/r;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/r;->show()V

    goto :goto_0
.end method
