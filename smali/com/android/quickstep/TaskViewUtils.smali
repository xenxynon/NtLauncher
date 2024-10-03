.class public final Lcom/android/quickstep/TaskViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskViewUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(I[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;[Landroid/graphics/Matrix;Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;[Z)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/android/quickstep/TaskViewUtils;->lambda$createRecentsWindowAnimator$1(I[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;[Landroid/graphics/Matrix;Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;[Z)V

    return-void
.end method

.method private static animateSplitRoot(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method public static synthetic b(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/TaskViewUtils;->lambda$createSplitAuxiliarySurfacesAnimator$4(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TaskViewUtils;->lambda$createRecentsWindowAnimator$0([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method public static composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V
    .locals 15
    .param p0    # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/launcher3/statemanager/StateManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/quickstep/views/RecentsView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/launcher3/statehandlers/DepthController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    xor-int/lit8 v4, p5, 0x1

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-static {v2, v3, v5}, Lcom/android/quickstep/TaskViewUtils;->findTaskViewToLaunch(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;[Landroid/view/RemoteAnimationTarget;)Lcom/android/quickstep/views/TaskView;

    move-result-object v10

    if-nez v10, :cond_0

    const-string v0, "TaskViewUtils"

    const-string v1, "composeRecentsLaunchAnimator: unexpected error. TaskView is null"

    invoke-static {v0, v1}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v11, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v12, 0x150

    invoke-direct {v11, v12, v13}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    move-object v3, v10

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p8

    move-object v9, v11

    invoke-static/range {v3 .. v9}, Lcom/android/quickstep/TaskViewUtils;->createRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/anim/PendingAnimation;)V

    const/4 v3, 0x1

    if-eqz p5, :cond_1

    new-instance v4, Lcom/android/quickstep/o7;

    invoke-direct {v4, v11}, Lcom/android/quickstep/o7;-><init>(Lcom/android/launcher3/anim/PendingAnimation;)V

    move-object/from16 v5, p4

    invoke-static {v5, v3, v4}, Lcom/android/quickstep/TaskViewUtils;->createSplitAuxiliarySurfacesAnimator([Landroid/view/RemoteAnimationTarget;ZLjava/util/function/Consumer;)Landroid/animation/ValueAnimator;

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p5, :cond_3

    invoke-virtual/range {p7 .. p7}, Lcom/android/quickstep/views/RecentsView;->getRecentsAnimationController()Lcom/android/quickstep/RecentsAnimationController;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6, v5}, Lcom/android/quickstep/RecentsAnimationController;->setWillFinishToHome(Z)V

    :cond_2
    invoke-virtual {v2, v10}, Lcom/android/quickstep/views/RecentsView;->createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;

    move-result-object v6

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v7, Lcom/android/quickstep/TaskViewUtils$8;

    invoke-direct {v7, v2, v1}, Lcom/android/quickstep/TaskViewUtils$8;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statemanager/StateManager;)V

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v4, v12, v13}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v4}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v7, Lcom/android/quickstep/TaskViewUtils$9;

    invoke-direct {v7, v2, v1}, Lcom/android/quickstep/TaskViewUtils$9;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statemanager/StateManager;)V

    move-object v14, v6

    move-object v6, v4

    move-object v4, v14

    :goto_0
    invoke-virtual {v11, v6}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    invoke-virtual/range {p7 .. p7}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_4

    new-instance v6, Lcom/android/launcher3/uioverrides/touchcontrollers/e;

    invoke-direct {v6, v2}, Lcom/android/launcher3/uioverrides/touchcontrollers/e;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v11, v6}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameCallback(Ljava/lang/Runnable;)V

    :cond_4
    invoke-virtual {v11}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v2, v3, [Landroid/animation/Animator;

    aput-object v4, v2, v5

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    invoke-virtual {p0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static composeRecentsSplitLaunchAnimator(Lcom/android/quickstep/views/GroupedTaskView;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statehandlers/DepthController;IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .locals 16
    .param p1    # Lcom/android/launcher3/statemanager/StateManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/launcher3/statehandlers/DepthController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Lcom/android/quickstep/TaskViewUtils$5;

    move-object/from16 v7, p7

    invoke-direct {v1, v7}, Lcom/android/quickstep/TaskViewUtils$5;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v2, v3, v6}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrapApps(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v9

    invoke-static {v2, v5, v3, v6}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrapNonApps(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v10

    invoke-static {v2, v4, v3, v6}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrapNonApps(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v14

    const/4 v12, 0x1

    move-object v7, v0

    move-object/from16 v8, p0

    move-object/from16 v13, p1

    move-object/from16 v15, p2

    invoke-static/range {v7 .. v15}, Lcom/android/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V

    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    move-object/from16 v7, p7

    move-object v8, v6

    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_9

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    if-nez v10, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    iget v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    if-eq v10, v0, :cond_2

    if-ne v10, v1, :cond_4

    :cond_2
    if-eq v11, v5, :cond_4

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected task to be showing, but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    if-ne v10, v0, :cond_6

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    if-nez v6, :cond_5

    move-object v6, v9

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v6

    :cond_6
    :goto_2
    if-ne v10, v1, :cond_8

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v8

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v9

    :goto_3
    move-object v8, v9

    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    invoke-static {v3, v6}, Lcom/android/quickstep/TaskViewUtils;->animateSplitRoot(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V

    invoke-static {v3, v8}, Lcom/android/quickstep/TaskViewUtils;->animateSplitRoot(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V

    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-interface/range {p7 .. p7}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static composeRecentsSplitLaunchAnimatorLegacy(Lcom/android/quickstep/views/GroupedTaskView;II[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statehandlers/DepthController;Ljava/lang/Runnable;)V
    .locals 13
    .param p0    # Lcom/android/quickstep/views/GroupedTaskView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/launcher3/statemanager/StateManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/launcher3/statehandlers/DepthController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v0, p8

    if-eqz p0, :cond_0

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v7

    new-instance v1, Lcom/android/quickstep/TaskViewUtils$6;

    invoke-direct {v1, v0}, Lcom/android/quickstep/TaskViewUtils$6;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v5, 0x1

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/android/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v2

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_6

    aget-object v8, v2, v7

    iget-object v9, v8, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v9, :cond_1

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_1

    :cond_1
    const/4 v9, -0x1

    :goto_1
    iget v10, v8, Landroid/view/RemoteAnimationTarget;->mode:I

    iget-object v8, v8, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-nez v8, :cond_2

    :goto_2
    move v11, p1

    move v12, p2

    goto :goto_3

    :cond_2
    if-nez v10, :cond_3

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move v11, p1

    if-eq v9, v11, :cond_5

    move v12, p2

    if-eq v9, v12, :cond_5

    const/4 v9, 0x1

    if-ne v10, v9, :cond_4

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected task to be opening, but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    array-length v2, v4

    if-ge v6, v2, :cond_8

    aget-object v2, v4, v6

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    aget-object v5, v4, v6

    iget v5, v5, Landroid/view/RemoteAnimationTarget;->windowType:I

    const/16 v7, 0x7f2

    if-ne v5, v7, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x172

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/quickstep/j7;

    invoke-direct {v5, v1, v2}, Lcom/android/quickstep/j7;-><init>(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/android/quickstep/TaskViewUtils$7;

    invoke-direct {v5, v1, v2, v3, v0}, Lcom/android/quickstep/TaskViewUtils$7;-><init>(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static createRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 29
    .param p0    # Lcom/android/quickstep/views/TaskView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/launcher3/statehandlers/DepthController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v9

    const-string v10, "TaskViewUtils"

    if-nez v9, :cond_0

    const-string v0, "createRecentsWindowAnimator: unexpected error. TaskView\'s parent is null"

    invoke-static {v10, v0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->isEndQuickswitchCuj()Z

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/android/quickstep/views/TaskView;->setEndQuickswitchCuj(Z)V

    new-instance v13, Lcom/android/quickstep/RemoteAnimationTargets;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v13, v0, v1, v2, v12}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;I)V

    invoke-virtual {v13}, Lcom/android/quickstep/RemoteAnimationTargets;->getNavBarRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v14

    new-instance v15, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v15, v6}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-virtual {v13, v15}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    invoke-virtual {v9}, Lcom/android/quickstep/views/RecentsView;->getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :goto_0
    move-object v4, v0

    goto :goto_2

    :cond_1
    sget-boolean v0, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_MODE_SUPPORTED:Z

    if-eqz v0, :cond_2

    instance-of v0, v6, Lcom/android/quickstep/views/DesktopTaskView;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v12

    :goto_1
    new-instance v1, Lcom/android/quickstep/RemoteTargetGluer;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/quickstep/views/RecentsView;->getSizeStrategy()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v3

    invoke-direct {v1, v2, v3, v13, v0}, Lcom/android/quickstep/RemoteTargetGluer;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/RemoteAnimationTargets;Z)V

    if-eqz v0, :cond_3

    invoke-virtual {v1, v13}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargetsForDesktop(Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->containsMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v13}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargetsForSplitScreen(Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v13}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargets(Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v0

    goto :goto_0

    :goto_2
    array-length v0, v4

    move v1, v12

    :goto_3
    if-ge v1, v0, :cond_5

    aget-object v2, v4, v1

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/quickstep/util/TransformParams;->setSyncTransactionApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)Lcom/android/quickstep/util/TransformParams;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget-boolean v5, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-virtual {v9}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v12

    if-eq v0, v12, :cond_6

    const/4 v12, 0x1

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    :goto_4
    invoke-virtual {v9, v0}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v0

    if-eqz v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->getGridTranslationY()F

    move-result v5

    float-to-int v5, v5

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v17

    if-nez v17, :cond_9

    array-length v7, v4

    move/from16 v18, v11

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v7, :cond_8

    aget-object v19, v4, v11

    move-object/from16 v20, v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    move-object/from16 v21, v1

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    move-object/from16 v22, v3

    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v3

    invoke-virtual {v3, v1, v1}, Lcom/android/quickstep/util/RecentsOrientedState;->update(II)Z

    iget-object v1, v2, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v1, v2, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->isGridTask()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setIsGridTask(Z)V

    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    sget-object v3, Lcom/android/quickstep/l7;->a:Lcom/android/quickstep/l7;

    invoke-interface {v1, v2, v3, v0, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->set(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;II)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/util/TransformParams;->TARGET_ALPHA:Landroid/util/FloatProperty;

    const/high16 v19, 0x3f800000    # 1.0f

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v24, v0

    move-object/from16 v25, v4

    const v0, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v26

    move-object/from16 v0, p6

    move-object/from16 v4, v20

    move-object/from16 v20, v22

    const/4 v3, 0x0

    move-object/from16 v28, v4

    move-object/from16 v27, v25

    move/from16 v4, v19

    move/from16 v19, v5

    move/from16 v22, v7

    const/4 v7, 0x1

    move-object/from16 v5, v26

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v19

    move-object/from16 v3, v20

    move-object/from16 v1, v21

    move/from16 v7, v22

    move/from16 v0, v24

    move-object/from16 v4, v27

    move-object/from16 v2, v28

    goto/16 :goto_6

    :cond_8
    move-object/from16 v28, v2

    goto :goto_7

    :cond_9
    move-object/from16 v28, v2

    move/from16 v18, v11

    :goto_7
    const/4 v7, 0x1

    move-object v0, v4

    array-length v1, v0

    move-object/from16 v11, v16

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v2, v1, :cond_c

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result v4

    iget-object v5, v3, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    sget-object v11, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move/from16 v16, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v8, v5, v11, v1, v7}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v5, v3, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result v1

    invoke-virtual {v8, v5, v11, v1, v7}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v1, v3, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v11, v3, v7}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    new-instance v1, Lcom/android/quickstep/TaskViewUtils$1;

    invoke-direct {v1, v13, v15}, Lcom/android/quickstep/TaskViewUtils$1;-><init>(Lcom/android/quickstep/RemoteAnimationTargets;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {v8, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/quickstep/n7;

    invoke-direct {v1, v0}, Lcom/android/quickstep/n7;-><init>([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    invoke-virtual {v8, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameCallback(Ljava/lang/Runnable;)V

    if-eqz v14, :cond_a

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Lcom/android/quickstep/TaskViewUtils$2;

    invoke-direct {v3, v0, v14, v1}, Lcom/android/quickstep/TaskViewUtils$2;-><init>([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;)V

    invoke-virtual {v8, v3}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move v5, v4

    goto :goto_9

    :cond_a
    invoke-virtual {v9}, Lcom/android/quickstep/views/RecentsView;->getRecentsAnimationController()Lcom/android/quickstep/RecentsAnimationController;

    move-result-object v1

    move v5, v4

    if-eqz v1, :cond_b

    const-wide/16 v3, 0x150

    invoke-virtual {v1, v3, v4}, Lcom/android/quickstep/RecentsAnimationController;->animateNavigationBarToApp(J)V

    :cond_b
    :goto_9
    add-int/lit8 v2, v2, 0x1

    move-object v11, v0

    move v3, v5

    move/from16 v1, v16

    const/4 v7, 0x1

    goto :goto_8

    :cond_c
    instance-of v0, v6, Lcom/android/quickstep/views/GroupedTaskView;

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_d

    const-wide/16 v0, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->setDuration(J)V

    const-string v0, "GroupedTaskView scale is fullScreenScale , no need anim again "

    invoke-static {v10, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-nez p1, :cond_11

    if-eqz v12, :cond_11

    if-eqz v11, :cond_11

    array-length v0, v11

    if-lez v0, :cond_11

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v5, v1}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v5

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    array-length v0, v11

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_e

    aget-object v2, v11, v1

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->getThumbnails()[Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v6

    array-length v0, v11

    array-length v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v9, v7, [Landroid/graphics/Matrix;

    new-array v10, v7, [Landroid/graphics/Matrix;

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v7, :cond_f

    aget-object v14, v6, v12

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v15, 0x0

    invoke-direct {v0, v15, v15, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v15, v1, v2

    const/4 v3, 0x1

    aput v15, v1, v3

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x2

    aput v3, v1, v4

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v5, 0x3

    aput v3, v1, v5

    invoke-virtual {v14}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-static {v14, v3, v1, v2}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    new-instance v3, Landroid/graphics/RectF;

    aget v15, v1, v2

    move-object/from16 v16, v13

    const/4 v2, 0x1

    aget v13, v1, v2

    aget v2, v1, v4

    aget v1, v1, v5

    invoke-direct {v3, v15, v13, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    aput-object v1, v9, v12

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    aput-object v0, v10, v12

    invoke-virtual {v14}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {v14}, Landroid/view/View;->getTranslationX()F

    move-result v13

    aget-object v0, v11, v12

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result v15

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    div-float v4, v3, v15

    sget-object v19, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p6

    move-object v1, v14

    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    div-float v4, v13, v15

    move v3, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v13, v16

    goto/16 :goto_b

    :cond_f
    move-object/from16 v16, v13

    new-array v0, v7, [Landroid/graphics/Matrix;

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v7, :cond_10

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v11, v2

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_10
    new-instance v25, Landroid/graphics/Matrix;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    new-instance v2, Lcom/android/quickstep/m7;

    move-object/from16 v19, v2

    move/from16 v20, v7

    move-object/from16 v21, v9

    move-object/from16 v22, v0

    move-object/from16 v23, v11

    move-object/from16 v24, v10

    move-object/from16 v26, v6

    move-object/from16 v27, v1

    invoke-direct/range {v19 .. v27}, Lcom/android/quickstep/m7;-><init>(I[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;[Landroid/graphics/Matrix;Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;[Z)V

    invoke-virtual {v8, v2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameCallback(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/quickstep/TaskViewUtils$3;

    invoke-direct {v0, v6}, Lcom/android/quickstep/TaskViewUtils$3;-><init>([Lcom/android/quickstep/views/TaskThumbnailView;)V

    invoke-virtual {v8, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_d

    :cond_11
    move-object/from16 v16, v13

    :goto_d
    new-instance v0, Lcom/android/quickstep/TaskViewUtils$4;

    move-object/from16 v2, v16

    move/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/TaskViewUtils$4;-><init>(ZLcom/android/quickstep/RemoteAnimationTargets;)V

    invoke-virtual {v8, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p5

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/android/quickstep/util/BaseDepthController;->stateDepth:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    sget-object v1, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    move-object/from16 v3, v28

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v2

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    :cond_12
    return-void
.end method

.method public static createSplitAuxiliarySurfacesAnimator([Landroid/view/RemoteAnimationTarget;ZLjava/util/function/Consumer;)Landroid/animation/ValueAnimator;
    .locals 7
    .param p0    # [Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/RemoteAnimationTarget;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Landroid/animation/ValueAnimator;",
            ">;)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    iget-object v5, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget v4, v4, Landroid/view/RemoteAnimationTarget;->windowType:I

    const/16 v6, 0x7f2

    if-ne v4, v6, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    :cond_3
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    if-nez p2, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-object v0

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/quickstep/k7;

    invoke-direct {v2, v1, p0, p1}, Lcom/android/quickstep/k7;-><init>(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/android/quickstep/TaskViewUtils$10;

    invoke-direct {v2, p1, v1, p0}, Lcom/android/quickstep/TaskViewUtils$10;-><init>(ZLjava/util/List;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic d(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/TaskViewUtils;->lambda$composeRecentsSplitLaunchAnimatorLegacy$2(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TaskViewUtils;->lambda$composeRecentsLaunchAnimator$3(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static findTaskViewToLaunch(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;[Landroid/view/RemoteAnimationTarget;)Lcom/android/quickstep/views/TaskView;
    .locals 7

    instance-of v0, p1, Lcom/android/quickstep/views/TaskView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/quickstep/views/TaskView;

    if-nez p0, :cond_0

    const-string p0, "TaskViewUtils"

    const-string p1, " findTaskViewToLaunch recentsView == null "

    invoke-static {p0, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v1, p1

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    if-eqz v0, :cond_4

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne p1, v5, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    return-object v1

    :cond_5
    array-length p1, p2

    :goto_1
    const/4 v0, -0x1

    if-ge v2, p1, :cond_7

    aget-object v3, p2, v2

    iget v4, v3, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v4, :cond_6

    iget p1, v3, Landroid/view/RemoteAnimationTarget;->taskId:I

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    move p1, v0

    :goto_2
    if-ne p1, v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_3

    :cond_9
    return-object p1

    :cond_a
    :goto_3
    return-object v1
.end method

.method private static synthetic lambda$composeRecentsLaunchAnimator$3(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/anim/PendingAnimation;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    return-void
.end method

.method private static synthetic lambda$composeRecentsSplitLaunchAnimatorLegacy$2(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private static synthetic lambda$createRecentsWindowAnimator$0([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic lambda$createRecentsWindowAnimator$1(I[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;[Landroid/graphics/Matrix;Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;[Z)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    aget-object v2, p3, v1

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    if-eqz v2, :cond_0

    aget-object v2, p4, v1

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p5, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    aget-object v2, p2, v1

    invoke-virtual {p5, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    aget-object v2, p3, v1

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p5, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    aget-object v2, p4, v1

    invoke-virtual {p5, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    aget-object v2, p6, v1

    invoke-virtual {v2, p5}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1

    :cond_0
    aget-boolean v2, p7, v0

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " createRecentsWindowAnimator addOnFrameCallback Matrix is null. the length of simulatorCopies is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " thumbnails length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mt[i] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " k0i[i] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " TaskViewSimulator().getCurrentMatrix() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p3, v1

    invoke-virtual {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mti[i] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p4, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskViewUtils"

    invoke-static {v3, v2}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-boolean v2, p7, v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private static synthetic lambda$createSplitAuxiliarySurfacesAnimator$4(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;ZLandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    move v1, p3

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
