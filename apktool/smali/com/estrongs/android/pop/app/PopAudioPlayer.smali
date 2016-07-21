.class public Lcom/estrongs/android/pop/app/PopAudioPlayer;
.super Lcom/estrongs/android/ui/base/HomeAsBackActivity;

# interfaces
.implements Lcom/estrongs/android/ui/e/jz;


# static fields
.field private static F:[Ljava/lang/String;

.field private static final g:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Z

.field private E:Z

.field private G:Lcom/estrongs/android/pop/app/ag;

.field private H:Landroid/view/MenuItem;

.field private I:Lcom/estrongs/android/pop/app/x;

.field private J:Landroid/widget/ProgressBar;

.field private K:Lcom/estrongs/android/pop/app/c/k;

.field private L:I

.field private M:Landroid/graphics/Bitmap;

.field private N:Lcom/estrongs/android/view/a/a;

.field private O:Lcom/estrongs/android/view/a/a;

.field private P:Lcom/estrongs/android/view/a/a;

.field private Q:Lcom/estrongs/android/view/a/a;

.field private R:Lcom/estrongs/android/view/a/a;

.field private S:Lcom/estrongs/android/view/a/a;

.field private T:Lcom/estrongs/android/view/a/a;

.field private U:Lcom/estrongs/android/view/a/a;

.field private V:Lcom/estrongs/android/view/a/a;

.field private W:Lcom/estrongs/android/view/a/a;

.field private X:Lcom/estrongs/android/view/a/a;

.field private Y:Lcom/estrongs/android/view/a/a;

.field private Z:Lcom/estrongs/android/view/a/a;

.field protected a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

.field private aA:I

.field private aB:Lcom/estrongs/android/j/c;

.field private aC:Landroid/widget/ImageView;

.field private aD:Landroid/widget/ImageView;

.field private aE:Lcom/estrongs/android/pop/app/c/a;

.field private aF:Landroid/graphics/Bitmap;

.field private aG:Lcom/estrongs/android/ui/view/ac;

.field private aH:I

.field private aI:Landroid/os/Handler;

.field private aJ:Landroid/content/ServiceConnection;

.field private aK:Landroid/graphics/Rect;

.field private aL:Landroid/view/View$OnClickListener;

.field private aa:Landroid/view/Menu;

.field private ab:Landroid/support/v7/view/ActionMode;

.field private ac:I

.field private ad:I

.field private ae:Landroid/widget/FrameLayout;

.field private af:Landroid/widget/TextView;

.field private ag:Landroid/widget/TextView;

.field private ah:Landroid/widget/ImageView;

.field private ai:Landroid/widget/ImageView;

.field private aj:Landroid/widget/FrameLayout;

.field private ak:Landroid/widget/ImageView;

.field private al:Landroid/graphics/drawable/Drawable;

.field private am:Landroid/graphics/drawable/Drawable;

.field private an:Landroid/widget/TextView;

.field private ao:Landroid/view/View;

.field private ap:Landroid/widget/PopupWindow;

.field private aq:Landroid/widget/ImageView;

.field private ar:Landroid/widget/TextView;

.field private as:Landroid/widget/ImageView;

.field private at:Lcom/estrongs/android/ui/e/hy;

.field private au:Landroid/widget/RelativeLayout;

.field private av:Lcom/estrongs/android/ui/e/ka;

.field private aw:Landroid/support/v7/view/ActionMode$Callback;

.field private final ax:Landroid/content/BroadcastReceiver;

.field private final ay:Landroid/content/BroadcastReceiver;

.field private az:I

.field b:I

.field c:I

.field d:Z

.field e:Lcom/estrongs/android/widget/bd;

.field private f:Lcom/estrongs/android/pop/app/gp;

.field private h:Lcom/estrongs/android/pop/ad;

.field private i:Lcom/estrongs/android/widget/RealViewSwitcher;

.field private j:Landroid/support/v7/app/ActionBar;

.field private k:Landroid/support/v7/widget/Toolbar;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field private n:Landroid/support/v7/widget/RecyclerView;

.field private o:Landroid/support/v7/widget/LinearLayoutManager;

.field private p:Lcom/estrongs/android/ui/e/cb;

.field private q:Lcom/estrongs/android/ui/dialog/ProgressDialog;

.field private r:Z

.field private t:Lcom/estrongs/android/pop/app/gn;

.field private u:Lcom/estrongs/android/pop/app/gr;

.field private v:Lcom/estrongs/android/pop/app/gl;

.field private w:Lcom/estrongs/android/pop/app/gq;

.field private x:Z

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;-><init>()V

    new-instance v0, Lcom/estrongs/android/pop/app/ei;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ei;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f:Lcom/estrongs/android/pop/app/gp;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/pop/app/gr;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/pop/app/gl;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Ljava/util/List;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->C:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Z

    iput v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b:I

    iput v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c:I

    invoke-static {}, Lcom/estrongs/android/pop/app/ag;->g()Lcom/estrongs/android/pop/app/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G:Lcom/estrongs/android/pop/app/ag;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Lcom/estrongs/android/pop/app/x;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J:Landroid/widget/ProgressBar;

    new-instance v0, Lcom/estrongs/android/pop/app/c/k;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/c/k;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K:Lcom/estrongs/android/pop/app/c/k;

    iput v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->L:I

    new-instance v0, Lcom/estrongs/android/pop/app/fa;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/fa;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aw:Landroid/support/v7/view/ActionMode$Callback;

    new-instance v0, Lcom/estrongs/android/pop/app/ft;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ft;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ax:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/estrongs/android/pop/app/ge;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ge;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ay:Landroid/content/BroadcastReceiver;

    iput v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->az:I

    iput v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aA:I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aB:Lcom/estrongs/android/j/c;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e:Lcom/estrongs/android/widget/bd;

    iput v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aH:I

    new-instance v0, Lcom/estrongs/android/pop/app/fw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/fw;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/app/ga;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ga;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aJ:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/estrongs/android/pop/app/gb;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/gb;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aL:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic A(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gp;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f:Lcom/estrongs/android/pop/app/gp;

    return-object v0
.end method

.method static synthetic B(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ah()V

    return-void
.end method

.method static synthetic C(Lcom/estrongs/android/pop/app/PopAudioPlayer;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->L:I

    return v0
.end method

.method static synthetic D(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic E(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ap:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public static E()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic F(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->an:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic G(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aq:Landroid/widget/ImageView;

    return-object v0
.end method

.method private K()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ChromecastNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/pop/app/gl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/pop/app/gl;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gl;->A()Lcom/estrongs/android/pop/app/c/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/pop/app/gl;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gl;->A()Lcom/estrongs/android/pop/app/c/k;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K:Lcom/estrongs/android/pop/app/c/k;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/pop/app/gr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/pop/app/gr;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gr;->a(Lcom/estrongs/android/pop/app/c/k;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/pop/app/gl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/pop/app/gl;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K:Lcom/estrongs/android/pop/app/c/k;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gl;->a(Lcom/estrongs/android/pop/app/c/k;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AudioServiceNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isFromMusicGridViewPlayerView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/pop/app/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/pop/app/gr;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gr;->A()Lcom/estrongs/android/pop/app/c/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/pop/app/gr;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gr;->A()Lcom/estrongs/android/pop/app/c/k;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K:Lcom/estrongs/android/pop/app/c/k;

    goto :goto_0
.end method

.method private L()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(Z)V

    return-void
.end method

.method private M()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->p()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g:Ljava/lang/String;

    const-string v1, "changeToCastMode error, chromecast is not connected"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->q()V

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->L:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/pop/app/gl;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->H:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->H:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020403

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private N()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Lcom/estrongs/android/pop/app/x;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/x;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/x;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Lcom/estrongs/android/pop/app/x;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Lcom/estrongs/android/pop/app/x;

    new-instance v1, Lcom/estrongs/android/pop/app/gj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gj;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/x;->a(Lcom/estrongs/android/pop/app/ai;)V

    goto :goto_0
.end method

.method private O()V
    .locals 4

    new-instance v0, Lcom/estrongs/android/pop/app/ej;

    invoke-direct {v0, p0, p0}, Lcom/estrongs/android/pop/app/ej;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ae:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ae:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ae:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ae:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/cn;->a(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ae:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0e01d4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/RealViewSwitcher;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    const v0, 0x7f0e019f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->R()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S()V

    return-void
.end method

.method private P()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Z()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/em;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/em;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->T()V

    return-void
.end method

.method private Q()V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method private R()V
    .locals 0

    return-void
.end method

.method private S()V
    .locals 0

    return-void
.end method

.method private T()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    return-void
.end method

.method private U()V
    .locals 4

    const/4 v3, 0x1

    const v0, 0x7f0e01d5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Landroid/support/v7/app/ActionBar;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Landroid/support/v7/app/ActionBar;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    new-instance v0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setIsNarrowMode(Z)V

    return-void
.end method

.method private V()Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e01e6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aC:Landroid/widget/ImageView;

    const v0, 0x7f0e01e7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aD:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aC:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aD:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aC:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aL:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aD:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aL:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(Z)V

    return-object v1
.end method

.method private W()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->H:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->H:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private X()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    if-nez v0, :cond_0

    const v0, 0x7f0805b6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080728

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/estrongs/android/ui/dialog/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private Y()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private Z()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030050

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/view/View;

    const v1, 0x7f0e01ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/view/View;

    const v1, 0x7f0e01e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->af:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/view/View;

    const v1, 0x7f0e01e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/view/View;

    const v1, 0x7f0e01f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ak:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/view/View;

    const v1, 0x7f0e01ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ah:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/view/View;

    const v1, 0x7f0e01f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/view/View;

    const v1, 0x7f0e01f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aj:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ak:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Landroid/support/v4/view/cn;->e(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aj:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aL:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ah:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aL:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ak:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aL:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aj:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ah:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ak:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/view/View;

    const v1, 0x7f0e01f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/estrongs/android/ui/e/cb;

    invoke-direct {v1, p0, v4}, Lcom/estrongs/android/ui/e/cb;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Lcom/estrongs/android/ui/e/cb;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Lcom/estrongs/android/ui/e/cb;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/cb;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030052

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e0203

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->au:Landroid/widget/RelativeLayout;

    const v0, 0x7f0e0200

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->an:Landroid/widget/TextView;

    const v0, 0x7f0e01ff

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ao:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ao:Landroid/view/View;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aL:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0201

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aq:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aq:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Landroid/support/v4/view/cn;->e(Landroid/view/View;F)V

    const v0, 0x7f0e0202

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/estrongs/android/ui/view/ac;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/estrongs/android/ui/view/ac;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->o:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->o:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/estrongs/android/ui/recycler/g;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/recycler/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/recycler/g;->a(I)V

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/recycler/g;->b(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance v0, Lcom/estrongs/android/pop/app/fu;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2, v5}, Lcom/estrongs/android/pop/app/fu;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    new-instance v2, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/ac;->a(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/estrongs/android/pop/app/fv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/fv;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e:Lcom/estrongs/android/widget/bd;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e:Lcom/estrongs/android/widget/bd;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->setOnScreenSwitchListener(Lcom/estrongs/android/widget/bd;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->M:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/support/v7/view/ActionMode;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->as:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ar:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/gn;)Lcom/estrongs/android/pop/app/gn;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/pop/app/gn;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/gq;)Lcom/estrongs/android/pop/app/gq;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/gr;)Lcom/estrongs/android/pop/app/gr;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/pop/app/gr;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/ui/e/ka;)Lcom/estrongs/android/ui/e/ka;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->av:Lcom/estrongs/android/ui/e/ka;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Ljava/lang/String;

    return-object p1
.end method

.method private a(IZ)V
    .locals 4

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ap:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aq:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/cn;->e(Landroid/view/View;F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ap:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g(II)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/c/i;Lcom/estrongs/android/pop/app/c/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/c/i;Lcom/estrongs/android/pop/app/c/j;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(Z)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/c/i;Lcom/estrongs/android/pop/app/c/j;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/estrongs/android/pop/app/c/j;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/pop/app/gq;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/app/gq;->a(Lcom/estrongs/android/pop/app/gp;)V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gq;->n()V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gq;->q()V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gq;->z()V

    goto :goto_0
.end method

.method public static a([Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    const-string v3, ".m3u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "http://127.0.0.1:59777/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [Ljava/lang/Exception;

    new-array v1, v1, [[Ljava/lang/String;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/estrongs/android/pop/app/gk;

    invoke-direct {v3, v1, p0, v0}, Lcom/estrongs/android/pop/app/gk;-><init>([[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Exception;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    aget-object v2, v0, v4

    if-eqz v2, :cond_1

    aget-object v0, v0, v4

    throw v0

    :cond_1
    aget-object v0, v1, v4

    goto :goto_0
.end method

.method private aa()V
    .locals 0

    return-void
.end method

.method private ab()V
    .locals 0

    return-void
.end method

.method private ac()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Lcom/estrongs/android/ui/e/cb;

    iget v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->az:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/cb;->c(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Lcom/estrongs/android/ui/e/cb;

    iget v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aA:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/cb;->d(I)V

    return-void
.end method

.method private ad()V
    .locals 1

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(I)V

    return-void
.end method

.method private ae()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private af()V
    .locals 3

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private ag()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aJ:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x:Z

    :cond_0
    return-void
.end method

.method private ah()V
    .locals 11

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->q()V

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->b()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    iget-wide v4, v0, Lcom/estrongs/android/pop/app/c/j;->a:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->d()V

    move-object v1, v0

    :goto_0
    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/c/j;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/c/m;->a(Lcom/estrongs/android/pop/app/c/j;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->b()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gq;->a(Lcom/estrongs/android/pop/app/c/j;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->v()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aA:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->u()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->az:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->i()I

    move-result v0

    invoke-direct {p0, v0, v8}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->l()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v10, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g(II)V

    invoke-direct {p0, v9, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g(II)V

    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ac()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/CharSequence;)V

    :goto_4
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A:Z

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v8}, Lcom/estrongs/android/widget/RealViewSwitcher;->setCurrentScreen(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e:Lcom/estrongs/android/widget/bd;

    invoke-interface {v0, v8}, Lcom/estrongs/android/widget/bd;->c(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->v()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aA:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->u()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->az:I

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->C()V

    iput-boolean v8, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A:Z

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v9, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g(II)V

    goto :goto_3

    :cond_7
    invoke-direct {p0, v9, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g(II)V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g(II)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->l()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    move v0, v3

    :cond_9
    invoke-direct {p0, v10, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g(II)V

    invoke-direct {p0, v9, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g(II)V

    goto :goto_3

    :cond_a
    const v0, 0x7f080480

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/adapter/dy;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/adapter/dy;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0e0128

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Landroid/widget/PopupWindow;

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {p0, v3}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ap:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ap:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020411

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ap:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ap:Landroid/widget/PopupWindow;

    const v2, 0x1030002

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ap:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ap:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ap:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ap:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    new-instance v1, Lcom/estrongs/android/pop/app/gc;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gc;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ap:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/estrongs/android/pop/app/gd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gd;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f(II)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopAudioPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(Z)V

    return-void
.end method

.method public static b([Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:[Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopAudioPlayer;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ac:I

    return v0
.end method

.method private c(II)V
    .locals 0

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(II)V

    return-void
.end method

.method private c(Z)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->L:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/pop/app/gr;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->H:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->H:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020432

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->q()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gq;->d(I)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->a()Z

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/PopAudioPlayer;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ad:I

    return v0
.end method

.method private d(II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aH:I

    if-eq v0, v2, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aH:I

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(II)V

    iput v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aH:I

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l()V

    return-void

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e(Z)V

    invoke-direct {p0, p2, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/pop/app/gn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/pop/app/gn;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gn;->a()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e(Z)V

    invoke-direct {p0, p2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(II)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e(Z)V

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(II)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/pop/app/gn;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gn;->a()V

    iput p2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aH:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->y()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e(II)V

    return-void
.end method

.method private d(Z)V
    .locals 5

    const v4, 0x7f0d0159

    const v3, 0x7f0d005b

    const v2, 0x7f020433

    const v1, 0x7f020432

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aC:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aD:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aC:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aD:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/estrongs/android/util/al;

    invoke-direct {v0, p0}, Lcom/estrongs/android/util/al;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/al;->a()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->v(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ar:Landroid/widget/TextView;

    return-object v0
.end method

.method private e(I)V
    .locals 4

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private e(II)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->at:Lcom/estrongs/android/ui/e/hy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->at:Lcom/estrongs/android/ui/e/hy;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/e/hy;->f(I)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(II)V

    return-void

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private e(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->al:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->am:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->as:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f(I)Ljava/lang/String;
    .locals 5

    div-int/lit16 v0, p1, 0x3e8

    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(II)V
    .locals 4

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method private g(II)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/ac;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Y()V

    return-void
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aI:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->L()V

    return-void
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q()V

    return-void
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/widget/RealViewSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Z

    return v0
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/e/ka;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->av:Lcom/estrongs/android/ui/e/ka;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->M:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic q(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aF:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic r(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic s(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aa()V

    return-void
.end method

.method static synthetic t(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab()V

    return-void
.end method

.method static synthetic u(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->C:Z

    return v0
.end method

.method static synthetic v(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gn;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/pop/app/gn;

    return-object v0
.end method

.method static synthetic w(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->af()V

    return-void
.end method

.method static synthetic x(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ad()V

    return-void
.end method

.method static synthetic y(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K()V

    return-void
.end method

.method static synthetic z(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gr;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/pop/app/gr;

    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/c/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public B()Lcom/estrongs/android/pop/app/c/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->r()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v0

    goto :goto_0
.end method

.method public C()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->e()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/gq;->a(Lcom/estrongs/android/pop/app/c/j;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->e()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/pop/app/c/j;)V

    invoke-direct {p0, v3, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    return-void
.end method

.method public D()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/c/m;->e()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v2

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->f()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/c/m;->e()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/gq;->a(Lcom/estrongs/android/pop/app/c/j;)Z

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/c/m;->e()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/pop/app/c/j;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->f()V

    goto :goto_1
.end method

.method public F()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Lcom/estrongs/android/pop/app/c/i;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Lcom/estrongs/android/pop/app/c/i;)V

    goto :goto_0
.end method

.method protected a()Landroid/support/v7/app/ActionBar;
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J()Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d0148

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(I)V

    return-void
.end method

.method public a(II)V
    .locals 1

    iput p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ac:I

    iput p2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ad:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aF:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aF:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aF:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aF:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aF:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/estrongs/android/pop/app/fs;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/fs;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/pop/app/c/i;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/gq;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->q()V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->l()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setDisplayPaths([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->an:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;)V"
        }
    .end annotation

    const v3, 0x7f02040b

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f020434

    const v2, 0x7f080141

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/pop/app/ep;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ep;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->N:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f0806d9

    invoke-direct {v0, v3, v1}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/pop/app/eq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/eq;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->O:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f080142

    invoke-direct {v0, v3, v1}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/pop/app/er;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/er;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->P:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f080143

    invoke-direct {v0, v3, v1}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/pop/app/et;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/et;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f02043e

    const v2, 0x7f080148

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/pop/app/eu;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/eu;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f020443

    const v2, 0x7f080149

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/pop/app/ew;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ew;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f020424

    const v2, 0x7f0803dd

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/pop/app/ey;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ey;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f02044c

    const v2, 0x7f0800ac

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/fh;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/fh;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->R:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f0203fa

    const v2, 0x7f0802b2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/pop/app/fi;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/fi;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f02043a

    const v2, 0x7f08022e

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/pop/app/fj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/fj;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->T:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f02044b

    const v2, 0x7f080381

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/pop/app/fk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/fk;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->X:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f020415

    const v2, 0x7f080083

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/pop/app/fl;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/fl;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Z:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f020402

    const v2, 0x7f0801b2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/pop/app/fm;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/fm;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Y:Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->N:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->O:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->P:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->R:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->T:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->X:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Z:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Y:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/List;Lcom/estrongs/android/pop/app/c/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/c/i;",
            ">;",
            "Lcom/estrongs/android/pop/app/c/j;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    if-ne v0, p2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/i;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gq;->b(Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/i;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/estrongs/android/pop/app/c/j;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/pop/app/c/j;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->b()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setDisplayPaths([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->an:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setDisplayPaths([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->an:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->a()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->b()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setDisplayPaths([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->an:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setDisplayPaths([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->an:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b(Lcom/estrongs/android/pop/app/c/i;)V
    .locals 7

    const v6, 0x7f080630

    if-eqz p1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p1, Lcom/estrongs/android/pop/app/c/i;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/estrongs/android/pop/app/c/i;->e:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p1, Lcom/estrongs/android/pop/app/c/i;->e:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/estrongs/android/pop/app/c/i;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget-object v3, p1, Lcom/estrongs/android/pop/app/c/i;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/estrongs/android/pop/app/c/i;->g:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f080637

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/estrongs/android/pop/app/c/i;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/estrongs/android/pop/app/c/i;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p1, Lcom/estrongs/android/pop/app/c/i;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/estrongs/android/pop/app/c/i;->f:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080636

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/estrongs/android/pop/app/c/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/estrongs/android/pop/app/c/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aB:Lcom/estrongs/android/j/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aB:Lcom/estrongs/android/j/c;

    const-string v1, "Search_Wan"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aB:Lcom/estrongs/android/j/c;

    const-string v1, "Search_Wan_UV"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_3
    :goto_1
    :try_start_1
    const-string v0, "music"

    iget-object v1, p1, Lcom/estrongs/android/pop/app/c/i;->e:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/pop/utils/de;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/utils/dh;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-nez v0, :cond_6

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v3, p1, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_2
    iget-object v3, p1, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->bS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f080630

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto/16 :goto_0

    :cond_6
    :try_start_3
    iget-object v1, v0, Lcom/estrongs/android/pop/utils/dh;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/utils/de;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->finish()V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/dh;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/c/i;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/estrongs/android/pop/app/c/i;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/c/m;->a(Lcom/estrongs/android/pop/app/c/j;)V

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->b()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/j;->d()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/i;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/c/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gq;->a(Lcom/estrongs/android/pop/app/c/j;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l()V

    return-void
.end method

.method public b(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ac;->a()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gq;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->l()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/gq;->d()Z

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/estrongs/android/ui/view/ac;->a(IZZ)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0, v0}, Lcom/estrongs/android/ui/view/ac;->a(IZZ)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public c(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/c/i;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    if-ne v0, v5, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/i;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/gq;->a(Ljava/util/List;)V

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->q()V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l()V

    return-void

    :cond_3
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->l()I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    goto :goto_1

    :cond_4
    invoke-virtual {v5, p1}, Lcom/estrongs/android/pop/app/c/j;->a(Ljava/util/List;)V

    goto :goto_1
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->L:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aw:Landroid/support/v7/view/ActionMode$Callback;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->au:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->at:Lcom/estrongs/android/ui/e/hy;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/e/hy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/estrongs/android/ui/e/hy;-><init>(Landroid/app/Activity;ZLandroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->at:Lcom/estrongs/android/ui/e/hy;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->at:Lcom/estrongs/android/ui/e/hy;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/e/hy;->f(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->au:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->at:Lcom/estrongs/android/ui/e/hy;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/hy;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->at:Lcom/estrongs/android/ui/e/hy;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/e/hy;->f(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->au:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->au:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->finish()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/pop/app/gr;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/gq;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/pop/app/gl;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/gq;)V

    :cond_0
    return-void
.end method

.method protected g()I
    .locals 1

    const v0, 0x7f020438

    return v0
.end method

.method public h()Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->j()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->e()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f080144

    invoke-static {p0, v0, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x7f0803d7

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0803da

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v5, Lcom/estrongs/android/pop/app/en;

    invoke-direct {v5, p0, v3}, Lcom/estrongs/android/pop/app/en;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/util/List;)V

    invoke-virtual {v0, v4, v1, v5}, Lcom/estrongs/android/ui/dialog/cv;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/cv;->d(Z)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    goto :goto_0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->L:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->M()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->a()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Lcom/estrongs/android/pop/app/x;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->N()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Lcom/estrongs/android/pop/app/x;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/x;->show()V

    goto :goto_0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aE:Lcom/estrongs/android/pop/app/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/c/a;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/c/a;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aE:Lcom/estrongs/android/pop/app/c/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aE:Lcom/estrongs/android/pop/app/c/a;

    new-instance v1, Lcom/estrongs/android/pop/app/fp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/fp;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/c/a;->a(Lcom/estrongs/android/pop/app/ai;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aE:Lcom/estrongs/android/pop/app/c/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aE:Lcom/estrongs/android/pop/app/c/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/a;->b()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aE:Lcom/estrongs/android/pop/app/c/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/a;->c()V

    goto :goto_0
.end method

.method public k()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->r()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gq;->s()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->af:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/i;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->t()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->af:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l()V

    return-void

    :cond_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/estrongs/android/pop/app/fq;

    invoke-direct {v4, p0, v1}, Lcom/estrongs/android/pop/app/fq;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/c/i;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Z)V

    return-void
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getCurrentScreen()I

    move-result v0

    return v0
.end method

.method public o()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gq;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gq;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/gq;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p()V

    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->k()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->q()V

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->j()Lcom/estrongs/android/ui/pcs/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3, p2}, Lcom/estrongs/android/ui/pcs/l;->a(ILandroid/content/Intent;I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->av:Lcom/estrongs/android/ui/e/ka;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->av:Lcom/estrongs/android/ui/e/ka;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ka;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->av:Lcom/estrongs/android/ui/e/ka;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ka;->d()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aK:Landroid/graphics/Rect;

    invoke-static {}, Lcom/estrongs/android/ui/f/k;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v3, 0x0

    const v5, 0x7f0d0159

    const v10, 0x7f080183

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0148

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/utils/an;->a(Landroid/app/Activity;I)V

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v2, 0x7f0202eb

    invoke-virtual {v0, v2, v5}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->al:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v2, 0x7f0202ec

    invoke-virtual {v0, v2, v5}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->am:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h:Lcom/estrongs/android/pop/ad;

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_1

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v0, "hasplaylist"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_2
    array-length v8, v2

    if-ge v0, v8, :cond_3

    aget-object v8, v2, v0

    const-string v9, ".m3u"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :try_start_1
    aget-object v8, v2, v0

    invoke-static {v8}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Z

    goto :goto_1

    :cond_2
    aget-object v8, v2, v0

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0, v10, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->finish()V

    :cond_4
    :goto_4
    return-void

    :cond_5
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_5
    const-string v2, "showlist"

    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A:Z

    if-nez v0, :cond_e

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A:Z

    if-nez v2, :cond_e

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "file://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Ljava/lang/String;

    :cond_6
    :goto_6
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->O()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->P()V

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->h()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->X()V

    new-instance v2, Lcom/estrongs/android/pop/app/gf;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/gf;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/c/m;->a(Lcom/estrongs/android/pop/app/c/n;)V

    new-instance v2, Lcom/estrongs/android/pop/app/gh;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/gh;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/c/m;)V

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gh;->start()V

    :cond_8
    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->d()Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Lcom/estrongs/android/pop/app/gi;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/gi;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/c/m;)V

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gi;->start()V

    :cond_9
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "hasplaylist"

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x()V

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aB:Lcom/estrongs/android/j/c;

    const-string v0, "islocalopen"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aB:Lcom/estrongs/android/j/c;

    const-string v2, "act3"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/j/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aB:Lcom/estrongs/android/j/c;

    const-string v2, "act3"

    const-string v4, "audio_player"

    invoke-virtual {v0, v2, v4}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_a
    :goto_7
    new-instance v0, Lcom/estrongs/android/pop/app/gl;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/gl;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/pop/app/gl;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G:Lcom/estrongs/android/pop/app/ag;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/pop/app/gl;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/ag;->a(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K()V

    const-string v0, "Chromecast"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->p()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->M()V

    const-string v0, "ChromecastNotification"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/pop/app/gl;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i()V

    :goto_8
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ah()V

    :cond_b
    :goto_9
    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aB:Lcom/estrongs/android/j/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aB:Lcom/estrongs/android/j/c;

    const-string v1, "AudioPlayer_UV"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_c
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".m3u"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_4
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Landroid/net/Uri;)[Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    invoke-static {p0, v10, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->finish()V

    goto/16 :goto_4

    :cond_d
    const-string v2, "http://127.0.0.1:59777/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_e
    if-eqz v0, :cond_7

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move v2, v1

    :goto_a
    array-length v4, v0

    if-ge v2, v4, :cond_7

    iget-object v4, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Ljava/util/List;

    aget-object v7, v0, v2

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    :cond_f
    iput-object v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/pop/app/gl;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gl;->b()V

    goto/16 :goto_8

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/pop/app/gl;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ah()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i()V

    goto/16 :goto_9

    :catch_4
    move-exception v8

    goto/16 :goto_3

    :cond_11
    move-object v0, v3

    goto/16 :goto_5

    :cond_12
    move-object v0, v2

    goto/16 :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Landroid/support/v7/widget/Toolbar;)V

    const v0, 0x7f0e01e2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->H:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aa:Landroid/view/Menu;

    const v0, 0x7f0e06be

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f020425

    const v3, 0x7f0d0159

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->C:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag()V

    :goto_0
    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ax:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ay:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/pop/app/gl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G:Lcom/estrongs/android/pop/app/ag;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/pop/app/gl;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ag;->b(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Lcom/estrongs/android/pop/app/x;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Lcom/estrongs/android/pop/app/x;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/x;->a()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->M:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->M:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->M:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onDestroy()V

    return-void

    :cond_4
    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag()V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const v3, 0x7f0e06be

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ac;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Z

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const/16 v1, 0x18

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/ag;->v()V

    goto :goto_0

    :cond_4
    const/16 v1, 0x19

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/ag;->w()V

    goto :goto_0

    :cond_5
    const/16 v1, 0x52

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/support/v7/view/ActionMode;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v1}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Landroid/view/Menu;->performIdentifierAction(II)Z

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aa:Landroid/view/Menu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aa:Landroid/view/Menu;

    invoke-interface {v1, v3, v2}, Landroid/view/Menu;->performIdentifierAction(II)Z

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "hasplaylist"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v0, "islocalopen"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aB:Lcom/estrongs/android/j/c;

    const-string v4, "act3"

    invoke-virtual {v0, v4}, Lcom/estrongs/android/j/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aB:Lcom/estrongs/android/j/c;

    const-string v4, "act3"

    const-string v5, "audio_player"

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_8

    :try_start_2
    invoke-static {}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:[Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget-object v2, v0, v1

    const-string v4, ".m3u"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-eqz v2, :cond_3

    :try_start_3
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_2
    :goto_3
    return-void

    :cond_3
    aget-object v2, v0, v1

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7f080183

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_6
    :goto_4
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Ljava/lang/String;

    :cond_7
    :goto_5
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x()V

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".m3u"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    if-eqz v0, :cond_a

    :try_start_5
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Landroid/net/Uri;)[Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v0

    goto :goto_4

    :catch_2
    move-exception v0

    const v0, 0x7f080183

    const/4 v1, 0x1

    :try_start_6
    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto/16 :goto_3

    :cond_9
    const-string v1, "http://127.0.0.1:59777/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v0

    goto :goto_5

    :catch_3
    move-exception v2

    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    goto/16 :goto_4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->finish()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_1
    const v1, 0x7f0e01e2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->L:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->M()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->a()Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Lcom/estrongs/android/pop/app/x;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->N()V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Lcom/estrongs/android/pop/app/x;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/x;->show()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gq;->a(Z)V

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f0e06be

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m()I

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->N:Lcom/estrongs/android/view/a/a;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/c/j;->f()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->O:Lcom/estrongs/android/view/a/a;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, v2, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_f

    const-string v5, "http://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "http://127.0.0.1:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->P:Lcom/estrongs/android/view/a/a;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Lcom/estrongs/android/view/a/a;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->R:Lcom/estrongs/android/view/a/a;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/estrongs/android/pop/app/ag;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Y:Lcom/estrongs/android/view/a/a;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {v2}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p0}, Lcom/estrongs/android/ui/pcs/am;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S:Lcom/estrongs/android/view/a/a;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->T:Lcom/estrongs/android/view/a/a;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Z:Lcom/estrongs/android/view/a/a;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance v0, Lcom/estrongs/android/pop/app/fn;

    invoke-direct {v0, p0, v4}, Lcom/estrongs/android/pop/app/fn;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/util/List;)V

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move v0, v1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/c/m;->e()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v2

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->X:Lcom/estrongs/android/view/a/a;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    iget-wide v6, v0, Lcom/estrongs/android/pop/app/c/j;->a:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/view/a/a;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Lcom/estrongs/android/view/a/a;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-static {}, Lcom/estrongs/android/pop/app/ag;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Y:Lcom/estrongs/android/view/a/a;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Z:Lcom/estrongs/android/view/a/a;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V:Lcom/estrongs/android/view/a/a;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_f
    move v0, v1

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onResume()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/gq;->a(Z)V

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d:Z

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->l()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g(II)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g(II)V

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d:Z

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->q()V

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/m;->b()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/c/j;->d()V

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/app/c/j;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/gq;->a(Lcom/estrongs/android/pop/app/c/j;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->i()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ac()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_5
    const v0, 0x7f080480

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ad()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f:Lcom/estrongs/android/pop/app/gp;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gq;->a(Lcom/estrongs/android/pop/app/gp;)V

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onStart()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Landroid/support/v7/app/ActionBar;

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g()I

    move-result v2

    const v3, 0x7f0d0159

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->o()V

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag()V

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ae()V

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onStop()V

    return-void
.end method

.method public p()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/gq;->a(J)V

    return-void
.end method

.method public q()V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->az:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->az:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    iget v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->az:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gq;->b(I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ac()V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->p()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->x()Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->w()V

    goto :goto_0
.end method

.method public s()V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aA:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aA:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    iget v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aA:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gq;->c(I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ac()V

    return-void
.end method

.method public t()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->j()I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->f()Z

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gq;->q()V

    :cond_0
    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->q()V

    :cond_0
    return-void
.end method

.method public v()Lcom/estrongs/android/pop/app/c/j;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->a()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->a()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/c/m;->b(Lcom/estrongs/android/pop/app/c/j;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gq;->h()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Lcom/estrongs/android/pop/app/gq;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gq;->q()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->C()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l()V

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->supportInvalidateOptionsMenu()V

    :cond_2
    return-void
.end method

.method x()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aJ:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x:Z

    :cond_0
    return-void
.end method

.method public y()Landroid/graphics/Rect;
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aK:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aK:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getLocationInWindow([I)V

    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v5}, Lcom/estrongs/android/widget/RealViewSwitcher;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v0, v0, v6

    iget-object v5, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v5}, Lcom/estrongs/android/widget/RealViewSwitcher;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aK:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aK:Landroid/graphics/Rect;

    return-object v0
.end method

.method public z()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aG:Lcom/estrongs/android/ui/view/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ac;->a(Z)V

    return-void
.end method
