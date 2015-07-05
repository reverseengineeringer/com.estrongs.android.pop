.class Lcom/estrongs/android/pop/app/a/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/e;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lcom/estrongs/android/pop/app/a/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/ac;Lcom/estrongs/android/pop/app/a/e;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/ad;->c:Lcom/estrongs/android/pop/app/a/ac;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/a/ad;->a:Lcom/estrongs/android/pop/app/a/e;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/a/ad;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/ad;->b:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ad;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
