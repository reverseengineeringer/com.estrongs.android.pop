.class Lcom/estrongs/android/view/cz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/h;

.field final synthetic b:Lcom/estrongs/android/view/ci;

.field final synthetic c:I

.field final synthetic d:Lcom/estrongs/android/view/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cr;Lcom/estrongs/fs/h;Lcom/estrongs/android/view/ci;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cz;->d:Lcom/estrongs/android/view/cr;

    iput-object p2, p0, Lcom/estrongs/android/view/cz;->a:Lcom/estrongs/fs/h;

    iput-object p3, p0, Lcom/estrongs/android/view/cz;->b:Lcom/estrongs/android/view/ci;

    iput p4, p0, Lcom/estrongs/android/view/cz;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/view/cz;->a:Lcom/estrongs/fs/h;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/cz;->d:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->k:Lcom/estrongs/android/view/cp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cz;->d:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->k:Lcom/estrongs/android/view/cp;

    iget-object v1, p0, Lcom/estrongs/android/view/cz;->d:Lcom/estrongs/android/view/cr;

    iget-object v1, v1, Lcom/estrongs/android/view/cr;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/estrongs/android/view/cz;->b:Lcom/estrongs/android/view/ci;

    iget-object v2, v2, Lcom/estrongs/android/view/ci;->itemView:Landroid/view/View;

    iget v3, p0, Lcom/estrongs/android/view/cz;->c:I

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/estrongs/android/view/cp;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IZ)Z

    goto :goto_0
.end method
