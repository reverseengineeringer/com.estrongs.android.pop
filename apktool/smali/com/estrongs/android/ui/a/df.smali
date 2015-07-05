.class Lcom/estrongs/android/ui/a/df;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/db;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/db;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/df;->a:Lcom/estrongs/android/ui/a/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/df;->a:Lcom/estrongs/android/ui/a/db;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/db;->a(Lcom/estrongs/android/ui/a/db;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b03f4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    return-void
.end method
