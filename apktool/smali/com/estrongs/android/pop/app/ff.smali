.class Lcom/estrongs/android/pop/app/ff;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ff;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ff;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iput p2, v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ff;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    add-int v1, p2, p3

    iput v1, v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
