.class Lcom/estrongs/android/pop/app/analysis/view/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/view/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/g;->a:Lcom/estrongs/android/pop/app/analysis/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/g;->a:Lcom/estrongs/android/pop/app/analysis/view/b;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/b;->c(Lcom/estrongs/android/pop/app/analysis/view/b;)Lcom/estrongs/android/pop/app/analysis/view/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/i;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/g;->a:Lcom/estrongs/android/pop/app/analysis/view/b;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/b;->b()V

    return-void
.end method
