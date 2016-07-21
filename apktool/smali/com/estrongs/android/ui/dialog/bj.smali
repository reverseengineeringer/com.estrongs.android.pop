.class Lcom/estrongs/android/ui/dialog/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/ui/dialog/ci;

.field final synthetic d:Lcom/estrongs/android/ui/dialog/bh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bh;ILjava/lang/String;Lcom/estrongs/android/ui/dialog/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bj;->d:Lcom/estrongs/android/ui/dialog/bh;

    iput p2, p0, Lcom/estrongs/android/ui/dialog/bj;->a:I

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/bj;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/ui/dialog/bj;->c:Lcom/estrongs/android/ui/dialog/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bj;->d:Lcom/estrongs/android/ui/dialog/bh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/bh;->b(Lcom/estrongs/android/ui/dialog/bh;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bj;->c:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bj;->d:Lcom/estrongs/android/ui/dialog/bh;

    iget v1, p0, Lcom/estrongs/android/ui/dialog/bj;->a:I

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bj;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/bh;->a(Lcom/estrongs/android/ui/dialog/bh;ILjava/lang/String;)V

    goto :goto_0
.end method
