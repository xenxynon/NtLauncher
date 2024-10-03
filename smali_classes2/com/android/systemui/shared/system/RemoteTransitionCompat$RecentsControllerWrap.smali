.class Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;
.super Landroid/view/IRecentsAnimationController$Default;
.source "SourceFile"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/RemoteTransitionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecentsControllerWrap"
.end annotation


# static fields
.field private static final STATE_NEW_TASK:I = 0x1

.field private static final STATE_NORMAL:I


# instance fields
.field private mAppearedTargets:[Landroid/view/RemoteAnimationTarget;

.field private mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

.field private mInfo:Landroid/window/TransitionInfo;

.field private mKeyguardLocked:Z

.field private mLeashMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

.field private mOpeningSeparateHome:Z

.field private mOpeningTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;",
            ">;"
        }
    .end annotation
.end field

.field private mPausingTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;",
            ">;"
        }
    .end annotation
.end field

.field private mPipTask:Landroid/window/WindowContainerToken;

.field private mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field private mRecentsTask:Landroid/window/WindowContainerToken;

.field private mRecentsTaskId:I

.field private mState:I

.field private mTransition:Landroid/os/IBinder;

.field private mWillFinishToHome:Z


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/view/IRecentsAnimationController$Default;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTaskId:I

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    iput-boolean v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningSeparateHome:Z

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mTransition:Landroid/os/IBinder;

    iput-boolean v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mKeyguardLocked:Z

    iput-boolean v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWillFinishToHome:Z

    iput v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mState:I

    return-void
.end method

