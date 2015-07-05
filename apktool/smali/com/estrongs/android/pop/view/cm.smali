.class Lcom/estrongs/android/pop/view/cm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/aw;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/cg;

.field final synthetic c:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/view/aw;Lcom/estrongs/android/ui/dialog/cg;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cm;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/cm;->a:Lcom/estrongs/android/view/aw;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/cm;->b:Lcom/estrongs/android/ui/dialog/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cm;->a:Lcom/estrongs/android/view/aw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/aw;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cm;->b:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    return-void
.end method
