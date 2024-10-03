.class public final synthetic Lcom/android/launcher3/taskbar/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarEduTooltip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/d2;->g:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/d2;->g:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->a(Lcom/android/launcher3/taskbar/TaskbarEduTooltip;Landroid/animation/ValueAnimator;)V

    return-void
.end method
