.class Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/QuickstepTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLaunchAnimationRunner"
.end annotation


# instance fields
.field private final mOnEndCallback:Lcom/android/launcher3/util/RunnableList;

.field private final mV:Landroid/view/View;

.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/view/View;Lcom/android/launcher3/util/RunnableList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mOnEndCallback:Lcom/android/launcher3/util/RunnableList;

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mOnEndCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method

.method public bridge synthetic onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    check-cast p5, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v4, p2

    move-object/from16 v9, p5

    invoke-static {}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->clear()V

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    const/4 v8, 0x1

    invoke-static {v1, v4, v8}, Lcom/android/launcher3/QuickstepTransitionManager;->access$900(Lcom/android/launcher3/QuickstepTransitionManager;[Landroid/view/RemoteAnimationTarget;I)Z

    move-result v11

    const-string v1, "QuickstepTransitionManager"

    const-string v2, "AppLaunchAnimationRunner-> System Callback launch start."

    invoke-static {v1, v2}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner$1;-><init>(Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;)V

    invoke-virtual {v10, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    instance-of v3, v2, Lcom/nothing/launcher/widget/a;

    instance-of v5, v2, Lcom/android/quickstep/views/TaskView;

    const/4 v12, 0x0

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v5, v2, v4}, Lcom/android/launcher3/QuickstepTransitionManager;->isLaunchingFromRecents(Landroid/view/View;[Landroid/view/RemoteAnimationTarget;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v12

    :goto_0
    const-wide/16 v13, 0x0

    if-eqz v3, :cond_3

    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    move-object v3, v2

    check-cast v3, Lcom/nothing/launcher/widget/a;

    move-object v2, v10

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move v7, v11

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/QuickstepTransitionManager;->access$1000(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/AnimatorSet;Lcom/nothing/launcher/widget/a;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Z)V

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-ne v1, v2, :cond_1

    invoke-virtual {v10, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_1
    new-instance v1, Lr2/a;

    invoke-direct {v1}, Lr2/a;-><init>()V

    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    const/16 v2, 0x1b

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V

    const-string v0, "ALK-4971 AppWidgetHostView may be removed, drop animal action directly."

    invoke-static {v1, v0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    if-eqz v2, :cond_4

    move-object v2, v10

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move v7, v11

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/QuickstepTransitionManager;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Z)V

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    const/4 v2, 0x7

    :goto_1
    invoke-static {v1, v10, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->access$1100(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/Animator;I)V

    goto :goto_2

    :cond_4
    move-object v2, v10

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move v7, v11

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v8}, Lcom/android/launcher3/QuickstepTransitionManager;->access$1200(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/AnimatorSet;Landroid/view/View;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;ZLcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    new-instance v1, Lr2/a;

    invoke-direct {v1}, Lr2/a;-><init>()V

    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-ne v1, v2, :cond_5

    invoke-virtual {v10, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_5
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    const/16 v2, 0x8

    invoke-static {v1, v10, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->access$1100(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/Animator;I)V

    move v8, v12

    :goto_2
    if-eqz v11, :cond_6

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v1}, Lcom/android/launcher3/QuickstepTransitionManager;->access$1300(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mOnEndCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/j;

    invoke-direct {v2, v0}, Lcom/android/launcher3/j;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    invoke-virtual {v9, v10, v1, v2, v8}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public onBackAnimationStartIntercept(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-static {p1, p0}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->buildFinishTransaction(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p2, p1, p0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    const-string p0, "QuickstepTransitionManager"

    const-string p1, "onBackAnimationStartIntercept"

    invoke-static {p0, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onRecentAnimationStartIntercept(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-static {p1, p0}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->buildFinishTransaction(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p2, p1, p0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    const-string p0, "QuickstepTransitionManager"

    const-string p1, "onRecentAnimationStartIntercept"

    invoke-static {p0, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
