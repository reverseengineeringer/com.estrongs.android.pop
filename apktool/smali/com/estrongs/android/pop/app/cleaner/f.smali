.class Lcom/estrongs/android/pop/app/cleaner/f;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cleaner/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/f;->a:Lcom/estrongs/android/pop/app/cleaner/e;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/f;->a:Lcom/estrongs/android/pop/app/cleaner/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->c(Lcom/estrongs/android/pop/app/cleaner/c;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/f;->a:Lcom/estrongs/android/pop/app/cleaner/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/e;->b:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->d()V

    :cond_1
    return-void
.end method
