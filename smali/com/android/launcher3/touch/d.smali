.class public final synthetic Lcom/android/launcher3/touch/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Landroid/view/animation/Interpolator;


# direct methods
.method public synthetic constructor <init>(FLandroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/touch/d;->a:F

    iput-object p2, p0, Lcom/android/launcher3/touch/d;->b:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/touch/d;->a:F

    iget-object p0, p0, Lcom/android/launcher3/touch/d;->b:Landroid/view/animation/Interpolator;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/touch/AllAppsSwipeController;->d(FLandroid/view/animation/Interpolator;F)F

    move-result p0

    return p0
.end method
