.class Lcom/estrongs/android/widget/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ai;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/ak;->a:Lcom/estrongs/android/widget/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/widget/ak;->a:Lcom/estrongs/android/widget/ai;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/ai;->b()Lcom/estrongs/android/view/cd;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/estrongs/android/view/cd;->e(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/widget/ak;->a:Lcom/estrongs/android/widget/ai;

    iget-object v1, v1, Lcom/estrongs/android/widget/ai;->l:Lcom/estrongs/android/widget/au;

    invoke-interface {v1, v0}, Lcom/estrongs/android/widget/au;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ak;->a:Lcom/estrongs/android/widget/ai;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ai;->dismiss()V

    return-void
.end method
