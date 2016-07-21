.class Lcom/estrongs/android/widget/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/y;->a:Lcom/estrongs/android/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/gv;

    iget-object v1, p0, Lcom/estrongs/android/widget/y;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v1}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/widget/y;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v2}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->M()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/gv;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/estrongs/android/widget/z;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/widget/z;-><init>(Lcom/estrongs/android/widget/y;Lcom/estrongs/android/ui/dialog/gv;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/gv;->a(Lcom/estrongs/android/ui/dialog/ha;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gv;->show()V

    return-void
.end method
