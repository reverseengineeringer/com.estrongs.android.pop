.class Lcom/estrongs/android/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/a/q;


# direct methods
.method constructor <init>(Lcom/estrongs/android/a/q;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/r;->a:Lcom/estrongs/android/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/r;->a:Lcom/estrongs/android/a/q;

    const/4 v1, 0x3

    iput v1, v0, Lcom/estrongs/android/a/q;->c:I

    iget-object v0, p0, Lcom/estrongs/android/a/r;->a:Lcom/estrongs/android/a/q;

    invoke-virtual {v0}, Lcom/estrongs/android/a/q;->dismiss()V

    return-void
.end method
