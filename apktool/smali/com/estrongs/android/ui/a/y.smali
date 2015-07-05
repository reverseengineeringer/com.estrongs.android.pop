.class Lcom/estrongs/android/ui/a/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/a/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/w;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/y;->b:Lcom/estrongs/android/ui/a/w;

    iput p2, p0, Lcom/estrongs/android/ui/a/y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/y;->b:Lcom/estrongs/android/ui/a/w;

    iget v1, p0, Lcom/estrongs/android/ui/a/y;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/w;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/ff;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/y;->b:Lcom/estrongs/android/ui/a/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/a/w;->a(Lcom/estrongs/android/ui/a/w;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/dialog/ff;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/ui/a/z;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/a/z;-><init>(Lcom/estrongs/android/ui/a/y;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ff;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ff;->a()V

    return-void
.end method
