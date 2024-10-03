.class public final Lcom/android/launcher3/dragndrop/NTDragLayer$createFlingAnimationListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/NTDragLayer;->createFlingAnimationListener()Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/NTDragLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/NTDragLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/NTDragLayer$createFlingAnimationListener$1;->this$0:Lcom/android/launcher3/dragndrop/NTDragLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/NTDragLayer$createFlingAnimationListener$1;->this$0:Lcom/android/launcher3/dragndrop/NTDragLayer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/NTDragLayer;->access$setFlingAnimationPlaying$p(Lcom/android/launcher3/dragndrop/NTDragLayer;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/NTDragLayer$createFlingAnimationListener$1;->this$0:Lcom/android/launcher3/dragndrop/NTDragLayer;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/NTDragLayer;->access$setFlingAnimationPlaying$p(Lcom/android/launcher3/dragndrop/NTDragLayer;Z)V

    return-void
.end method
