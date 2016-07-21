.class Lcom/estrongs/android/view/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/r;->a:Lcom/estrongs/android/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/r;->a:Lcom/estrongs/android/view/g;

    invoke-static {v0}, Lcom/estrongs/android/view/g;->i(Lcom/estrongs/android/view/g;)Lcom/estrongs/android/pop/app/compress/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->dismiss()V

    return-void
.end method
