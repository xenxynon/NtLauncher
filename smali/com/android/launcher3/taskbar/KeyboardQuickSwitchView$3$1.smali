.class Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3$1;->this$1:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 9

    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3$1;->this$1:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3$1;->this$1:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3$1;->this$1:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->access$200(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object v2

    iget v3, v2, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-static {}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v8

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ee66666    # 0.45f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3$1;->this$1:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->access$400(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3$1;->this$1:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;->this$0:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->access$200(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p0

    iget v1, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-static {}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v6

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    mul-float/2addr v0, p0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
