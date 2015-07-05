.class Lcom/estrongs/android/ui/a/dc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ai;

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/ui/a/db;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/db;Lcom/estrongs/android/ui/theme/ai;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/dc;->c:Lcom/estrongs/android/ui/a/db;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/dc;->a:Lcom/estrongs/android/ui/theme/ai;

    iput p3, p0, Lcom/estrongs/android/ui/a/dc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/dc;->a:Lcom/estrongs/android/ui/theme/ai;

    iget-object v0, v0, Lcom/estrongs/android/ui/theme/ai;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/dc;->c:Lcom/estrongs/android/ui/a/db;

    const/4 v1, 0x2

    iget v2, p0, Lcom/estrongs/android/ui/a/dc;->b:I

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/a/db;->a(Lcom/estrongs/android/ui/a/db;II)V

    goto :goto_0
.end method
