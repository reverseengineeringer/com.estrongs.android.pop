.class Lcom/estrongs/android/view/dq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/widget/AdapterView$OnItemClickListener;

.field final synthetic b:Lcom/estrongs/android/view/dp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/dp;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/dq;->b:Lcom/estrongs/android/view/dp;

    iput-object p2, p0, Lcom/estrongs/android/view/dq;->a:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->b:Lcom/estrongs/android/view/dp;

    iget-boolean v0, v0, Lcom/estrongs/android/view/dp;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->b:Lcom/estrongs/android/view/dp;

    iget-object v0, v0, Lcom/estrongs/android/view/dp;->h:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->b:Lcom/estrongs/android/view/dp;

    iget-object v0, v0, Lcom/estrongs/android/view/dp;->h:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/dq;->a:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/dq;->a:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method
