.class public final Lcom/android/launcher3/folder/NTFolderAnimationManager$initCoverViewAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/NTFolderAnimationManager;->initCoverViewAnimator(Landroid/animation/AnimatorSet;FLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $coverView:Lc3/b;

.field final synthetic this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/NTFolderAnimationManager;Lc3/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$initCoverViewAnimator$2;->this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$initCoverViewAnimator$2;->$coverView:Lc3/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$initCoverViewAnimator$2;->this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->access$getDragLayer$p(Lcom/android/launcher3/folder/NTFolderAnimationManager;)Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$initCoverViewAnimator$2;->$coverView:Lc3/b;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/NTDragLayer;->removeView(Landroid/view/View;)V

    return-void
.end method
