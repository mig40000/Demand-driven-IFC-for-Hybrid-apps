.class public final Lcom/my/target/core/factories/b;
.super Ljava/lang/Object;
.source "CommandsFactory.java"


# direct methods
.method public static a(JILjava/lang/String;Landroid/content/Context;)Lcom/my/target/core/async/commands/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lcom/my/target/core/async/commands/b",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v1, Lcom/my/target/core/async/commands/i;

    move-wide v2, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/my/target/core/async/commands/i;-><init>(JILjava/lang/String;Landroid/content/Context;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/async/commands/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lcom/my/target/core/async/commands/b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/my/target/core/async/commands/h;

    invoke-direct {v0, p0, p1}, Lcom/my/target/core/async/commands/h;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/async/commands/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lcom/my/target/core/async/commands/b",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/my/target/core/factories/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/async/commands/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/async/commands/b;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lcom/my/target/core/async/commands/b",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 75
    if-nez p0, :cond_3

    .line 77
    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 80
    :goto_0
    invoke-static {v12, v13}, Lcom/my/target/core/utils/h;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {}, Lcom/my/target/core/net/a;->a()Lcom/my/target/core/utils/g;

    move-result-object v10

    move-object v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 80
    invoke-static/range {v2 .. v10}, Lcom/my/target/core/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/my/target/core/utils/g;)Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-static {}, Lcom/my/target/core/net/a;->a()Lcom/my/target/core/utils/g;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/my/target/core/utils/g;->d()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v3, v12, v13, v2}, Lcom/my/target/core/utils/h;->b(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {}, Lcom/my/target/core/net/a;->a()Lcom/my/target/core/utils/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/my/target/core/utils/g;->c()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-static {v2, v12, v13, v4}, Lcom/my/target/core/utils/h;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-static {}, Lcom/my/target/core/net/a;->a()Lcom/my/target/core/utils/g;

    move-result-object v2

    .line 1143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1144
    invoke-virtual {v2}, Lcom/my/target/core/utils/g;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    invoke-virtual {v2}, Lcom/my/target/core/utils/g;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-virtual {v2}, Lcom/my/target/core/utils/g;->g()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/my/target/core/utils/g;->g()I

    move-result v6

    const/16 v7, 0x50

    if-eq v6, v7, :cond_0

    invoke-virtual {v2}, Lcom/my/target/core/utils/g;->g()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 1149
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/my/target/core/utils/g;->g()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1151
    :cond_0
    invoke-virtual {v2}, Lcom/my/target/core/utils/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    const-string v2, "/admanmobile/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    sget-object v5, Lcom/my/target/core/net/a;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v2, Lcom/my/target/core/net/a;->b:Ljava/lang/String;

    .line 90
    :cond_1
    new-instance v5, Lcom/my/target/core/async/commands/g;

    move-object/from16 v0, p7

    invoke-direct {v5, v2, v4, v3, v0}, Lcom/my/target/core/async/commands/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-object v5

    .line 78
    :cond_2
    const-string v2, ""

    goto/16 :goto_0

    :cond_3
    move-object v2, p0

    goto/16 :goto_0
.end method
