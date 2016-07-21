.class Lcom/estrongs/android/view/dd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/co;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/dd;->a:Lcom/estrongs/android/view/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/dd;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/view/cr;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    instance-of v1, v0, Lcom/estrongs/fs/impl/s/a;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/estrongs/fs/impl/s/a;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/s/a;->a()Lcom/estrongs/fs/h;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/w;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/dd;->a:Lcom/estrongs/android/view/cr;

    invoke-static {v0, v3}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/android/view/cr;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/view/dd;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->c(Lcom/estrongs/fs/h;)V

    instance-of v0, v1, Lcom/estrongs/fs/impl/c/b;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/bm;->c()Lcom/estrongs/android/util/bm;

    move-result-object v0

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/util/bm;->a(Ljava/lang/String;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/dd;->a:Lcom/estrongs/android/view/cr;

    iget-object v1, v1, Lcom/estrongs/android/view/cr;->E:Lcom/estrongs/android/view/dx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/dd;->a:Lcom/estrongs/android/view/cr;

    iget-object v1, v1, Lcom/estrongs/android/view/cr;->E:Lcom/estrongs/android/view/dx;

    invoke-interface {v1, v0}, Lcom/estrongs/android/view/dx;->a(Lcom/estrongs/fs/h;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method
