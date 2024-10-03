.class public interface abstract Lm0/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Component$Factory;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# direct methods
.method public static synthetic b(Lm0/g$a;Landroid/content/Context;Ln0/b;Ls0/a;Lq0/b;Lt0/c;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/display/DisplayManager;Landroid/content/ContentResolver;ILjava/lang/Object;)Lm0/g;
    .locals 15

    if-nez p14, :cond_1

    move/from16 v0, p13

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "context.contentResolver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v0

    goto :goto_0

    :cond_0
    move-object/from16 v14, p12

    :goto_0
    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-interface/range {v2 .. v14}, Lm0/g$a;->a(Landroid/content/Context;Ln0/b;Ls0/a;Lq0/b;Lt0/c;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/display/DisplayManager;Landroid/content/ContentResolver;)Lm0/g;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: create"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Ln0/b;Ls0/a;Lq0/b;Lt0/c;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/display/DisplayManager;Landroid/content/ContentResolver;)Lm0/g;
    .param p1    # Landroid/content/Context;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p2    # Ln0/b;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p3    # Ls0/a;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p4    # Lq0/b;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p5    # Lt0/c;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p6    # Landroid/hardware/SensorManager;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p7    # Landroid/os/Handler;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p8    # Ljava/util/concurrent/Executor;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p9    # Ljava/util/concurrent/Executor;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p11    # Landroid/hardware/display/DisplayManager;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
    .param p12    # Landroid/content/ContentResolver;
        .annotation runtime Ldagger/BindsInstance;
        .end annotation
    .end param
.end method