.method public static synthetic R(Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->lambda$merge$1()V

    return-void
.end method

.method public static synthetic S(Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->lambda$merge$0()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->commitTasksAppearedIfNeeded()V

    return-void
.end method

.method private commitTasksAppearedIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mAppearedTargets:[Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mAppearedTargets:[Landroid/view/RemoteAnimationTarget;

    :cond_0
    return-void
.end method

.method private synthetic lambda$merge$0()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->finish(ZZ)V

    return-void
.end method

.method private synthetic lambda$merge$1()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->finish(ZZ)V

    return-void
.end method


# virtual methods
.method public animateNavigationBarToApp(J)V
    .locals 0

    return-void
.end method

.method public cleanupScreenshot()V
    .locals 0

    return-void
.end method

.method public detachNavigationBarFromApp(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mTransition:Landroid/os/IBinder;

    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->detachNavigationBarFromApp(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RemoteTransitionCompat"

    const-string v0, "Failed to detach the navigation bar from app"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public finish(ZZ)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    const-string v1, "RemoteTransitionCompat"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const-string p1, "Duplicate call to finish"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-boolean v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mKeyguardLocked:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v2, v3, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_2
    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWillFinishToHome:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    iget v7, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mState:I

    if-nez v7, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v4

    :goto_1
    if-ltz p1, :cond_3

    iget-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object p2, p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, p2, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object p2, p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mKeyguardLocked:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz p1, :cond_c

    :goto_2
    invoke-virtual {v2, p1}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    goto/16 :goto_7

    :cond_4
    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningSeparateHome:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    move p1, v3

    :goto_3
    iget-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object v6, p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    iget-object v6, p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v6, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_5
    iget-object p2, p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v4

    :goto_4
    if-ltz p1, :cond_7

    iget-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object p2, p2, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_7
    iget-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mKeyguardLocked:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    if-eqz p1, :cond_c

    goto :goto_2

    :cond_8
    move p1, v3

    :goto_5
    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_9
    move p1, v3

    :goto_6
    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_b

    if-nez p2, :cond_a

    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v4}, Landroid/window/WindowContainerTransaction;->setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_a
    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object v4, v4, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_b
    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    if-eqz p1, :cond_c

    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v4, :cond_c

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {p2, p1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object p2

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/window/PictureInPictureSurfaceTransaction;->apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    :cond_c
    :goto_7
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_d

    move-object v2, v5

    :cond_d
    invoke-interface {p1, v2, v0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    const-string p2, "Failed to call animation finish callback"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_8
    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->releaseAllSurfaces()V

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mAppearedTargets:[Landroid/view/RemoteAnimationTarget;

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    iput-boolean v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningSeparateHome:Z

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    iput-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mTransition:Landroid/os/IBinder;

    iput v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mState:I

    return-void
.end method

.method merge(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xc

    if-ne v2, v4, :cond_0

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onAnimationCanceled(Ljava/util/HashMap;)V

    iget-boolean v1, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWillFinishToHome:Z

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->finish(ZZ)V

    return v3

    :cond_0
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mAppearedTargets:[Landroid/view/RemoteAnimationTarget;

    iput-boolean v3, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningSeparateHome:Z

    new-instance v4, Lg1/b$a;

    invoke-direct {v4}, Lg1/b$a;-><init>()V

    move-object v5, v2

    move-object v6, v5

    move v7, v3

    move v8, v7

    move v9, v8

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ge v7, v10, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v12

    invoke-virtual {v4, v10}, Lg1/b$a;->a(Landroid/window/TransitionInfo$Change;)Z

    move-result v13

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v14

    invoke-static {v14}, Lg1/b;->f(I)Z

    move-result v14

    if-eqz v14, :cond_4

    iget-object v14, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object v2, v10

    goto :goto_1

    :cond_1
    if-eqz v13, :cond_9

    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    iput-boolean v11, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningSeparateHome:Z

    :cond_2
    if-nez v6, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v12

    invoke-static {v12}, Lg1/b;->c(I)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v9, v11

    goto :goto_1

    :cond_5
    if-eqz v13, :cond_9

    if-nez v5, :cond_6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v12

    const/4 v13, 0x6

    if-ne v12, v13, :cond_9

    const/16 v8, 0x20

    invoke-virtual {v10, v8}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    new-instance v2, Lcom/android/systemui/shared/system/e;

    invoke-direct {v2, v0}, Lcom/android/systemui/shared/system/e;-><init>(Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onSwitchToScreenshot(Ljava/lang/Runnable;)Z

    return v3

    :cond_8
    move v8, v11

    :cond_9
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_a
    const-string v4, "RemoteTransitionCompat"

    if-eqz v8, :cond_c

    if-eqz v9, :cond_c

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    new-instance v2, Lcom/android/systemui/shared/system/d;

    invoke-direct {v2, v0}, Lcom/android/systemui/shared/system/d;-><init>(Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onSwitchToScreenshot(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "Recents callback doesn\'t support support switching to screenshot, there might be a flicker."

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v11, v3}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->finish(ZZ)V

    :cond_b
    return v3

    :cond_c
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v2, :cond_10

    iget v8, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mState:I

    if-nez v8, :cond_d

    const-string v8, "Returning to recents while recents is already idle."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_f

    :cond_e
    const-string v8, "Returning to recents without closing any opening tasks."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iput v3, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mState:I

    :cond_10
    if-eqz v5, :cond_12

    move v2, v3

    move v8, v2

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_13

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/TransitionInfo$Change;

    iget-object v10, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-static {v10, v9}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I

    move-result v10

    if-gez v10, :cond_11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Back to existing recents animation from an unrecognized task: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_11
    iget-object v8, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v11

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_12
    move v8, v3

    :cond_13
    if-eqz v6, :cond_16

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    iget-object v2, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/RemoteAnimationTarget;

    move v8, v3

    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_15

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/TransitionInfo$Change;

    iget-object v10, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-static {v10, v9}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I

    move-result v10

    if-ltz v10, :cond_14

    iget-object v12, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object v12, v12, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;->mLeash:Landroid/view/SurfaceControl;

    invoke-static {v9, v2, v12}, Lg1/b;->j(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;

    move-result-object v12

    aput-object v12, v5, v8

    iget-object v12, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    iget-object v13, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v1, v9, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v12, p1

    goto :goto_5

    :cond_14
    iget-object v10, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    move-object/from16 v12, p1

    invoke-static {v9, v2, v12, v1, v10}, Lg1/b;->l(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v10

    aput-object v10, v5, v8

    iget-object v10, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-static {v9, v10}, Lg1/b;->n(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v10

    aget-object v13, v5, v8

    iget-object v13, v13, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v14, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v14, v10}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v10

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-virtual {v1, v13, v10}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    aget-object v10, v5, v8

    iget-object v10, v10, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v10, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v10, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    aget-object v14, v5, v8

    iget-object v14, v14, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v13, v9, v14}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_15
    move-object/from16 v12, p1

    iput v11, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mState:I

    iput-object v5, v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mAppearedTargets:[Landroid/view/RemoteAnimationTarget;

    move v8, v11

    goto :goto_6

    :cond_16
    move-object/from16 v12, p1

    :goto_6
    if-nez v8, :cond_17

    const-string v0, "Don\'t know how to merge this transition."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    return v11
.end method

.method public removeTask(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public screenshotTask(I)Landroid/window/TaskSnapshot;
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityTaskManager;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "RemoteTransitionCompat"

    const-string v0, "Failed to screenshot task"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .locals 0

    return-void
.end method

.method public setDeferCancelUntilNextTransition(ZZ)V
    .locals 0

    return-void
.end method

.method public setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    return-void
.end method

.method public setInputConsumerEnabled(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTaskId:I

    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RemoteTransitionCompat"

    const-string v0, "Failed to set focused task"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setWillFinishToHome(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWillFinishToHome:Z

    return-void
.end method

.method start(Lcom/android/systemui/shared/system/RecentsAnimationListener;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    if-nez v0, :cond_7

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    iput-object p3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mInfo:Landroid/window/TransitionInfo;

    iput-object p5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mFinishCB:Landroid/window/IRemoteTransitionFinishedCallback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTaskId:I

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mTransition:Landroid/os/IBinder;

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x40

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mKeyguardLocked:Z

    iput p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mState:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lg1/b$a;

    invoke-direct {v0}, Lg1/b$a;-><init>()V

    move v1, p2

    :goto_1
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-static {v2}, Lg1/b;->h(Landroid/window/TransitionInfo$Change;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    invoke-static {v2, v3, p3, p4, v4}, Lg1/b;->l(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p4, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0, v2}, Lg1/b$a;->a(Landroid/window/TransitionInfo$Change;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mLeashMap:Landroid/util/ArrayMap;

    invoke-static {v2, v4, p3, p4, v5}, Lg1/b;->l(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    invoke-static {v5}, Lg1/b;->c(I)Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    mul-int/2addr v7, v6

    sub-int/2addr v7, v1

    invoke-virtual {p4, v5, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPausingTasks:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object v4, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v6, v2, v4}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTask:Landroid/window/WindowContainerToken;

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    iget v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v5, v6, :cond_3

    iget-object v2, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v4, v6

    sub-int/2addr v4, v1

    invoke-virtual {p4, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :goto_2
    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTask:Landroid/window/WindowContainerToken;

    iget v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mRecentsTaskId:I

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    iget v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lg1/b;->f(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mOpeningTasks:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;

    iget-object v4, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v5, v2, v4}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mListener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    new-instance v3, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-direct {v3, p0}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;-><init>(Landroid/view/IRecentsAnimationController;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, [Landroid/view/RemoteAnimationTarget;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to run a new recents animation while recents is already active."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
