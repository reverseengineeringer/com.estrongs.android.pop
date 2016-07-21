.class Lcom/estrongs/android/pop/app/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ab;->a:Lcom/estrongs/android/pop/app/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ab;->a:Lcom/estrongs/android/pop/app/x;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/x;->e(Lcom/estrongs/android/pop/app/x;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ab;->a:Lcom/estrongs/android/pop/app/x;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/x;->a(Lcom/estrongs/android/pop/app/x;)Lcom/estrongs/android/pop/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->h()V

    return-void
.end method
