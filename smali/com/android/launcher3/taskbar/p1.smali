.class public final synthetic Lcom/android/launcher3/taskbar/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/TaskbarDragController;

.field public final synthetic h:Lcom/android/launcher3/BubbleTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/BubbleTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/p1;->g:Lcom/android/launcher3/taskbar/TaskbarDragController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/p1;->h:Lcom/android/launcher3/BubbleTextView;

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/p1;->g:Lcom/android/launcher3/taskbar/TaskbarDragController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/p1;->h:Lcom/android/launcher3/BubbleTextView;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarDragController;->e(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/BubbleTextView;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method
