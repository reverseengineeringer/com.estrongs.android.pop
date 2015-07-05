.class Lcom/estrongs/android/ui/e/fy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lcom/estrongs/android/ui/e/fx;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/fx;Ljava/util/List;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/fy;->c:Lcom/estrongs/android/ui/e/fx;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/fy;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/android/ui/e/fy;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fy;->c:Lcom/estrongs/android/ui/e/fx;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/fx;->a:Lcom/estrongs/android/ui/e/cp;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/fy;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/fy;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;Ljava/util/List;Z)V

    return-void
.end method
