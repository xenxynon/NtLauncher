.class public final synthetic Lcom/android/launcher3/taskbar/bubbles/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/h;->g:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/h;->g:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->a(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
