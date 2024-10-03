.class public final synthetic Lcom/android/quickstep/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/LauncherBackAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/o2;->g:Lcom/android/quickstep/LauncherBackAnimationController;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/o2;->g:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->b(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/animation/ValueAnimator;)V

    return-void
.end method
