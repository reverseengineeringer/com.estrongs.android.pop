.class Lcom/estrongs/android/ui/dialog/bh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/ui/dialog/cg;

.field final synthetic d:Lcom/estrongs/android/ui/dialog/bf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bf;ILjava/lang/String;Lcom/estrongs/android/ui/dialog/cg;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bh;->d:Lcom/estrongs/android/ui/dialog/bf;

    iput p2, p0, Lcom/estrongs/android/ui/dialog/bh;->a:I

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/bh;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/ui/dialog/bh;->c:Lcom/estrongs/android/ui/dialog/cg;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bh;->d:Lcom/estrongs/android/ui/dialog/bf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/bf;->b(Lcom/estrongs/android/ui/dialog/bf;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bh;->c:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bh;->d:Lcom/estrongs/android/ui/dialog/bf;

    iget v1, p0, Lcom/estrongs/android/ui/dialog/bh;->a:I

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bh;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/bf;->a(Lcom/estrongs/android/ui/dialog/bf;ILjava/lang/String;)V

    goto :goto_0
.end method
