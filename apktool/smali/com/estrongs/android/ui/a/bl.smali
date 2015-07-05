.class Lcom/estrongs/android/ui/a/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/bj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/bl;->a:Lcom/estrongs/android/ui/a/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/a/bl;->a:Lcom/estrongs/android/ui/a/bj;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/bj;->a:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
