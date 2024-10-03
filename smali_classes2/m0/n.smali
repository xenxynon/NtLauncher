.class public final Lm0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;Ln0/b;Ljava/util/concurrent/Executor;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/display/DisplayManager;)Lm0/c;
    .locals 9

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singleThreadBgExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracingTagPrefix"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lm0/a;->a()Lm0/c$a;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p6

    move-object v8, p5

    invoke-interface/range {v1 .. v8}, Lm0/c$a;->a(Landroid/content/Context;Ln0/b;Ljava/util/concurrent/Executor;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/hardware/display/DisplayManager;Ljava/lang/String;)Lm0/c;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/content/Context;Ln0/b;Ls0/a;Lq0/b;Lt0/c;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/display/DisplayManager;)Lm0/g;
    .locals 16

    const-string v0, "context"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenStatusProvider"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "foldProvider"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTypeProvider"

    move-object/from16 v6, p4

    invoke-static {v6, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sensorManager"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainHandler"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainExecutor"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singleThreadBgExecutor"

    move-object/from16 v10, p8

    invoke-static {v10, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracingTagPrefix"

    move-object/from16 v11, p9

    invoke-static {v11, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayManager"

    move-object/from16 v12, p10

    invoke-static {v12, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lm0/b;->a()Lm0/g$a;

    move-result-object v1

    const-string v0, "factory()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/16 v14, 0x800

    const/4 v15, 0x0

    invoke-static/range {v1 .. v15}, Lm0/g$a;->b(Lm0/g$a;Landroid/content/Context;Ln0/b;Ls0/a;Lq0/b;Lt0/c;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/display/DisplayManager;Landroid/content/ContentResolver;ILjava/lang/Object;)Lm0/g;

    move-result-object v0

    return-object v0
.end method
