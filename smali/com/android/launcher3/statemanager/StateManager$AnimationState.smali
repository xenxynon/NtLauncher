.class Lcom/android/launcher3/statemanager/StateManager$AnimationState;
.super Lcom/android/launcher3/states/StateAnimationConfig;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/statemanager/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<STATE_TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/launcher3/states/StateAnimationConfig;",
        "Landroid/animation/Animator$AnimatorListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT:Lcom/android/launcher3/states/StateAnimationConfig;


# instance fields
.field public changeId:I

.field public currentAnimation:Landroid/animation/AnimatorSet;

.field public playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field public skipCancelAnimFunc:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public targetState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTATE_TYPE;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    sput-object v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->DEFAULT:Lcom/android/launcher3/states/StateAnimationConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->changeId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/statemanager/StateManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/statemanager/StateManager$AnimationState;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->skipCancelAnimFunc:Ljava/util/function/Supplier;

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    sget-object v2, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->DEFAULT:Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->copyTo(Lcom/android/launcher3/states/StateAnimationConfig;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->targetState:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget v3, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->changeId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->changeId:I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->skipCancelAnimFunc:Ljava/util/function/Supplier;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "StateManager"

    const-string v1, "skip anim cancel"

    invoke-static {v0, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/launcher3/anim/f;->a:Lcom/android/launcher3/anim/f;

    invoke-static {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->callListenerCommandRecursively(Landroid/animation/Animator;Ljava/util/function/BiConsumer;)V

    sget-object v1, Lcom/android/launcher3/anim/g;->a:Lcom/android/launcher3/anim/g;

    invoke-static {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->callListenerCommandRecursively(Landroid/animation/Animator;Ljava/util/function/BiConsumer;)V

    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    :goto_1
    iput-object v2, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->skipCancelAnimFunc:Ljava/util/function/Supplier;

    return-void
.end method

.method public setAnimation(Landroid/animation/AnimatorSet;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "TSTATE_TYPE;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->setAnimation(Landroid/animation/AnimatorSet;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public setAnimation(Landroid/animation/AnimatorSet;Ljava/lang/Object;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "TSTATE_TYPE;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p3, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->skipCancelAnimFunc:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    iput-object p2, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->targetState:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
