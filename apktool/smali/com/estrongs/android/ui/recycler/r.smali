.class Lcom/estrongs/android/ui/recycler/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Lcom/estrongs/android/ui/recycler/q;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/recycler/q;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/recycler/r;->b:Lcom/estrongs/android/ui/recycler/q;

    iput-object p2, p0, Lcom/estrongs/android/ui/recycler/r;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/r;->b:Lcom/estrongs/android/ui/recycler/q;

    iget-object v0, v0, Lcom/estrongs/android/ui/recycler/q;->b:Lcom/estrongs/android/ui/recycler/n;

    iget-object v1, p0, Lcom/estrongs/android/ui/recycler/r;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/recycler/n;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
