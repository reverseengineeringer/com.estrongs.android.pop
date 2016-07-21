.class Lcom/estrongs/android/pop/app/analysis/b/w;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/b/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/b/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/b/w;->a:Lcom/estrongs/android/pop/app/analysis/b/v;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/w;->a:Lcom/estrongs/android/pop/app/analysis/b/v;

    invoke-virtual {v0, p2, p3}, Lcom/estrongs/android/pop/app/analysis/b/v;->a(II)V

    return-void
.end method
