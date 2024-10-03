.class abstract Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FinishTransitionRunnable"
.end annotation


# instance fields
.field mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field mInfo:Landroid/window/TransitionInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;->mInfo:Landroid/window/TransitionInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransitionInfo()Landroid/window/TransitionInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;->mInfo:Landroid/window/TransitionInfo;

    return-object p0
.end method

.method public merge(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method public setTransitionInfo(Landroid/window/TransitionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;->mInfo:Landroid/window/TransitionInfo;

    return-void
.end method
