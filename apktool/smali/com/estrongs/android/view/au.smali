.class Lcom/estrongs/android/view/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/as;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/as;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/au;->a:Lcom/estrongs/android/view/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/au;->a:Lcom/estrongs/android/view/as;

    iget-boolean v0, v0, Lcom/estrongs/android/view/as;->l:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/e;

    iget-object v2, v0, Lcom/estrongs/android/widget/e;->g:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/estrongs/android/view/au;->a:Lcom/estrongs/android/view/as;

    invoke-virtual {v1, p3}, Lcom/estrongs/android/view/as;->c(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/au;->a:Lcom/estrongs/android/view/as;

    invoke-virtual {v1, p3}, Lcom/estrongs/android/view/as;->h(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/estrongs/android/ui/drag/j;

    invoke-direct {v2}, Lcom/estrongs/android/ui/drag/j;-><init>()V

    invoke-virtual {v2, p3}, Lcom/estrongs/android/ui/drag/j;->a(I)V

    iget-object v1, v0, Lcom/estrongs/android/widget/e;->d:Landroid/view/View;

    check-cast v1, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/drag/j;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    iget-object v1, v0, Lcom/estrongs/android/widget/e;->d:Landroid/view/View;

    const v3, 0x7f020040

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/estrongs/android/widget/e;->d:Landroid/view/View;

    invoke-static {v1}, Lcom/estrongs/android/ui/d/a;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/drag/j;->a(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/estrongs/android/view/au;->a:Lcom/estrongs/android/view/as;

    iget-object v1, v1, Lcom/estrongs/android/view/as;->n:Ljava/util/Map;

    iget-object v3, p0, Lcom/estrongs/android/view/au;->a:Lcom/estrongs/android/view/as;

    invoke-virtual {v3, p3}, Lcom/estrongs/android/view/as;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/estrongs/android/widget/e;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/view/au;->a:Lcom/estrongs/android/view/as;

    iget-object v1, v1, Lcom/estrongs/android/view/as;->ad:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f02012e

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/view/au;->a:Lcom/estrongs/android/view/as;

    iget-object v1, v1, Lcom/estrongs/android/view/as;->n:Ljava/util/Map;

    iget-object v2, p0, Lcom/estrongs/android/view/au;->a:Lcom/estrongs/android/view/as;

    invoke-virtual {v2, p3}, Lcom/estrongs/android/view/as;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/estrongs/android/widget/e;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/au;->a:Lcom/estrongs/android/view/as;

    iget-object v0, v0, Lcom/estrongs/android/view/as;->h:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/au;->a:Lcom/estrongs/android/view/as;

    iget-object v0, v0, Lcom/estrongs/android/view/as;->h:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_1
.end method
