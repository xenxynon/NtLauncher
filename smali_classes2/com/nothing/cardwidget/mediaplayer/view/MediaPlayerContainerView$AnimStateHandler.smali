.class public final Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimStateHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler$WhenMappings;
    }
.end annotation


# instance fields
.field private curStartUpState:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

.field private mStartUpCover:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Landroid/os/Looper;)V
    .locals 1

    const-string v0, "startUpCover"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "looper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->mStartUpCover:Ljava/lang/ref/WeakReference;

    sget-object p1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;->IDLE:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->curStartUpState:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    return-void
.end method


# virtual methods
.method public final getCurStartUpState()Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->curStartUpState:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->mStartUpCover:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;->FORWARD:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getSpeed()F

    move-result p1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->reverseAnimationSpeed()V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;->STANDBY:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    if-ne p1, v1, :cond_3

    sget-object p1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;->REVERSE:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->sendStartUpStateMessage(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;J)V

    return-void

    :cond_3
    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;->REVERSE:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    if-ne p1, v1, :cond_5

    iput-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->curStartUpState:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getSpeed()F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_4

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->reverseAnimationSpeed()V

    :cond_4
    :goto_0
    new-instance p1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler$handleMessage$1$1;

    invoke-direct {p1, p0, v0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler$handleMessage$1$1;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;->FINISH:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    const/4 v3, 0x1

    if-ne p1, v1, :cond_6

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;->IDLE:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    if-ne p1, v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_9

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getSpeed()F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_8

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->reverseAnimationSpeed()V

    :cond_8
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final sendStartUpStateMessage(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;J)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendStartUpStateMessage curStartUpState: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->curStartUpState:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaPlayerContainer"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final setCurStartUpState(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->curStartUpState:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    return-void
.end method

.method public final switchNextState()Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->curStartUpState:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p0, 0x5

    if-eq v0, p0, :cond_0

    new-instance p0, Ln5/j;

    invoke-direct {p0}, Ln5/j;-><init>()V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AnimStateHandler can\'t switchNextState to FINIFH."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;->IDLE:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;->REVERSE:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;->STANDBY:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;->FORWARD:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    :goto_0
    iput-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->curStartUpState:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    return-object v0
.end method
