.class Lcom/estrongs/android/ui/adapter/bx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/bv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/bx;->a:Lcom/estrongs/android/ui/adapter/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/bx;->a:Lcom/estrongs/android/ui/adapter/bv;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/bv;->a:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
