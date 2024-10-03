.class Lcom/android/launcher3/QuickstepTransitionManager$12;
.super Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->getClosingWindowAnimators(Landroid/animation/AnimatorSet;[Landroid/view/RemoteAnimationTarget;Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/RectF;F)Lcom/android/quickstep/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field final synthetic val$finalFloatingWidget:Lcom/android/quickstep/views/FloatingWidgetView;

.field final synthetic val$floatingWidgetAlpha:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/RectF;Landroid/graphics/Rect;FLcom/android/quickstep/views/FloatingWidgetView;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object p6, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$finalFloatingWidget:Lcom/android/quickstep/views/FloatingWidgetView;

    iput p7, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$floatingWidgetAlpha:F

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/RectF;Landroid/graphics/Rect;F)V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/RectF;F)V
    .locals 16

    move-object/from16 v0, p0

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v1, p2

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v1

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v13, v8, v1

    const/high16 v2, 0x3f000000    # 0.5f

    move/from16 v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v12

    iget-object v9, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$finalFloatingWidget:Lcom/android/quickstep/views/FloatingWidgetView;

    iget v11, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$floatingWidgetAlpha:F

    sub-float v14, v8, p2

    move-object/from16 v10, p1

    move/from16 v15, p2

    invoke-virtual/range {v9 .. v15}, Lcom/android/quickstep/views/FloatingWidgetView;->update(Landroid/graphics/RectF;FFFFF)V

    invoke-super/range {p0 .. p2}, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->onUpdate(Landroid/graphics/RectF;F)V

    return-void
.end method
