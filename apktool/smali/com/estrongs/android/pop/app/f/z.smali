.class Lcom/estrongs/android/pop/app/f/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/f/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/f/y;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/f/z;->a:Lcom/estrongs/android/pop/app/f/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/z;->a:Lcom/estrongs/android/pop/app/f/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/f/y;->a(Landroid/content/Intent;)V

    return-void
.end method
