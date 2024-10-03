.class public final Lcom/android/quickstep/util/BorderAnimator$SimpleParams;
.super Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/BorderAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleParams"
.end annotation


# direct methods
.method public constructor <init>(ILcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;Landroid/view/View;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # Lcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;-><init>(ILcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;Landroid/view/View;Lcom/android/quickstep/util/BorderAnimator$1;)V

    return-void
.end method


# virtual methods
.method getAlignmentAdjustmentInset()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getRadiusAdjustment()F
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->getAlignmentAdjustment()F

    move-result p0

    neg-float p0, p0

    return p0
.end method
