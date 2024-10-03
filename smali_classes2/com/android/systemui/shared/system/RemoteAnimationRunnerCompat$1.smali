.class Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;
.super Landroid/window/IRemoteTransition$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->wrap(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mFinishRunnables:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$runner:Landroid/view/IRemoteAnimationRunner;


# direct methods
.method constructor <init>(Landroid/view/IRemoteAnimationRunner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    monitor-enter p1

    :try_start_0
    iget-object p5, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    invoke-virtual {p5, p4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->releaseAllSurfaces()V

    if-nez p4, :cond_0

    return-void

    :cond_0
    const-string p1, "RemoteAnimRunnerCompat"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "mergeAnimation: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    instance-of p3, p1, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    if-eqz p3, :cond_4

    check-cast p1, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->isSmoothRecents()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    :goto_0
    if-ltz p1, :cond_4

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p5

    if-ne p5, p3, :cond_3

    :cond_1
    new-instance p1, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$4;

    invoke-direct {p1, p0, p4}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$4;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;)V

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p2

    and-int/lit16 p2, p2, 0x80

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    check-cast p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    if-nez p2, :cond_2

    invoke-virtual {p4}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;->getTransitionInfo()Landroid/window/TransitionInfo;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->onBackAnimationStartIntercept(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V

    const-string p0, "RemoteAnimRunnerCompat"

    const-string p1, "onBackAnimationStartIntercept: return"

    goto :goto_1

    :cond_2
    invoke-virtual {p4}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;->getTransitionInfo()Landroid/window/TransitionInfo;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->onRecentAnimationStartIntercept(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V

    const-string p0, "RemoteAnimRunnerCompat"

    const-string p1, "onRecentAnimationStartIntercept: return"

    :goto_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    invoke-interface {p0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v9, v10, v7}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrapApps(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v9, v12, v10, v7}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrapNonApps(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v13

    const/4 v1, 0x0

    invoke-static {v9, v1, v10, v7}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrapNonApps(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v1

    move/from16 v16, v5

    move/from16 v19, v16

    move/from16 v17, v3

    move/from16 v18, v17

    move-object v6, v4

    move-object v15, v6

    :goto_0
    const/4 v3, 0x2

    if-ltz v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v4

    if-ne v4, v3, :cond_3

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    if-eq v3, v12, :cond_2

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v19, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v19, v12

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v5, v3, v2

    move-object v15, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    move-object v6, v1

    :cond_4
    :goto_3
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v3

    if-ltz v3, :cond_5

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v3

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v4

    if-eq v3, v4, :cond_5

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v3

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v4

    sub-int v16, v3, v4

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    move/from16 v18, v1

    move/from16 v17, v3

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, -0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x3

    new-instance v2, Lg1/a;

    invoke-direct {v2}, Lg1/a;-><init>()V

    new-instance v1, Lg1/a;

    invoke-direct {v1}, Lg1/a;-><init>()V

    if-eqz v15, :cond_8

    if-eqz v16, :cond_8

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v20

    if-eqz v20, :cond_8

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    move-object/from16 v21, v1

    move-object v1, v2

    move-object/from16 v22, v2

    move-object/from16 v2, p3

    move/from16 v20, v4

    move/from16 v4, v16

    move v12, v5

    move/from16 v5, v17

    move-object/from16 v23, v14

    move-object v14, v6

    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lg1/a;->d(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    goto :goto_5

    :cond_7
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move/from16 v20, v4

    move v12, v5

    move-object/from16 v23, v14

    move-object v14, v6

    const-string v1, "RemoteAnimRunnerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but it\'s not in info."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-virtual/range {v22 .. v22}, Lg1/a;->c()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual/range {v22 .. v22}, Lg1/a;->c()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v10, v1, v12}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_6

    :cond_8
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move/from16 v20, v4

    move-object/from16 v23, v14

    move-object v14, v6

    :cond_9
    :goto_6
    if-eqz v19, :cond_10

    invoke-virtual/range {v22 .. v22}, Lg1/a;->c()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual/range {v22 .. v22}, Lg1/a;->c()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {v10, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_7
    if-ltz v1, :cond_f

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    if-nez v3, :cond_b

    :goto_8
    move-object/from16 v12, v22

    const/4 v2, 0x2

    goto :goto_a

    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    invoke-static {v2, v9}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_8

    :cond_c
    const/4 v2, 0x2

    if-eq v4, v2, :cond_e

    const/4 v5, 0x4

    if-ne v4, v5, :cond_d

    goto :goto_9

    :cond_d
    move-object/from16 v12, v22

    goto :goto_a

    :cond_e
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v4, v1

    invoke-virtual {v10, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v12, v22

    invoke-virtual {v12, v10, v3}, Lg1/a;->a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :goto_a
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v22, v12

    goto :goto_7

    :cond_f
    move-object/from16 v12, v22

    array-length v1, v13

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_b
    if-ltz v1, :cond_13

    aget-object v2, v13, v1

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    aget-object v2, v13, v1

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v10, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_10
    move-object/from16 v12, v22

    if-eqz v15, :cond_11

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    invoke-virtual {v12, v10, v1}, Lg1/a;->a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_11
    if-eqz v14, :cond_13

    if-eqz v16, :cond_13

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lg1/a;->d(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    goto :goto_c

    :cond_12
    const-string v1, "RemoteAnimRunnerCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but it\'s not in info."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    invoke-virtual/range {v21 .. v21}, Lg1/a;->c()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual/range {v21 .. v21}, Lg1/a;->c()Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v10, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    move-object/from16 v4, v21

    invoke-virtual {v4, v10, v1}, Lg1/a;->a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto :goto_d

    :cond_13
    move-object/from16 v4, v21

    :goto_d
    new-instance v14, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v12

    move-object/from16 v5, p2

    move-object v6, v7

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;Lg1/a;Lg1/a;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V

    invoke-virtual {v14, v9}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;->setTransitionInfo(Landroid/window/TransitionInfo;)V

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    instance-of v2, v1, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    if-eqz v2, :cond_14

    check-cast v1, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->isSmoothRecents()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    check-cast v1, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;

    const/4 v2, 0x0

    new-instance v7, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$2;

    invoke-direct {v7, v0, v8, v14}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$2;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;Landroid/os/IBinder;Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;)V

    move-object v0, v1

    move v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v11

    move-object v5, v13

    move-object/from16 v6, v23

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->onAnimationStartWithSurfaceTransaction(ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    goto :goto_e

    :cond_14
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    const/4 v2, 0x0

    new-instance v5, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$3;

    invoke-direct {v5, v0, v8, v14}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$3;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;Landroid/os/IBinder;Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;)V

    move-object v0, v1

    move v1, v2

    move-object v2, v11

    move-object v3, v13

    move-object/from16 v4, v23

    invoke-interface/range {v0 .. v5}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    :goto_e
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
