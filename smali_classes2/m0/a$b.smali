.class final Lm0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lm0/a$a;)V
    .locals 0

    invoke-direct {p0}, Lm0/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ln0/b;Ljava/util/concurrent/Executor;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/hardware/display/DisplayManager;Ljava/lang/String;)Lm0/c;
    .locals 11

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lm0/a$c;

    new-instance v1, Lm0/d;

    invoke-direct {v1}, Lm0/d;-><init>()V

    const/4 v9, 0x0

    move-object v0, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lm0/a$c;-><init>(Lm0/d;Landroid/content/Context;Ln0/b;Ljava/util/concurrent/Executor;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/hardware/display/DisplayManager;Ljava/lang/String;Lm0/a$a;)V

    return-object v10
.end method
