.class Lcom/estrongs/android/ui/adapter/de;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Landroid/support/v7/widget/SwitchCompat;

.field final synthetic c:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;Landroid/app/Dialog;Landroid/support/v7/widget/SwitchCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/de;->c:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    iput-object p2, p0, Lcom/estrongs/android/ui/adapter/de;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/estrongs/android/ui/adapter/de;->b:Landroid/support/v7/widget/SwitchCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/de;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/de;->b:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    const-string v1, "sidebar"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/a/a;->a(ZLjava/lang/String;)V

    return-void
.end method
