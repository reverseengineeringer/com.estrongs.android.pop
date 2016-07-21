.class Lcom/estrongs/android/ui/dialog/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/ag;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ag;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/al;->b:Lcom/estrongs/android/ui/dialog/ag;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/al;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/al;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/al;->b:Lcom/estrongs/android/ui/dialog/ag;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ag;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->u(Z)V

    return-void
.end method
