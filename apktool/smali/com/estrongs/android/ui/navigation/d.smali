.class Lcom/estrongs/android/ui/navigation/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/d;->a:Lcom/estrongs/android/ui/navigation/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/d;->a:Lcom/estrongs/android/ui/navigation/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/a;->c(Lcom/estrongs/android/ui/navigation/a;)Lcom/estrongs/android/widget/RealViewSwitcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->b(I)V

    return-void
.end method
