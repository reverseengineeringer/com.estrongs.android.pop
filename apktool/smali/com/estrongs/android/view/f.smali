.class Lcom/estrongs/android/view/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/f;->a:Lcom/estrongs/android/view/e;

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

    iget-object v0, p0, Lcom/estrongs/android/view/f;->a:Lcom/estrongs/android/view/e;

    iget-object v1, p0, Lcom/estrongs/android/view/f;->a:Lcom/estrongs/android/view/e;

    invoke-virtual {v1, p3}, Lcom/estrongs/android/view/e;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/view/e;->a(Lcom/estrongs/fs/h;Landroid/view/View;IJ)V

    return-void
.end method
