.class public final synthetic Lcom/android/launcher3/s3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/QuickstepTransitionManager;

.field public final synthetic h:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

.field public final synthetic i:F

.field public final synthetic j:Landroid/view/View;

.field public final synthetic k:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;FLandroid/view/View;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/s3;->g:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object p2, p0, Lcom/android/launcher3/s3;->h:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    iput p3, p0, Lcom/android/launcher3/s3;->i:F

    iput-object p4, p0, Lcom/android/launcher3/s3;->j:Landroid/view/View;

    iput p5, p0, Lcom/android/launcher3/s3;->k:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/s3;->g:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, p0, Lcom/android/launcher3/s3;->h:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    iget v2, p0, Lcom/android/launcher3/s3;->i:F

    iget-object v3, p0, Lcom/android/launcher3/s3;->j:Landroid/view/View;

    iget p0, p0, Lcom/android/launcher3/s3;->k:F

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher3/QuickstepTransitionManager;->i(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;FLandroid/view/View;F)V

    return-void
.end method
