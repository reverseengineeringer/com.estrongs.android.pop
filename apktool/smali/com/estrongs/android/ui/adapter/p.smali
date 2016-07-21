.class Lcom/estrongs/android/ui/adapter/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/adapter/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/k;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/p;->b:Lcom/estrongs/android/ui/adapter/k;

    iput p2, p0, Lcom/estrongs/android/ui/adapter/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/p;->b:Lcom/estrongs/android/ui/adapter/k;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/k;->a(Lcom/estrongs/android/ui/adapter/k;)Lcom/estrongs/android/view/co;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/p;->b:Lcom/estrongs/android/ui/adapter/k;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/k;->a(Lcom/estrongs/android/ui/adapter/k;)Lcom/estrongs/android/view/co;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/estrongs/android/ui/adapter/p;->a:I

    invoke-interface {v0, v1, p1, v2}, Lcom/estrongs/android/view/co;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)V

    :cond_0
    return-void
.end method
