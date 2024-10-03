.class public final Ld1/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/SyncRtSurfaceTransactionApplier;

.field private final e:Landroid/graphics/Matrix;

.field private final f:Landroid/view/SurfaceControl;

.field private final g:Landroid/view/ViewGroup;

.field private final h:Ly0/a;

.field private final i:Landroid/graphics/Rect;

.field private final j:I


# direct methods
.method public constructor <init>(FFLandroid/view/View;Landroid/view/SurfaceControl;Landroid/view/ViewGroup;Ly0/a;Landroid/graphics/Rect;IF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ld1/d$c;->e:Landroid/graphics/Matrix;

    sub-float/2addr p1, p9

    iput p1, p0, Ld1/d$c;->a:F

    iput p2, p0, Ld1/d$c;->b:F

    iput-object p3, p0, Ld1/d$c;->c:Landroid/view/View;

    new-instance p1, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {p1, p3}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Ld1/d$c;->d:Landroid/view/SyncRtSurfaceTransactionApplier;

    iput-object p4, p0, Ld1/d$c;->f:Landroid/view/SurfaceControl;

    iput-object p5, p0, Ld1/d$c;->g:Landroid/view/ViewGroup;

    iput-object p6, p0, Ld1/d$c;->h:Ly0/a;

    iput-object p7, p0, Ld1/d$c;->i:Landroid/graphics/Rect;

    iput p8, p0, Ld1/d$c;->j:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    iget-object v0, p0, Ld1/d$c;->f:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ld1/d$c;->h:Ly0/a;

    invoke-virtual {v0}, Ly0/a;->a()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Ld1/d$c;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v3, p0, Ld1/d$c;->f:Landroid/view/SurfaceControl;

    invoke-direct {v1, v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v1, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v1

    iget-object v3, p0, Ld1/d$c;->d:Landroid/view/SyncRtSurfaceTransactionApplier;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ld1/d$c;->f:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_0
    iget-object v1, p0, Ld1/d$c;->h:Ly0/a;

    invoke-virtual {v1, v0}, Ly0/a;->b(Landroid/view/SurfaceControl$Transaction;)V

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    const/4 v1, 0x4

    iget-object p0, p0, Ld1/d$c;->f:Landroid/view/SurfaceControl;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ld1/e;

    invoke-direct {v3, p0}, Ld1/e;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method b(F)V
    .locals 4

    iget-object v0, p0, Ld1/d$c;->f:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld1/d$c;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ld1/d;->c()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iget v0, p0, Ld1/d$c;->a:F

    iget v1, p0, Ld1/d$c;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget-object p1, p0, Ld1/d$c;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Ld1/d$c;->e:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Ld1/d$c;->h:Ly0/a;

    invoke-virtual {p1}, Ly0/a;->a()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Ld1/d$c;->e:Landroid/graphics/Matrix;

    iget-object v1, p0, Ld1/d$c;->i:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Ld1/d$c;->j:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v1, p0, Ld1/d$c;->f:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget-object v1, p0, Ld1/d$c;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v0

    iget-object v1, p0, Ld1/d$c;->d:Landroid/view/SyncRtSurfaceTransactionApplier;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    iget-object p0, p0, Ld1/d$c;->h:Ly0/a;

    invoke-virtual {p0, p1}, Ly0/a;->b(Landroid/view/SurfaceControl$Transaction;)V

    :cond_1
    :goto_0
    return-void
.end method
