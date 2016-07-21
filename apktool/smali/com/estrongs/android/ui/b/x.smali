.class Lcom/estrongs/android/ui/b/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/b/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/v;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/x;->b:Lcom/estrongs/android/ui/b/v;

    iput p2, p0, Lcom/estrongs/android/ui/b/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/b/x;->b:Lcom/estrongs/android/ui/b/v;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/u;->g(Lcom/estrongs/android/ui/b/u;)Lcom/estrongs/android/view/cp;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/x;->b:Lcom/estrongs/android/ui/b/v;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/u;->f(Lcom/estrongs/android/ui/b/u;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/ui/b/x;->a:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/estrongs/android/view/cp;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IZ)Z

    const/4 v0, 0x1

    return v0
.end method
