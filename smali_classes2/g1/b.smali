.class public Lg1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg1/b$a;
    }
.end annotation


# direct methods
.method private static a(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1, p0}, Lg1/b;->n(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v0

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_transition-leash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {v0, p1, v1, p0, p3}, Lg1/b;->o(Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p0, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p3, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lg1/b;->d(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p3, p0, p2, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method private static b(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;
    .locals 19

    move-object/from16 v3, p1

    new-instance v18, Landroid/view/RemoteAnimationTarget;

    move-object/from16 v0, v18

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Lg1/b;->i(I)I

    move-result v2

    new-instance v1, Landroid/graphics/Point;

    move-object v8, v1

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v10

    new-instance v1, Landroid/app/WindowConfiguration;

    move-object v11, v1

    invoke-direct {v1}, Landroid/app/WindowConfiguration;-><init>()V

    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x7f2

    invoke-direct/range {v0 .. v17}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    return-object v18
.end method

.method public static c(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static d(Landroid/window/TransitionInfo$Change;)Z
    .locals 1

    invoke-static {p0}, Lg1/b;->e(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x400000

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Landroid/window/TransitionInfo$Change;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static g(Landroid/window/TransitionInfo$Change;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(Landroid/window/TransitionInfo$Change;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static i(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lg1/b;->k(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;Z)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;Z)Landroid/view/RemoteAnimationTarget;
    .locals 23

    invoke-static/range {p0 .. p0}, Lg1/b;->d(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    invoke-static {v0, v4}, Lg1/b;->b(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    const/16 v19, 0x1

    if-eqz v13, :cond_1

    iget v1, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-boolean v2, v13, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, v13, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    move/from16 v16, v2

    move-object v12, v3

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    new-instance v2, Landroid/app/WindowConfiguration;

    invoke-direct {v2}, Landroid/app/WindowConfiguration;-><init>()V

    move-object v12, v2

    move/from16 v16, v19

    :goto_0
    move v2, v1

    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v10, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v1, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    new-instance v8, Landroid/view/RemoteAnimationTarget;

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Lg1/b;->i(I)I

    move-result v3

    const/4 v5, 0x0

    if-nez p3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v20, v5

    goto :goto_2

    :cond_3
    :goto_1
    move/from16 v20, v19

    :goto_2
    const/4 v6, 0x0

    new-instance v1, Landroid/graphics/Rect;

    move-object v7, v1

    invoke-direct {v1, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x0

    new-instance v1, Landroid/graphics/Rect;

    move-object v11, v1

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-direct {v1, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v14, 0x0

    new-instance v1, Landroid/graphics/Rect;

    move-object v15, v1

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getAllowEnterPip()Z

    move-result v17

    const/16 v18, -0x1

    move-object v1, v8

    move-object/from16 v4, p2

    const/16 v21, 0x0

    move/from16 v5, v20

    move-object/from16 v22, v8

    move/from16 v8, p1

    move-object/from16 v20, v13

    move/from16 v13, v16

    move-object/from16 v16, v20

    invoke-direct/range {v1 .. v18}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_4

    move/from16 v1, v19

    goto :goto_3

    :cond_4
    move/from16 v1, v21

    :goto_3
    move-object/from16 v2, v22

    invoke-virtual {v2, v1}, Landroid/view/RemoteAnimationTarget;->setWillShowImeOnTarget(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/view/RemoteAnimationTarget;->setRotationChange(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getBackgroundColor()I

    move-result v0

    iput v0, v2, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    return-object v2
.end method

.method public static l(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo$Change;",
            "I",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lg1/b;->m(Landroid/window/TransitionInfo$Change;IZLandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/window/TransitionInfo$Change;IZLandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo$Change;",
            "IZ",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    invoke-static {p3, p0, p1, p4}, Lg1/b;->a(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object p3

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p4

    invoke-virtual {p5, p4, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p0, p1, p3, p2}, Lg1/b;->k(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;Z)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public static n(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I
    .locals 1

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/window/TransitionInfo;->findRootIndex(I)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getStartDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/window/TransitionInfo;->findRootIndex(I)I

    move-result p0

    if-ltz p0, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static o(Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lg1/b;->f(I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {p1, p3}, Lg1/b;->n(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v4

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {p4, p0, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    :goto_0
    iget v6, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, v3}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v7

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v3}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v3

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    invoke-virtual {p4, p0, v6, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lg1/b;->d(Landroid/window/TransitionInfo$Change;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-static {v2}, Lg1/b;->f(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p4, p0, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    invoke-virtual {p4, p0, v5, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const p1, 0x7fffffff

    invoke-virtual {p4, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    if-eq v2, v4, :cond_4

    const/4 p1, 0x3

    if-ne v2, p1, :cond_3

    goto :goto_1

    :cond_3
    neg-int p1, v1

    goto :goto_2

    :cond_4
    :goto_1
    neg-int p1, v1

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr p1, p3

    :goto_2
    sub-int/2addr p1, p2

    invoke-virtual {p4, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_4

    :cond_5
    invoke-static {v2}, Lg1/b;->f(I)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_8

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr v1, p3

    sub-int/2addr v1, p2

    invoke-virtual {p4, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_9

    invoke-virtual {p4, p0, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_4

    :cond_6
    invoke-static {v2}, Lg1/b;->c(I)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v1, p1

    :cond_8
    :goto_3
    sub-int/2addr v1, p2

    invoke-virtual {p4, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_9
    :goto_4
    return-void
.end method
