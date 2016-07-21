.class Lcom/estrongs/android/ui/dialog/fe;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/b;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/fb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/fb;Lcom/estrongs/android/ui/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fe;->b:Lcom/estrongs/android/ui/dialog/fb;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/fe;->a:Lcom/estrongs/android/ui/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fe;->a:Lcom/estrongs/android/ui/view/b;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/b;->d:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
