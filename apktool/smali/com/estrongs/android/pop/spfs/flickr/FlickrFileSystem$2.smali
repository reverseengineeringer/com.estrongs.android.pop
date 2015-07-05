.class Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;

.field final synthetic val$in:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

.field final synthetic val$options:Lcom/estrongs/android/util/TypedMap;

.field final synthetic val$out:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

.field final synthetic val$parameters:Ljava/util/List;

.field final synthetic val$passwd:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;Ljava/util/List;Ljava/lang/String;Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;Lcom/estrongs/android/util/TypedMap;Ljava/lang/String;Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->this$0:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;

    iput-object p2, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$parameters:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$username:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$out:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    iput-object p5, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$options:Lcom/estrongs/android/util/TypedMap;

    iput-object p6, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$passwd:Ljava/lang/String;

    iput-object p7, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$in:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->this$0:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;

    const-string v1, "be578355f122df0a"

    iget-object v3, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$parameters:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$username:Ljava/lang/String;

    # invokes: Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->upload(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;
    invoke-static {v0, v1, v3, v4}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access$000(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gmail/yuyang226/flickr/c;

    move-result-object v0

    check-cast v0, Lcom/gmail/yuyang226/flickr/c/b;

    invoke-virtual {v0}, Lcom/gmail/yuyang226/flickr/c/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$out:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->setResult(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$out:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->setResult(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$options:Lcom/estrongs/android/util/TypedMap;

    const-string v3, "sets"

    invoke-virtual {v1, v3}, Lcom/estrongs/android/util/TypedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$options:Lcom/estrongs/android/util/TypedMap;

    const-string v3, "sets"

    invoke-virtual {v1, v3}, Lcom/estrongs/android/util/TypedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v2, v2, Lcom/estrongs/android/pop/spfs/Album;->id:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->this$0:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;

    iget-object v5, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$username:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v2, v2, Lcom/estrongs/android/pop/spfs/Album;->id:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/gmail/yuyang226/flickr/c/b;->e()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->addPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v2, v6}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->access$100(Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v2, v2, Lcom/estrongs/android/pop/spfs/Album;->path:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v4

    new-instance v5, Lcom/estrongs/fs/o;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v2, v2, Lcom/estrongs/android/pop/spfs/Album;->path:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/gmail/yuyang226/flickr/c/b;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/estrongs/fs/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/h;)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->this$0:Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;

    iget-object v5, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$username:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v6, v2, Lcom/estrongs/android/pop/spfs/Album;->name:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v2, v2, Lcom/estrongs/android/pop/spfs/Album;->description:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/gmail/yuyang226/flickr/c/b;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v2, v7}, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem;->createAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/Album;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v5, v4, Lcom/estrongs/android/pop/spfs/Album;->id:Ljava/lang/String;

    iput-object v5, v2, Lcom/estrongs/android/pop/spfs/Album;->id:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v5, v4, Lcom/estrongs/android/pop/spfs/Album;->path:Ljava/lang/String;

    iput-object v5, v2, Lcom/estrongs/android/pop/spfs/Album;->path:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v5, v4, Lcom/estrongs/android/pop/spfs/Album;->name:Ljava/lang/String;

    iput-object v5, v2, Lcom/estrongs/android/pop/spfs/Album;->name:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v4, v4, Lcom/estrongs/android/pop/spfs/Album;->description:Ljava/lang/String;

    iput-object v4, v2, Lcom/estrongs/android/pop/spfs/Album;->description:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v4

    new-instance v5, Lcom/estrongs/fs/o;

    const-string v6, "Flickr"

    iget-object v7, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$username:Ljava/lang/String;

    iget-object v8, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$passwd:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/album/"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v2, v2, Lcom/estrongs/android/pop/spfs/Album;->id:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7, v8, v2}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/estrongs/fs/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$out:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->setResult(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$out:Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->setErrorMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/flickr/FlickrFileSystem$2;->val$in:Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/netfs/utils/FastPipedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
