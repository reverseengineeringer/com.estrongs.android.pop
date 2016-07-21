.class Lcom/estrongs/android/pop/app/cleaner/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/pop/app/cleaner/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    iput p2, p0, Lcom/estrongs/android/pop/app/cleaner/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->w()Lcom/estrongs/android/ui/view/ScanProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ScanProgressView;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->v()Lcom/estrongs/android/cleaner/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/a;->g()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->a(Lcom/estrongs/android/pop/app/cleaner/c;)Lcom/estrongs/android/ui/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/e;->a:I

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/cleaner/c;->a(Lcom/estrongs/android/pop/app/cleaner/c;I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/b;->a(F)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->c(Lcom/estrongs/android/pop/app/cleaner/c;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/cleaner/c;->b(Lcom/estrongs/android/pop/app/cleaner/c;)[I

    move-result-object v1

    aget v1, v1, v3

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->c(Lcom/estrongs/android/pop/app/cleaner/c;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/f;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cleaner/f;-><init>(Lcom/estrongs/android/pop/app/cleaner/e;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->a(Lcom/estrongs/android/pop/app/cleaner/c;)Lcom/estrongs/android/ui/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/app/cleaner/e;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/b;->a(I)V

    new-instance v0, Lcom/estrongs/android/pop/app/cleaner/g;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/cleaner/g;-><init>(Lcom/estrongs/android/pop/app/cleaner/e;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/g;->run()V

    return-void
.end method
