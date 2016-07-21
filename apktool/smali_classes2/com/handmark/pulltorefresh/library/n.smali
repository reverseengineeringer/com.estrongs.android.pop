.class Lcom/handmark/pulltorefresh/library/n;
.super Lcom/estrongs/android/widget/HeaderGridView;

# interfaces
.implements Lcom/handmark/pulltorefresh/library/a/a;


# instance fields
.field final synthetic a:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/n;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/widget/HeaderGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/widget/HeaderGridView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/n;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
