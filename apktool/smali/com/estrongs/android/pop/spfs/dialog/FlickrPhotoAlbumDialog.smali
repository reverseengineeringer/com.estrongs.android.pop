.class public Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;
.super Lcom/estrongs/android/ui/dialog/ci;


# instance fields
.field private albumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;"
        }
    .end annotation
.end field

.field private allAlbumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;"
        }
    .end annotation
.end field

.field private checkedInfo:[Z

.field factory:Landroid/view/LayoutInflater;

.field private isRadio:Z

.field private mAocb:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumOptionCallback;

.field private final new_album_radio:Landroid/widget/RadioButton;

.field selectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumOptionCallback;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumOptionCallback;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->mAocb:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumOptionCallback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->selectedList:Ljava/util/List;

    iput-object v8, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->checkedInfo:[Z

    iput-boolean v7, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->isRadio:Z

    iput-object p2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->mAocb:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumOptionCallback;

    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->setTitle(I)V

    iput-object p4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->albumList:Ljava/util/List;

    iput-object p5, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->allAlbumList:Ljava/util/List;

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->factory:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->factory:Landroid/view/LayoutInflater;

    const v1, 0x7f0300c4

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0e03d8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    const v0, 0x7f0e03d6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const v0, 0x7f0e03d7

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;

    invoke-direct {v5, p0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;-><init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)V

    invoke-static {p3}, Lcom/estrongs/android/util/ap;->aB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->isRadio:Z

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;-><init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;Landroid/widget/ProgressBar;Landroid/view/View;Landroid/widget/ListView;Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;Ljava/lang/String;)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const v0, 0x7f0e03db

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v0, 0x7f0e03dc

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->new_album_radio:Landroid/widget/RadioButton;

    const v0, 0x7f0e03da

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->isRadio:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->new_album_radio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->new_album_radio:Landroid/widget/RadioButton;

    new-instance v1, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$2;

    invoke-direct {v1, p0, v5}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$2;-><init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f080226

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;-><init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;Landroid/widget/ProgressBar;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/content/Context;)V

    invoke-virtual {p0, v6, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f080221

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->allAlbumList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->allAlbumList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->albumList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->albumList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)[Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->checkedInfo:[Z

    return-object v0
.end method

.method static synthetic access$302(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;[Z)[Z
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->checkedInfo:[Z

    return-object p1
.end method

.method static synthetic access$400(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;Ljava/util/List;Lcom/estrongs/android/pop/spfs/Album;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->albumContains(Ljava/util/List;Lcom/estrongs/android/pop/spfs/Album;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->isRadio:Z

    return v0
.end method

.method static synthetic access$600(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->new_album_radio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumOptionCallback;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->mAocb:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumOptionCallback;

    return-object v0
.end method

.method private albumContains(Ljava/util/List;Lcom/estrongs/android/pop/spfs/Album;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/Album;->id:Ljava/lang/String;

    iget-object v3, p2, Lcom/estrongs/android/pop/spfs/Album;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
