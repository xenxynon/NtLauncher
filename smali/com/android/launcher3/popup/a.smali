.class public final synthetic Lcom/android/launcher3/popup/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/popup/ArrowPopup;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/popup/ArrowPopup;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/a;->g:Lcom/android/launcher3/popup/ArrowPopup;

    iput-boolean p2, p0, Lcom/android/launcher3/popup/a;->h:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/popup/a;->g:Lcom/android/launcher3/popup/ArrowPopup;

    iget-boolean p0, p0, Lcom/android/launcher3/popup/a;->h:Z

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/popup/ArrowPopup;->b(Lcom/android/launcher3/popup/ArrowPopup;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
