.class Lcom/estrongs/android/widget/al;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/co;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/al;->a:Lcom/estrongs/android/widget/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/widget/al;->a:Lcom/estrongs/android/widget/aj;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/aj;->b()Lcom/estrongs/android/view/eb;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/estrongs/android/view/eb;->e(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/widget/al;->a:Lcom/estrongs/android/widget/aj;

    iget-object v1, v1, Lcom/estrongs/android/widget/aj;->h:Lcom/estrongs/android/widget/av;

    invoke-interface {v1, v0}, Lcom/estrongs/android/widget/av;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/al;->a:Lcom/estrongs/android/widget/aj;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/aj;->dismiss()V

    return-void
.end method
