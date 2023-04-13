.class Lorg/nexage/sourcekit/vast/VASTPlayer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nexage/sourcekit/vast/VASTPlayer;->loadVideoWithUrl(Ljava/lang/String;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

.field final synthetic val$listener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

.field final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/nexage/sourcekit/vast/VASTPlayer;Ljava/lang/String;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V
    .locals 0

    iput-object p1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$1;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    iput-object p2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$1;->val$urlString:Ljava/lang/String;

    iput-object p3, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$1;->val$listener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$1;->val$urlString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$1;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$1;->val$listener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-static {v2, v3, v4}, Lorg/nexage/sourcekit/vast/VASTPlayer;->access$000(Lorg/nexage/sourcekit/vast/VASTPlayer;ILorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    const-string v2, "VASTPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/nexage/sourcekit/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    iget-object v1, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$1;->this$0:Lorg/nexage/sourcekit/vast/VASTPlayer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/nexage/sourcekit/vast/VASTPlayer$1;->val$listener:Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;

    invoke-virtual {v1, v0, v2}, Lorg/nexage/sourcekit/vast/VASTPlayer;->loadVideoWithData(Ljava/lang/String;Lorg/nexage/sourcekit/vast/VASTPlayer$VASTPlayerListener;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    throw v0

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
