.class Lcom/estrongs/android/view/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/e;->a:Lcom/estrongs/android/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/recycler/b;

    iget-object v1, p0, Lcom/estrongs/android/view/e;->a:Lcom/estrongs/android/view/b;

    invoke-static {v1}, Lcom/estrongs/android/view/b;->a(Lcom/estrongs/android/view/b;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v1, v0, Lcom/estrongs/android/ui/recycler/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/view/e;->a:Lcom/estrongs/android/view/b;

    iget-object v2, v2, Lcom/estrongs/android/view/b;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/estrongs/fs/x;

    iget-object v2, v0, Lcom/estrongs/android/ui/recycler/b;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/view/e;->a:Lcom/estrongs/android/view/b;

    iget-object v0, v0, Lcom/estrongs/android/ui/recycler/b;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/estrongs/android/view/b;->a(Lcom/estrongs/android/view/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/e;->a:Lcom/estrongs/android/view/b;

    invoke-static {v0}, Lcom/estrongs/android/view/b;->c(Lcom/estrongs/android/view/b;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/view/e;->a:Lcom/estrongs/android/view/b;

    invoke-static {v2}, Lcom/estrongs/android/view/b;->b(Lcom/estrongs/android/view/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/e;->a:Lcom/estrongs/android/view/b;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/b;->c(Lcom/estrongs/fs/h;)V

    goto :goto_0
.end method
