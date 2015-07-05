.class Lcom/estrongs/android/view/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/aw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bi;->a:Lcom/estrongs/android/view/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/bi;->a:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/view/aw;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    instance-of v1, v0, Lcom/estrongs/fs/impl/n/a;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/estrongs/fs/impl/n/a;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/n/a;->a()Lcom/estrongs/fs/h;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/m;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/bi;->a:Lcom/estrongs/android/view/aw;

    invoke-static {v0, v3}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/view/aw;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/view/bi;->a:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/fs/h;)V

    invoke-static {}, Lcom/estrongs/android/util/be;->c()Lcom/estrongs/android/util/be;

    move-result-object v0

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/util/be;->a(Ljava/lang/String;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/bi;->a:Lcom/estrongs/android/view/aw;

    iget-object v1, v1, Lcom/estrongs/android/view/aw;->x:Lcom/estrongs/android/view/cc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/bi;->a:Lcom/estrongs/android/view/aw;

    iget-object v1, v1, Lcom/estrongs/android/view/aw;->x:Lcom/estrongs/android/view/cc;

    invoke-interface {v1, v0}, Lcom/estrongs/android/view/cc;->a(Lcom/estrongs/fs/h;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method
