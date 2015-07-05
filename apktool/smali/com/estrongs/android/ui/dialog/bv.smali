.class Lcom/estrongs/android/ui/dialog/bv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/bt;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/dialog/bw;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/dialog/bw;-><init>(Lcom/estrongs/android/ui/dialog/bv;Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
