.class Lcom/estrongs/android/ui/c/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/esclasses/d;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/a/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/e;->a:Lcom/estrongs/android/ui/c/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/e;->a:Lcom/estrongs/android/ui/c/a/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/a/d;->a(Lcom/estrongs/android/ui/c/a/d;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    sput v0, Lcom/estrongs/android/ui/c/a/d;->c:I

    return-void
.end method
