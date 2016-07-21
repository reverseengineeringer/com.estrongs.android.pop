.class Lcom/estrongs/android/view/et;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/er;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/er;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/et;->a:Lcom/estrongs/android/view/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/view/et;->a:Lcom/estrongs/android/view/er;

    iget-object v0, v0, Lcom/estrongs/android/view/er;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->bm()V

    iget-object v0, p0, Lcom/estrongs/android/view/et;->a:Lcom/estrongs/android/view/er;

    invoke-static {v0}, Lcom/estrongs/android/view/er;->e(Lcom/estrongs/android/view/er;)Lcom/estrongs/android/pop/app/b/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/k;->a(Z)V

    return-void
.end method
