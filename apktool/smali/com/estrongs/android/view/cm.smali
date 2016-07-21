.class Lcom/estrongs/android/view/cm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/view/ck;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ck;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cm;->b:Lcom/estrongs/android/view/ck;

    iput p2, p0, Lcom/estrongs/android/view/cm;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/cm;->b:Lcom/estrongs/android/view/ck;

    iget-object v0, v0, Lcom/estrongs/android/view/ck;->e:Lcom/estrongs/android/view/cg;

    iget-object v0, v0, Lcom/estrongs/android/view/cg;->k:Lcom/estrongs/android/view/cp;

    iget-object v1, p0, Lcom/estrongs/android/view/cm;->b:Lcom/estrongs/android/view/ck;

    iget-object v1, v1, Lcom/estrongs/android/view/ck;->e:Lcom/estrongs/android/view/cg;

    iget-object v1, v1, Lcom/estrongs/android/view/cg;->h:Landroid/support/v7/widget/RecyclerView;

    iget v2, p0, Lcom/estrongs/android/view/cm;->a:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/estrongs/android/view/cp;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IZ)Z

    const/4 v0, 0x1

    return v0
.end method
