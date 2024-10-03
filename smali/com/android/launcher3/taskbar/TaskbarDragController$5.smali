.class Lcom/android/launcher3/taskbar/TaskbarDragController$5;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarDragController;->setupReturnDragAnimator(FFLandroid/view/View;Lcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

.field final synthetic val$animListener:Lcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;

.field final synthetic val$fromX:F

.field final synthetic val$fromY:F

.field final synthetic val$toAlpha:F

.field final synthetic val$toPosition:[I

.field final synthetic val$toScale:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragController;F[IFFFLcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;)V
    .locals 14

    move-object v7, p0

    move-object/from16 v8, p3

    move-object v0, p1

    iput-object v0, v7, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    move/from16 v2, p2

    iput v2, v7, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->val$fromX:F

    iput-object v8, v7, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->val$toPosition:[I

    move/from16 v9, p4

    iput v9, v7, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->val$fromY:F

    move/from16 v10, p5

    iput v10, v7, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->val$toScale:F

    move/from16 v11, p6

    iput v11, v7, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->val$toAlpha:F

    move-object/from16 v0, p7

    iput-object v0, v7, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->val$animListener:Lcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    new-instance v12, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v0, 0x0

    aget v0, v8, v0

    int-to-float v3, v0

    sget-object v13, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/high16 v5, 0x43960000    # 300.0f

    move-object v0, v12

    move-object v1, p0

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v12, v7, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v12, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v0, 0x1

    aget v0, v8, v0

    int-to-float v3, v0

    move-object v0, v12

    move/from16 v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v12, v7, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, v8

    move/from16 v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v8, v7, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    move-object v0, v8

    move/from16 v3, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v8, v7, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public onUpdate(FZ)V
    .locals 2

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->val$animListener:Lcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p2, p2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v0, v0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v1, v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$5;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p0, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-interface {p1, p2, v0, v1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;->updateDragShadow(FFFF)V

    return-void
.end method
