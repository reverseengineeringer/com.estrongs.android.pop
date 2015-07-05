.class Lcom/estrongs/android/view/da;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/aw;

.field final synthetic b:Landroid/widget/AdapterView$OnItemLongClickListener;

.field final synthetic c:Lcom/estrongs/android/view/cq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cq;Lcom/estrongs/android/view/aw;Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/da;->c:Lcom/estrongs/android/view/cq;

    iput-object p2, p0, Lcom/estrongs/android/view/da;->a:Lcom/estrongs/android/view/aw;

    iput-object p3, p0, Lcom/estrongs/android/view/da;->b:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/da;->c:Lcom/estrongs/android/view/cq;

    iget-object v1, p0, Lcom/estrongs/android/view/da;->a:Lcom/estrongs/android/view/aw;

    invoke-static {v0, v1}, Lcom/estrongs/android/view/cq;->a(Lcom/estrongs/android/view/cq;Lcom/estrongs/android/view/aw;)Lcom/estrongs/android/view/aw;

    iget-object v0, p0, Lcom/estrongs/android/view/da;->b:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    const/4 v0, 0x1

    return v0
.end method
