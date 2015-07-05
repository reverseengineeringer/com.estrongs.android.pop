.class Lcom/estrongs/android/ui/dialog/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/ae;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ae;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/aj;->b:Lcom/estrongs/android/ui/dialog/ae;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/aj;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/aj;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/aj;->b:Lcom/estrongs/android/ui/dialog/ae;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ae;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->v(Z)V

    return-void
.end method
