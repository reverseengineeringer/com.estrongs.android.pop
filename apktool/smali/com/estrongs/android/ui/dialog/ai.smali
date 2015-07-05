.class Lcom/estrongs/android/ui/dialog/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ae;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ai;->a:Lcom/estrongs/android/ui/dialog/ae;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ai;->a:Lcom/estrongs/android/ui/dialog/ae;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ae;->b:Lcom/estrongs/android/ui/dialog/am;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/dialog/am;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ai;->a:Lcom/estrongs/android/ui/dialog/ae;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/dialog/ae;->a(I)V

    return-void
.end method
