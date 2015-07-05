.class Lcom/estrongs/android/pop/app/ka;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/jz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/jz;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ka;->a:Lcom/estrongs/android/pop/app/jz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ka;->a:Lcom/estrongs/android/pop/app/jz;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/jz;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->finish()V

    return-void
.end method
