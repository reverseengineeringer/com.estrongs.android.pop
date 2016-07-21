.class final Lcom/estrongs/android/h/a/g;
.super Lcom/estrongs/android/appinfo/p;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/h;

.field final synthetic b:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/h/a/g;->a:Lcom/estrongs/fs/h;

    iput-object p2, p0, Lcom/estrongs/android/h/a/g;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/estrongs/android/appinfo/p;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    const-string v0, "folder onLoaded"

    invoke-static {v0}, Lcom/estrongs/android/util/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/h/a/g;->a:Lcom/estrongs/fs/h;

    iget-object v1, p0, Lcom/estrongs/android/h/a/g;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    return-void
.end method
