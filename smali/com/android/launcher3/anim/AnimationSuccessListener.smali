.class public abstract Lcom/android/launcher3/anim/AnimationSuccessListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field protected mCancelled:Z

.field private mDelayMills:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/anim/AnimationSuccessListener;->mCancelled:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/anim/AnimationSuccessListener;->mDelayMills:J

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/anim/AnimationSuccessListener;Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->lambda$onAnimationEnd$0(Landroid/animation/Animator;)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationSuccess(Landroid/animation/Animator;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/anim/AnimationSuccessListener;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher3/anim/AnimationSuccessListener;->mCancelled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/launcher3/anim/AnimationSuccessListener;->mDelayMills:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/anim/c;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/anim/c;-><init>(Lcom/android/launcher3/anim/AnimationSuccessListener;Landroid/animation/Animator;)V

    iget-wide p0, p0, Lcom/android/launcher3/anim/AnimationSuccessListener;->mDelayMills:J

    invoke-static {v0, p0, p1}, Ly2/c;->d(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationSuccess(Landroid/animation/Animator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract onAnimationSuccess(Landroid/animation/Animator;)V
.end method

.method public setDelayMills(J)Lcom/android/launcher3/anim/AnimationSuccessListener;
    .locals 0

    iput-wide p1, p0, Lcom/android/launcher3/anim/AnimationSuccessListener;->mDelayMills:J

    return-object p0
.end method
