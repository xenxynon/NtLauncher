.class public final synthetic Lcom/android/launcher3/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/dragndrop/DragController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/l1;->g:Lcom/android/launcher3/dragndrop/DragController;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/l1;->g:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    return-void
.end method
