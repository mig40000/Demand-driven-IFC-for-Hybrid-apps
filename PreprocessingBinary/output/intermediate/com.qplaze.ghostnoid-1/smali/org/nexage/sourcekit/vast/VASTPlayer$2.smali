.class Lorg/nexage/sourcekit/vast/VASTPlayer$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/VASTPlayer;->loadVideoWithData(Ljava/lang/String;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

.field final synthetic val$vastListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

.field final synthetic val$xmlData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/VASTPlayer;Ljava/lang/String;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    iput-object p2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->val$xmlData:Ljava/lang/String;

    iput-object p3, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->val$vastListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v4, 0x8

    new-instance v0, Lorg/nexage/sourcekit/util/DefaultMediaPicker;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$100(Lorg/nexage/sourcekit/vast/VASTPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/nexage/sourcekit/util/DefaultMediaPicker;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/nexage/sourcekit/vast/processor/VASTProcessor;

    invoke-direct {v1, v0}, Lorg/nexage/sourcekit/vast/processor/VASTProcessor;-><init>(Lorg/nexage/sourcekit/vast/processor/VASTMediaPicker;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->val$xmlData:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/nexage/sourcekit/vast/processor/VASTProcessor;->process(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-virtual {v1}, Lorg/nexage/sourcekit/vast/processor/VASTProcessor;->getModel()Lorg/nexage/sourcekit/vast/model/VASTModel;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$202(Lorg/nexage/sourcekit/vast/VASTPlayer;Lorg/nexage/sourcekit/vast/model/VASTModel;)Lorg/nexage/sourcekit/vast/model/VASTModel;

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$300(Lorg/nexage/sourcekit/vast/VASTPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$200(Lorg/nexage/sourcekit/vast/VASTPlayer;)Lorg/nexage/sourcekit/vast/model/VASTModel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/nexage/sourcekit/vast/model/VASTModel;->getPickedMediaFileURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$400(Lorg/nexage/sourcekit/vast/VASTPlayer;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$500(Lorg/nexage/sourcekit/vast/VASTPlayer;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$200(Lorg/nexage/sourcekit/vast/VASTPlayer;)Lorg/nexage/sourcekit/vast/model/VASTModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$200(Lorg/nexage/sourcekit/vast/VASTPlayer;)Lorg/nexage/sourcekit/vast/model/VASTModel;

    move-result-object v0

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/model/VASTModel;->sendError(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    const/16 v1, 0x8

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->val$vastListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-static {v0, v1, v2}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$000(Lorg/nexage/sourcekit/vast/VASTPlayer;ILorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "VASTPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/nexage/sourcekit/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->val$vastListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-static {v0, v4, v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$000(Lorg/nexage/sourcekit/vast/VASTPlayer;ILorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    goto :goto_1

    :cond_2
    :try_start_3
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$500(Lorg/nexage/sourcekit/vast/VASTPlayer;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$500(Lorg/nexage/sourcekit/vast/VASTPlayer;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$500(Lorg/nexage/sourcekit/vast/VASTPlayer;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    :try_start_4
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$100(Lorg/nexage/sourcekit/vast/VASTPlayer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v2}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$500(Lorg/nexage/sourcekit/vast/VASTPlayer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v2}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$600(Lorg/nexage/sourcekit/vast/VASTPlayer;)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v2}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$600(Lorg/nexage/sourcekit/vast/VASTPlayer;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v2}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$600(Lorg/nexage/sourcekit/vast/VASTPlayer;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$700(Lorg/nexage/sourcekit/vast/VASTPlayer;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->val$vastListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$800(Lorg/nexage/sourcekit/vast/VASTPlayer;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    :try_start_5
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$900(Lorg/nexage/sourcekit/vast/VASTPlayer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :cond_4
    :try_start_6
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$200(Lorg/nexage/sourcekit/vast/VASTPlayer;)Lorg/nexage/sourcekit/vast/model/VASTModel;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$200(Lorg/nexage/sourcekit/vast/VASTPlayer;)Lorg/nexage/sourcekit/vast/model/VASTModel;

    move-result-object v0

    const/16 v1, 0x193

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/model/VASTModel;->sendError(I)V

    :cond_5
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    const/16 v1, 0x8

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->val$vastListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-static {v0, v1, v2}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$000(Lorg/nexage/sourcekit/vast/VASTPlayer;ILorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_7
    const-string v1, "VASTPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/nexage/sourcekit/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    const/16 v1, 0x8

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->val$vastListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-static {v0, v1, v2}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$000(Lorg/nexage/sourcekit/vast/VASTPlayer;ILorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->val$vastListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$800(Lorg/nexage/sourcekit/vast/VASTPlayer;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    goto :goto_2

    :cond_7
    const-string v0, "VASTPlayer"

    const-string v1, "empty thumbnail"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$200(Lorg/nexage/sourcekit/vast/VASTPlayer;)Lorg/nexage/sourcekit/vast/model/VASTModel;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$200(Lorg/nexage/sourcekit/vast/VASTPlayer;)Lorg/nexage/sourcekit/vast/model/VASTModel;

    move-result-object v0

    const/16 v1, 0x193

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/model/VASTModel;->sendError(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_8
    :goto_3
    :try_start_9
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    const/16 v1, 0x8

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->val$vastListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-static {v0, v1, v2}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$000(Lorg/nexage/sourcekit/vast/VASTPlayer;ILorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, "VASTPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/nexage/sourcekit/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v0, "VASTPlayer"

    const-string v1, "video file not supported"

    invoke-static {v0, v1}, Lorg/nexage/sourcekit/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :try_start_a
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$200(Lorg/nexage/sourcekit/vast/VASTPlayer;)Lorg/nexage/sourcekit/vast/model/VASTModel;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-static {v0}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$200(Lorg/nexage/sourcekit/vast/VASTPlayer;)Lorg/nexage/sourcekit/vast/model/VASTModel;

    move-result-object v0

    const/16 v1, 0x193

    invoke-virtual {v0, v1}, Lorg/nexage/sourcekit/vast/model/VASTModel;->sendError(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :cond_a
    :goto_4
    :try_start_b
    iget-object v0, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    const/16 v1, 0x8

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->val$vastListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-static {v0, v1, v2}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$000(Lorg/nexage/sourcekit/vast/VASTPlayer;ILorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    goto/16 :goto_2

    :catch_4
    move-exception v0

    const-string v1, "VASTPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/nexage/sourcekit/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$2;->val$vastListener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-static {v1, v0, v2}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$000(Lorg/nexage/sourcekit/vast/VASTPlayer;ILorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    goto/16 :goto_1
.end method
