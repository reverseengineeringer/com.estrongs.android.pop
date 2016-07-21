.class Lcom/estrongs/android/ui/dialog/bx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/bv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bx;->a:Lcom/estrongs/android/ui/dialog/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/dialog/by;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/dialog/by;-><init>(Lcom/estrongs/android/ui/dialog/bx;Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
