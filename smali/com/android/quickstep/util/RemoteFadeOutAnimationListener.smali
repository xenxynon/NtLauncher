.class public Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private mFirstFrame:Z

.field private final mTarget:Lcom/android/quickstep/RemoteAnimationTargets;


# direct methods
.method public constructor <init>([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;->mFirstFrame:Z

    new-instance v1, Lcom/android/quickstep/RemoteAnimationTargets;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/view/RemoteAnimationTarget;

    invoke-direct {v1, p1, p2, v2, v0}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;I)V

    iput-object v1, p0, Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;->mTarget:Lcom/android/quickstep/RemoteAnimationTargets;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-boolean v1, p0, Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;->mFirstFrame:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;->mTarget:Lcom/android/quickstep/RemoteAnimationTargets;

    iget-object v1, v1, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Landroid/view/RemoteAnimationTarget;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    iget-object v5, v5, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;->mFirstFrame:Z

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sub-float/2addr v1, p1

    iget-object p0, p0, Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;->mTarget:Lcom/android/quickstep/RemoteAnimationTargets;

    iget-object p0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    array-length p1, p0

    :goto_1
    if-ge v2, p1, :cond_2

    aget-object v3, p0, v2

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
