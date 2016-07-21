.class Lcom/estrongs/android/ui/dialog/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ar;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/aw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/aw;Lcom/estrongs/android/ui/dialog/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ba;->b:Lcom/estrongs/android/ui/dialog/aw;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ba;->a:Lcom/estrongs/android/ui/dialog/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ba;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ba;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
