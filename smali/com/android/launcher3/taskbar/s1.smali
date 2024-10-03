.class public final synthetic Lcom/android/launcher3/taskbar/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarDragController$TaskbarReturnPropertiesListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/dragndrop/DragView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/s1;->a:Lcom/android/launcher3/dragndrop/DragView;

    return-void
.end method


# virtual methods
.method public final updateDragShadow(FFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/s1;->a:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/taskbar/TaskbarDragController;->f(Lcom/android/launcher3/dragndrop/DragView;FFFF)V

    return-void
.end method
