.class Lcom/estrongs/android/ui/adapter/dv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/dr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/dr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/dv;->a:Lcom/estrongs/android/ui/adapter/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dv;->a:Lcom/estrongs/android/ui/adapter/dr;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/dr;->a(Lcom/estrongs/android/ui/adapter/dr;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0806aa

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    return-void
.end method
