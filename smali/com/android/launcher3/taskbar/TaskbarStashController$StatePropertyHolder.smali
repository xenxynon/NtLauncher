.class Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarStashController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatePropertyHolder"
.end annotation


# instance fields
.field private mIsStashed:Z

.field private mLastStartedTransitionType:I

.field private mLastUnlockTransitionTimeout:J

.field private mPrevFlags:I

.field private final mStashCondition:Ljava/util/function/IntPredicate;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Ljava/util/function/IntPredicate;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mLastStartedTransitionType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mLastUnlockTransitionTimeout:J

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mStashCondition:Ljava/util/function/IntPredicate;

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mPrevFlags:I

    return p0
.end method

.method private computeTransitionType(I)I
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$300(Lcom/android/launcher3/taskbar/TaskbarStashController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isHotseatIconOnTopWhenAligned()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {v0, p1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$600(Lcom/android/launcher3/taskbar/TaskbarStashController;II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    if-eqz v0, :cond_1

    return v3

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mLastUnlockTransitionTimeout:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    return v3

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {v0, p1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$600(Lcom/android/launcher3/taskbar/TaskbarStashController;II)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {p0, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$700(Lcom/android/launcher3/taskbar/TaskbarStashController;I)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v2

    goto :goto_2

    :cond_4
    move p0, v1

    :goto_2
    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v1
.end method


# virtual methods
.method public createSetStateAnimator(IJ)Landroid/animation/Animator;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mStashCondition:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mPrevFlags:I

    xor-int v2, v1, p1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {v1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$500(Lcom/android/launcher3/taskbar/TaskbarStashController;I)V

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mPrevFlags:I

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/16 v1, 0x800

    invoke-static {p1, v2, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$600(Lcom/android/launcher3/taskbar/TaskbarStashController;II)Z

    move-result p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {p1, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$700(Lcom/android/launcher3/taskbar/TaskbarStashController;I)Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0xc8

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mLastUnlockTransitionTimeout:J

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->computeTransitionType(I)I

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$200(Lcom/android/launcher3/taskbar/TaskbarStashController;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$200(Lcom/android/launcher3/taskbar/TaskbarStashController;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mLastStartedTransitionType:I

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mIsStashed:Z

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    if-ne p1, v3, :cond_4

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mIsStashed:Z

    if-ne v1, v0, :cond_6

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :cond_6
    :goto_3
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mIsStashed:Z

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mLastStartedTransitionType:I

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {v1, v0, p2, p3, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$800(Lcom/android/launcher3/taskbar/TaskbarStashController;ZJI)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$200(Lcom/android/launcher3/taskbar/TaskbarStashController;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method
