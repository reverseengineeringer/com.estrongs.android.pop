.class Lcom/estrongs/android/ui/dialog/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ag;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ak;->a:Lcom/estrongs/android/ui/dialog/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ak;->a:Lcom/estrongs/android/ui/dialog/ag;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ag;->b:Lcom/estrongs/android/ui/dialog/ao;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/dialog/ao;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ak;->a:Lcom/estrongs/android/ui/dialog/ag;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/dialog/ag;->a(I)V

    return-void
.end method
