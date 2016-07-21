.class Lcom/estrongs/android/view/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/co;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/h;->a:Lcom/estrongs/android/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/view/h;->a:Lcom/estrongs/android/view/g;

    iget-object v0, p0, Lcom/estrongs/android/view/h;->a:Lcom/estrongs/android/view/g;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/view/g;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-virtual {v1, v0, p2, p3}, Lcom/estrongs/android/view/g;->a(Lcom/estrongs/fs/h;Landroid/view/View;I)V

    return-void
.end method
