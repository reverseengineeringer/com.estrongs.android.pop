.class Lcom/estrongs/android/ui/b/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ci;

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/ui/b/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/v;Lcom/estrongs/android/view/ci;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/y;->c:Lcom/estrongs/android/ui/b/v;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/y;->a:Lcom/estrongs/android/view/ci;

    iput p3, p0, Lcom/estrongs/android/ui/b/y;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/b/y;->c:Lcom/estrongs/android/ui/b/v;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/u;->i(Lcom/estrongs/android/ui/b/u;)Lcom/estrongs/android/view/cp;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/y;->c:Lcom/estrongs/android/ui/b/v;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/u;->h(Lcom/estrongs/android/ui/b/u;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/y;->a:Lcom/estrongs/android/view/ci;

    iget-object v2, v2, Lcom/estrongs/android/view/ci;->itemView:Landroid/view/View;

    iget v3, p0, Lcom/estrongs/android/ui/b/y;->b:I

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/estrongs/android/view/cp;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IZ)Z

    return-void
.end method
