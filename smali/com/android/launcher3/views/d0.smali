.class public final synthetic Lcom/android/launcher3/views/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/d0;->g:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/d0;->g:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    invoke-static {p0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->a(Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
