.class public final Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/utils/TransitionSmoothHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransitionData"
.end annotation


# instance fields
.field private cornerRadius:F

.field private matrix:Landroid/graphics/Matrix;

.field private windowCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->cornerRadius:F

    return-void
.end method


# virtual methods
.method public final getCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->cornerRadius:F

    return p0
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getWindowCrop()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->windowCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final setCornerRadius(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->cornerRadius:F

    return-void
.end method

.method public final setMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public final setWindowCrop(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/utils/TransitionSmoothHelper$TransitionData;->windowCrop:Landroid/graphics/Rect;

    return-void
.end method
