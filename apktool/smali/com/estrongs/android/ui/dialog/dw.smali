.class Lcom/estrongs/android/ui/dialog/dw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/dp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/dw;->a:Lcom/estrongs/android/ui/dialog/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dw;->a:Lcom/estrongs/android/ui/dialog/dp;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/dp;->d(Lcom/estrongs/android/ui/dialog/dp;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method
