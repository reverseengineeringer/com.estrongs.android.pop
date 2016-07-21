.class Lcom/estrongs/android/ui/dialog/il;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/hq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/il;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/estrongs/fs/impl/local/m;->j()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/il;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget v1, v1, Lcom/estrongs/fs/impl/local/r;->c:I

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/m;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/il;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/il;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v3, v0, v1}, Lcom/estrongs/android/ui/dialog/hq;->a(Lcom/estrongs/android/ui/dialog/hq;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v0, v1}, Lcom/estrongs/android/ui/dialog/hq;->a(Lcom/estrongs/android/ui/dialog/hq;[Ljava/lang/String;I)V

    return-void
.end method
