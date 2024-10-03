.class Lcom/android/quickstep/views/FloatingTaskView$2;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/FloatingTaskView;->addAnimation(Lcom/android/launcher3/anim/PendingAnimation;Landroid/graphics/RectF;Landroid/graphics/Rect;ZZLcom/android/quickstep/util/SplitAnimationTimings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mTaskViewScaleX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mTaskViewScaleY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic this$0:Lcom/android/quickstep/views/FloatingTaskView;

.field final synthetic val$animDuration:J

.field final synthetic val$floatingTaskViewBounds:Landroid/graphics/RectF;

.field final synthetic val$prop:Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;

.field final synthetic val$startingBounds:Landroid/graphics/RectF;

.field final synthetic val$timings:Lcom/android/quickstep/util/SplitAnimationTimings;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/FloatingTaskView;Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;JLcom/android/quickstep/util/SplitAnimationTimings;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 13

    move-object v7, p0

    move-wide/from16 v8, p3

    move-object v0, p1

    iput-object v0, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->this$0:Lcom/android/quickstep/views/FloatingTaskView;

    move-object v10, p2

    iput-object v10, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->val$prop:Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;

    iput-wide v8, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->val$animDuration:J

    move-object/from16 v11, p5

    iput-object v11, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->val$timings:Lcom/android/quickstep/util/SplitAnimationTimings;

    move-object/from16 v0, p6

    iput-object v0, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->val$floatingTaskViewBounds:Landroid/graphics/RectF;

    move-object/from16 v0, p7

    iput-object v0, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->val$startingBounds:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    new-instance v12, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static {p2}, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->access$100(Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;)F

    move-result v3

    long-to-float v5, v8

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideStartOffset()F

    move-result v1

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideEndOffset()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v12, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v12, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static {p2}, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->access$200(Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;)F

    move-result v3

    long-to-float v5, v8

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideStartOffset()F

    move-result v1

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideEndOffset()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v6

    const/4 v2, 0x0

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v12, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v12, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static {p2}, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->access$300(Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;)F

    move-result v3

    long-to-float v5, v8

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectScaleXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideStartOffset()F

    move-result v1

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideEndOffset()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v6

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v12, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->mTaskViewScaleX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static {p2}, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->access$400(Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;)F

    move-result v1

    long-to-float v2, v8

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectScaleYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideStartOffset()F

    move-result v4

    invoke-interface/range {p5 .. p5}, Lcom/android/quickstep/util/SplitAnimationTimings;->getStagedRectSlideEndOffset()F

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object p1, v0

    move-object p2, p0

    move/from16 p3, v4

    move/from16 p4, v1

    move/from16 p5, v5

    move/from16 p6, v2

    move-object/from16 p7, v3

    invoke-direct/range {p1 .. p7}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v0, v7, Lcom/android/quickstep/views/FloatingTaskView$2;->mTaskViewScaleY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public onUpdate(FZ)V
    .locals 2

    iget-object p2, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->val$floatingTaskViewBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->val$startingBounds:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->val$floatingTaskViewBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v0, v0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v1, v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p2, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->val$floatingTaskViewBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->mTaskViewScaleX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v0, v0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->mTaskViewScaleY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v1, v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;FF)V

    iget-object p2, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->this$0:Lcom/android/quickstep/views/FloatingTaskView;

    iget-object p0, p0, Lcom/android/quickstep/views/FloatingTaskView$2;->val$floatingTaskViewBounds:Landroid/graphics/RectF;

    invoke-virtual {p2, p0, p1}, Lcom/android/quickstep/views/FloatingTaskView;->update(Landroid/graphics/RectF;F)V

    return-void
.end method
