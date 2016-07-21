.class Lcom/estrongs/android/ui/e/cj;
.super Lcom/estrongs/android/ui/e/cq;


# instance fields
.field final synthetic k:Lcom/estrongs/android/ui/e/ch;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ch;Landroid/app/Activity;ZLandroid/widget/LinearLayout;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cj;->k:Lcom/estrongs/android/ui/e/ch;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/estrongs/android/ui/e/cq;-><init>(Landroid/app/Activity;ZLandroid/widget/LinearLayout;Z)V

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cj;->k:Lcom/estrongs/android/ui/e/ch;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ch;->l:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B()V

    const/4 v0, 0x1

    return v0
.end method
